package mySoot;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.*;

import mySoot.util.Log;

import soot.*;
import soot.jimple.*;
import soot.toolkits.graph.*;
import soot.util.*;
import soot.jimple.toolkits.callgraph.*;
import soot.tagkit.*;

public class GlobalAPISubGraphTransformer extends SceneTransformer{
	
	public long previousTime;
	private CallGraph callgraph;
	private LinkedHashMap<SootMethod, APIGraph> apiGraphs;
	private LinkedHashMap<SootMethod, APIGraph> globalApiGraphs;
	private LinkedHashMap<SootMethod, APIGraph> asyncGlobalApiGraphs;
	private LinkedHashMap<SootMethod, APIGraph> implicitAsyncGlobalApiGraphs;
	private LinkedHashMap<SootMethod, APIGraph> interActivityGraphs;
	
	private String LOG;
	private String LOG_DOT;
	private String API_LOCAL_LOG;
	private String API_GLOBAL_LOG;
	private String ACTIVITY_LOG;
	private String GSPAN_LOG;
	private String INDEXTOSIG;
	
	LinkedHashMap<String, Integer> indexToMethodName = new LinkedHashMap<String, Integer>();
	private String ANDROID_SUPPORT_V4 = "android.support.v4";
	
	private static List<String> sinks = new ArrayList<String>();
	private static List<SootField> usedStaticFields = new ArrayList<SootField>();
	private static List<SootField> usedInstanceFields = new ArrayList<SootField>();
	
	private static List<SootField> taintedStaticFields = new ArrayList<SootField>();
	private static List<SootField> taintedFieldsInCallee = new ArrayList<SootField>();
	private static List<SootField> taintedFieldsInCaller = new ArrayList<SootField>();
	
	private static Stack<SootMethod> callString = new Stack<SootMethod>();

	protected void internalTransform(String string, Map map) {
		
		this.previousTime = System.currentTimeMillis();
		CallGraph cg = Scene.v().getCallGraph();
		this.callgraph = cg;
				
		LOG = AnalyzerMain.LOG;
		LOG_DOT = AnalyzerMain.LOG_DOT;
		API_LOCAL_LOG = AnalyzerMain.API_LOCAL_LOG;
		API_GLOBAL_LOG = AnalyzerMain.API_GLOBAL_LOG;
		ACTIVITY_LOG = AnalyzerMain.ACTIVITY_LOG;
		GSPAN_LOG = AnalyzerMain.GSPAN_LOG;
		INDEXTOSIG = AnalyzerMain.INDEXTOSIG;
		
		annotateAPIs();
		dumpAPI();
		System.out.println("Time used before buildActivityConnection: " 
				+ (System.currentTimeMillis() - this.previousTime));
		this.previousTime = System.currentTimeMillis();
		
		buildActivityConnection();
		System.out.println("Time used for buildActivityConnection: " 
				+ (System.currentTimeMillis() - this.previousTime));
		this.previousTime = System.currentTimeMillis();
		
		apiGraphs = new LinkedHashMap<SootMethod, APIGraph>();
		globalApiGraphs = new LinkedHashMap<SootMethod, APIGraph>();
		
		//This block of code is to build a graph contains every methods as subgraph
		Chain<SootClass> classes = Scene.v().getClasses();
		Iterator<SootClass> classes_iter = classes.iterator();
		while (classes_iter.hasNext()) {
			SootClass soot_class = classes_iter.next();

			if (soot_class.isApplicationClass() == false) {
				continue;
			}
			
			//Eliminate all the android.support.v4.xxx classes
			if(soot_class.getName().contains(ANDROID_SUPPORT_V4))
				continue;

			List<SootMethod> methods = soot_class.getMethods();
			
			//for each method, build API graph and push into 'apiGraphs'
			for (SootMethod method : methods) {				
				
				Iterator targets = new Targets(cg.edgesOutOf(method));
				while (targets.hasNext()) {
					SootMethod target = (SootMethod) targets.next();
					System.out.println(method + " may call " + target);
				}
				
				
				if(!method.isConcrete()){
					continue;
				}				
				
				
				JimpleBody body = (JimpleBody)method.retrieveActiveBody();
				ExceptionalUnitGraph eug = new ExceptionalUnitGraph(body);       
		        MyReachingDefinition mrd = new MyReachingDefinition(eug);
		        
				
				APIGraph apiSubGraph = new APIGraph(eug, mrd, null);
				apiSubGraph.buildAPIGraph();
				//apiSubGraph.dumpAPIGraph();
				//apiSubGraph.verify();
				//apiSubGraph.dumpAPIGraphEdgeListToDot();
				//apiSubGraph.dumpAPIGraphEdgeList();				
				
				apiGraphs.put(method, apiSubGraph);
			}
			
		}
		System.out.println("Time used to build api graph: " 
				+ (System.currentTimeMillis() - this.previousTime));
		this.previousTime = System.currentTimeMillis();
		
		LinkedHashMap<String, String> mClassToMethod = AnalyzerMain.entryPoints;
		List<SootMethod> entry_points = new ArrayList<SootMethod>();
		
		//Get all the entry points
		Set<String> keySet = mClassToMethod.keySet();
		Iterator<String> keyIterator = keySet.iterator();
		while (keyIterator.hasNext()) {

			String mClass = keyIterator.next();
			if(mClass.contains(ANDROID_SUPPORT_V4))
				continue;
			
			String method = mClassToMethod.get(mClass);

			//System.out.println("building entry points:" + mClass + "|" + method);
			
			mClass = mClass.substring(0, mClass.indexOf("|"));
			
			SootClass main_soot_class = Scene.v().loadClassAndSupport(mClass);
			SootMethod sMethod = main_soot_class.getMethod(method);
			sMethod.setDeclaringClass(main_soot_class);

			//System.out.println("entry point:" + method);

			entry_points.add(sMethod);
		}
		
		System.out.println("Time used to get entry points: " 
				+ (System.currentTimeMillis() - this.previousTime));
		this.previousTime = System.currentTimeMillis();
		
		//Build global API subgraph so that only entry points as subgraph
		int count = 0;
		List<Stmt> recursiveCallsites = new ArrayList<Stmt>();
		for(SootMethod entryPoint : entry_points){
			System.out.println("building API graph from " + entryPoint);
			
			APIGraph apiSubGraph = buildAPISubGraph(entryPoint, recursiveCallsites);	
			globalApiGraphs.put(entryPoint, apiSubGraph);
			
			//count the total number of graphs
			if(!apiSubGraph.getAPIGraph().isEmpty()){
				count++;
				//apiSubGraph.dumpGlobalAPIGraph(entryPoint);
				//apiSubGraph.verify(entryPoint);
				//apiSubGraph.dumpGlobalAPIGraphEdgeList(entryPoint);
				//apiSubGraph.dumpGlobalAPIGraphEdgeListToDot(entryPoint);
			}
		}
		System.out.println("Time used to build global api graph: " 
				+ (System.currentTimeMillis() - this.previousTime));
		this.previousTime = System.currentTimeMillis();
		
		
		System.out.println("Total Amount of Graphs: " + count);
		
		mergeAPISubGraphs();
		
		Set<SootMethod> syncEntryPoints = implicitAsyncGlobalApiGraphs.keySet();
		Iterator<SootMethod> iterSync = syncEntryPoints.iterator();
		
		try 
		{
			//read index to node signature info from existing file
			ReadIndexToSigInfo(indexToMethodName);
			
			//int subGraphIndex = 0;
			while(iterSync.hasNext())
			{
				SootMethod syncEntryPoint = iterSync.next();
				APIGraph graph = implicitAsyncGlobalApiGraphs.get(syncEntryPoint);
				if(!graph.getAPIGraph().isEmpty()){
					graph.dumpAPIGraphEdgeList(LOG, syncEntryPoint);
					graph.dumpGlobalAPIGraphEdgeListToDot(syncEntryPoint);
					//graph.dumpGlobalAPIGraphtoGSpanFormat(GSPAN_LOG, subGraphIndex, indexToMethodName);
					graph.dumpSensitiveAPISubGraph(30, indexToMethodName);
					//subGraphIndex++;
				}
			}
			
			//Write index to node signature info to file
			WriteIndexToSigInfo(indexToMethodName);
			
		} catch (IOException e) 
		{
			System.out.println(e.getMessage());
		}
	}
	
	//Read index to node signature info from "INDEXTOSIG" file
	private void ReadIndexToSigInfo(LinkedHashMap<String, Integer> indexToMethodName) throws IOException 
	{
		File file = new File(INDEXTOSIG);
		if(!file.exists())
			return;
			
		BufferedReader br = new BufferedReader(new FileReader(file));
			
		//read line by line and push the info into indexToSignature
		String line = br.readLine();
		while (line != null) {
	    	String[] strings = line.split("####");
	    	indexToMethodName.put(strings[0], new Integer(strings[1]));
	        line = br.readLine();
	    }
	    
	    br.close();
	     
	}	

	//Write updated index to node signature info to "INDEXTOSIG" file
	private void WriteIndexToSigInfo(LinkedHashMap<String, Integer> indexToMethodName) throws IOException
	{
		Log.init(INDEXTOSIG);
		
		for(String str: indexToMethodName.keySet())
		{
			Log.dumpln(INDEXTOSIG, str + "####" + indexToMethodName.get(str));
		}
	}
		
	private void dfaForOutboundAPI(Unit invokeAPI, Value var, MyReachingDefinition mrd){
		//Outbound API must have a return value
		InvokeExpr invoke = ((Stmt)invokeAPI).getInvokeExpr();
		SootMethod method = invoke.getMethod();
		APIFlowTag tag = new APIFlowTag(method.getSignature());		
	}
	
	private void dfaForInboundAPI(Unit invokeAPI){
		
	}
	
	private void buildActivityConnection(){
		
		LinkedHashMap<Stmt, List<String>> intentToActivity = new LinkedHashMap<Stmt, List<String>>();
		LinkedHashMap<Stmt, SootMethod> stmtToMethod = new LinkedHashMap<Stmt, SootMethod>();
		
		Chain<SootClass> classes = Scene.v().getClasses();
		Iterator<SootClass> classes_iter = classes.iterator();		
		
		while (classes_iter.hasNext()) {
			SootClass soot_class = classes_iter.next();

			if (soot_class.isApplicationClass() == false) {
				continue;
			}

			List<SootMethod> methods = soot_class.getMethods();
			
			
			for (SootMethod method : methods) {
				
				//System.out.println("building Activity connections for " + method);
				
				if(!method.isConcrete()){
					continue;
				}
								
				JimpleBody body = (JimpleBody) method.retrieveActiveBody();
				ExceptionalUnitGraph eug = new ExceptionalUnitGraph(body);       
		        MyReachingDefinition mrd = new MyReachingDefinition(eug);
				
				Iterator it = body.getUnits().iterator();
				while (it.hasNext()) {
					Stmt s = (Stmt) it.next();
					if(s instanceof InvokeStmt){
						InvokeExpr invoke = s.getInvokeExpr();
						SootMethod m = invoke.getMethod();
						if(!m.getDeclaringClass().isApplicationClass()){
							if(m.getSubSignature().equals("void startActivity(android.content.Intent)")
									|| m.getSubSignature().equals("void startActivity(android.content.Intent,android.os.Bundle)")
									|| m.getSubSignature().equals("void startActivityForResult(android.content.Intent,int)")
									|| m.getSubSignature().equals("void startActivityForResult(android.content.Intent,int,android.os.Bundle)")){
								
								
								
								Value intent = invoke.getArg(0);
								if(intent instanceof Local){
									List<Unit> defs = mrd.getDefsOfAt((Local)intent, s);
							
									Stack<Unit> preds = new Stack<Unit>();
									for(Unit u : eug.getPredsOf(s)){
										if(!(u instanceof IdentityStmt)){
											preds.push(u);											
										}
									}
									
									Stack<Unit> flow = new Stack<Unit>();
									while(!preds.isEmpty()){
										Unit pred = preds.pop();
										
										if(!flow.isEmpty()){
											if(!eug.getSuccsOf(pred).isEmpty()){
												List<Unit> succsOfPred = eug.getSuccsOf(pred);
												while(!succsOfPred.contains(flow.peek())){
													flow.pop();
													if(flow.isEmpty()){
														break;
													}
												}
											}else{
												flow.clear();
											}
										}
										
										
										if(flow.contains(pred)){
											System.out.println("LOOP found: " + pred + ", continue with the next one");
											continue;
										}	
												
										flow.push(pred);
										
										//System.out.println(s + "[" + pred);
										
										if(pred instanceof InvokeStmt){
											
											InvokeExpr invo = ((InvokeStmt) pred).getInvokeExpr();
											if(invo instanceof InstanceInvokeExpr){
												
												Local base = (Local)((InstanceInvokeExpr) invo).getBase();
												List<Unit> defsOfBase = mrd.getDefsOfAt(base, pred);
												if(intersect(defs, defsOfBase)){
													
													List<String> targets = new ArrayList<String>();
													
													SootMethod meth = invo.getMethod();
													if(meth.getSignature().equals(
															"<android.content.Intent: void <init>(android.content.Context,java.lang.Class)>")){
														
														Value target = invo.getArg(1);
														
														List<String> concreteValues = new ArrayList<String>();
														String annotation = lookForConcreteValue((Stmt)pred, target, mrd, concreteValues);
														if(annotation.contains("C")){
															for(String concrete : concreteValues){
																if(!targets.contains(concrete)){
																	targets.add(concrete);					
																}
															}
														}
														
													}else if(meth.getSignature().equals(
															"<android.content.Intent: void <init>(java.lang.String,android.net.Uri,android.content.Context,java.lang.Class)>")){
														
														Value target = invo.getArg(3);
														
														List<String> concreteValues = new ArrayList<String>();
														String annotation = lookForConcreteValue((Stmt)pred, target, mrd, concreteValues);
														if(annotation.contains("C")){
															for(String concrete : concreteValues){
																if(!targets.contains(concrete)){
																	targets.add(concrete);					
																}
															}
														}
														
													}else if(meth.getSignature().equals(
															"<android.content.Intent: android.content.Intent setClass(android.content.Context,java.lang.Class)>")){
														
														Value target = invo.getArg(1);
														
														List<String> concreteValues = new ArrayList<String>();
														String annotation = lookForConcreteValue((Stmt)pred, target, mrd, concreteValues);
														if(annotation.contains("C")){
															for(String concrete : concreteValues){
																if(!targets.contains(concrete)){
																	targets.add(concrete);					
																}
															}
														}
													}else if(meth.getSignature().equals(
															"<android.content.Intent: android.content.Intent setClassName(android.content.Context,java.lang.String)>")){
														
														Value target = invo.getArg(1);
														
														List<String> concreteValues = new ArrayList<String>();
														String annotation = lookForConcreteValue((Stmt)pred, target, mrd, concreteValues);
														if(annotation.contains("C")){
															for(String concrete : concreteValues){
																if(!targets.contains(concrete)){
																	targets.add(concrete);					
																}
															}
														}
													}else if(meth.getSignature().equals(
															"<android.content.Intent: android.content.Intent setClassName(java.lang.String,java.lang.String)>")){
														
														Value target = invo.getArg(1);
														
														List<String> concreteValues = new ArrayList<String>();
														String annotation = lookForConcreteValue((Stmt)pred, target, mrd, concreteValues);
														if(annotation.contains("C")){
															for(String concrete : concreteValues){
																if(!targets.contains(concrete)){
																	targets.add(concrete);					
																}
															}
														}
													}
													
													/*
													for(String tar : targets){
														//System.out.println("Intent[" + method + "->" +  tar + "]@" + s);
														Log.dumpln(ACTIVITY_LOG, "Intent[" + method.getDeclaringClass() + "->" +  tar + "]");
														Log.dumpln(ACTIVITY_LOG, "\t@" + method + "{" + s + "}");
													}
													*/
													intentToActivity.put(s, targets);
													stmtToMethod.put(s, method);
												}
											}
											
											
											
										}
										
										for(Unit u : eug.getPredsOf(pred)){
											if(!(u instanceof IdentityStmt)){
												preds.push(u);												
											}
										}
									}
								}
								
							}
						}//end if(!m.getDeclaringClass().isApplicationClass()){
					}
				}//end while (it.hasNext()) {
			}//end for (SootMethod method : methods) {
			
		}//end while (classes_iter.hasNext()) {
		
		
		Set<Stmt> keySet = intentToActivity.keySet();
		Iterator<Stmt> iter = keySet.iterator();
		while(iter.hasNext()){
			Stmt stmt = iter.next();
			List<String> activities = intentToActivity.get(stmt);
			if(!activities.isEmpty()){
				SootMethod m = stmtToMethod.get(stmt);
				for(String tar : activities){
					tar = tar.substring((tar.indexOf('"')+1), tar.lastIndexOf('"'));
					tar = tar.replace('/', '.');
					Log.dumpln(ACTIVITY_LOG, "Intent[" + m.getDeclaringClass() + "->" +  tar + "]");
					//Log.dumpln(ACTIVITY_LOG, "\t@" + m + "{" + stmt + "}\n");
				}
			}
		}
	}
	
	/*
	 * This function is to link all the implicit flows within one (activity || AsyncTask)  per Android documents.
	 * 	Activity: onCreate() -> onStart() -> onResume() -> onPause() -> onStop() -> onDestroy()
	 * 			  onStart() -> onStop()
	 * 			  onPause() -> onResume()
	 * 			  onStop() -> onRestart() -> onStart()
	 * 	AsyncTask: onPreExecute() -> doInBackground() -> onPostExecute()
	 */
	private void linkImplicitFlow()
	{
		System.out.println("Into linkImplicitFlow function");
		implicitAsyncGlobalApiGraphs = new LinkedHashMap<SootMethod, APIGraph>();
		
		Set<SootMethod> keySet = this.asyncGlobalApiGraphs.keySet();
		Iterator<SootMethod> iter = keySet.iterator();
		
		//copy all the graphs in 'asyncGlobalApiGraphs' to 'implicitAsyncGlobalApiGraphs'
		while(iter.hasNext()){
			SootMethod entryPoint = iter.next();
			APIGraph graph = this.asyncGlobalApiGraphs.get(entryPoint);
			implicitAsyncGlobalApiGraphs.put(entryPoint, graph.clone());
		}
		
		LinkActivityImplicitFlow(implicitAsyncGlobalApiGraphs);
		LinkAsyncTaskImplicitFlow(implicitAsyncGlobalApiGraphs);
	}
	
	/*
	 * This function is to link all the inter-activity implicit flows per Android documents.
	 * Context.startActivity(Intent) -> Activity.onCreate()
	 * Context.startActivityForResult(Intent, int) -> Activity.onCreate()
	 * Activity.setResult(int, Intent) -> Activity.onActivityResult(int, int, Intent)
	 */
	private void linkActivity()
	{
		interActivityGraphs = new LinkedHashMap<SootMethod, APIGraph>();
		Set<SootMethod> keySet = this.implicitAsyncGlobalApiGraphs.keySet();
		Iterator<SootMethod> iter = keySet.iterator();
		
		//copy all the graphs in 'implicitAsyncGlobalApiGraphs' to 'interActivityGraphs'
		while(iter.hasNext()){
			SootMethod entryPoint = iter.next();
			APIGraph graph = this.implicitAsyncGlobalApiGraphs.get(entryPoint);
			interActivityGraphs.put(entryPoint, graph.clone());
		}
		
		List<Stmt> startActivityStmt = new ArrayList<Stmt>();
		
		//get all the startActivity methods in the given graph
		for(SootMethod method: implicitAsyncGlobalApiGraphs.keySet())
		{
			JimpleBody body = (JimpleBody) method.retrieveActiveBody();
			
			Iterator<Unit> it = body.getUnits().iterator();
			while (it.hasNext()) 
			{
				Stmt s = (Stmt) it.next();
				
				if(s.containsInvokeExpr() && s.getInvokeExpr().getMethod().getName().contains("startActivity"))
				{
					startActivityStmt.add(s);
					System.out.println("find startActivity statement in " + method.getName() + " in " + method.getDeclaringClass().getName());
				}

			}
		}
	}
	
	//link asynchronous callees to their callers (i.e. Thread.start() -> Thread.run(),
	//	AsyncTask.execute() -> AsyncTask.doInBackground(), 
	//	AsyncTask.onPostExecute() -> AsyncTask.execute(),  	//TODO	
	private void linkAsync(){
		
		asyncGlobalApiGraphs = new LinkedHashMap<SootMethod, APIGraph>();
		
		LinkedHashMap<SootMethod, APIGraph> nonThreadGraphs = new LinkedHashMap<SootMethod, APIGraph>();
		LinkedHashMap<SootMethod, APIGraph> threadGraphs = new LinkedHashMap<SootMethod, APIGraph>();
		
		Set<SootMethod> keySet = this.globalApiGraphs.keySet();
		Iterator<SootMethod> iter = keySet.iterator();
		
		// Traverse the API graphs for all the entry points of the 'globalApiGraphs'
		// If the entry point is 'run' or 'doInBackGround" function, push it into 'threadGraphs'
		while(iter.hasNext()){
			SootMethod entryPoint = iter.next();
			APIGraph graph = this.globalApiGraphs.get(entryPoint);
			boolean isAsync = false;
			if(entryPoint.getName().equals("run")){
				if(isThread(entryPoint.getDeclaringClass())){
					isAsync = true;
				}
			}else if(entryPoint.getName().equals("doInBackground")){
				if(isAsyncTask(entryPoint.getDeclaringClass())){
					isAsync = true;
				}
			}
			
			if(isAsync){
				threadGraphs.put(entryPoint, graph.clone());
			}else{
				nonThreadGraphs.put(entryPoint, graph.clone());
			}
		}
		
		List<SootMethod> calledThreads = new ArrayList<SootMethod>();
		
		Set<SootMethod> keySetNonThread = nonThreadGraphs.keySet();
		Iterator<SootMethod> iterNonThread = keySetNonThread.iterator();
		
		//For every method in 'nonThreadGraphs'
		while(iterNonThread.hasNext())
		{
			//get the graph for the current method
			SootMethod entryPoint = iterNonThread.next();
			APIGraph graph = nonThreadGraphs.get(entryPoint);			
			
			//'pendingAppendPoints' is used to store all the points that will be connected with nodes in 'threadGraphs'
			Stack<APIGraphNode> pendingAppendPoints = new Stack<APIGraphNode>();
			
			// For every node within this graph, get the callsite of this node
			// If callsite is 'start' or 'execute', push the node into 'pendingAppendPoints'
			for(APIGraphNode node : graph.getAPIGraph()){
				if(node.getStmt().containsInvokeExpr()){
					SootMethod callsite = node.getStmt().getInvokeExpr().getMethod();
					if(callsite.getName().equals("start")){
						if(isThread(callsite.getDeclaringClass())){					
							pendingAppendPoints.push(node);
						}
					}else if(callsite.getName().equals("execute")){
						if(isAsyncTask(callsite.getDeclaringClass())){	
							pendingAppendPoints.push(node);
						}
					}
				}
			}
				
			Stack<Stmt> callString = new Stack<Stmt>();
			
			while(!pendingAppendPoints.isEmpty()){
				APIGraphNode appendPoint = pendingAppendPoints.pop();
				
				if(!callString.isEmpty()){
					if(appendPoint.getCallsite()!=null){
						Stmt caller = appendPoint.getCallsite();
						while(!callString.peek().equals(caller)){
							callString.pop();
							if(callString.isEmpty()){
								break;
							}
						}
					}else{
						callString.clear();
					}
				}
				
				if(callString.contains(appendPoint.getStmt())){
					System.out.println("RECURSIVE call found: " + appendPoint.getStmt() + ", continue with the next one");
					continue;
				}	
						
				callString.push(appendPoint.getStmt());
				
				//System.out.println("Append at " + appendPoint.getStmt());
				
				APIGraph callee = null;
				List<APIGraph> callees = new ArrayList<APIGraph>();
				
				SootMethod callsite = appendPoint.getStmt().getInvokeExpr().getMethod();
				if(callsite.getName().equals("start")){
										
					Iterator targets = new Targets(callgraph.edgesOutOf(appendPoint.getStmt()));
					while (targets.hasNext()) {
						SootMethod target = (SootMethod) targets.next();
						if(target.getDeclaringClass().isApplicationClass()){							
							
							if(threadGraphs.containsKey(target)){
								
								if(!calledThreads.contains(target)){
									calledThreads.add(target);
								}
							
								callee = threadGraphs.get(target).clone();
								callee.setCallsite(appendPoint.getStmt());
								
								
								for(APIGraphNode node : callee.getAPIGraph()){
									SootMethod innerCallsite = node.getStmt().getInvokeExpr().getMethod();
									if(innerCallsite.getName().equals("start")){
										if(isThread(innerCallsite.getDeclaringClass())){
											pendingAppendPoints.push(node);
										}
									}else if(innerCallsite.getName().equals("execute")){
										if(isAsyncTask(innerCallsite.getDeclaringClass())){
											pendingAppendPoints.push(node);
										}
									}
								}
								
								callees.add(callee);
							}
						}
					}
				}else if(callsite.getName().equals("execute")){
					Set<SootMethod> keySetThread = threadGraphs.keySet();
					Iterator<SootMethod> iterThread = keySetThread.iterator();
					while(iterThread.hasNext()){
						SootMethod target = iterThread.next();
						if(target.getDeclaringClass().equals(callsite.getDeclaringClass())
								&& target.getName().equals("doInbackground")){
							
							if(!calledThreads.contains(target)){
								calledThreads.add(target);
							}
							
							callee = threadGraphs.get(target).clone();
							callee.setCallsite(appendPoint.getStmt());
							
							
							for(APIGraphNode node : callee.getAPIGraph()){
								SootMethod innerCallsite = node.getStmt().getInvokeExpr().getMethod();
								if(innerCallsite.getName().equals("start")){
									if(isThread(innerCallsite.getDeclaringClass())){
										pendingAppendPoints.push(node);
									}
								}else if(innerCallsite.getName().equals("execute")){
									if(isAsyncTask(innerCallsite.getDeclaringClass())){
										pendingAppendPoints.push(node);
									}
								}
							}
							
							callees.add(callee);
						}
					}
				}
			
				graph.append(appendPoint, callees);
				
			}			
			
		}
		
		for(SootMethod m : calledThreads){
			threadGraphs.remove(m);
		}
		
		asyncGlobalApiGraphs.putAll(nonThreadGraphs);
		asyncGlobalApiGraphs.putAll(threadGraphs);
		
		
	}
	
	/*
	 * Test if the given class is a subclass of 'android.os.AsyncTask'
	 *
	 */
	//TODO: Add AsyncQueryHandler later
	private boolean isAsyncTask(SootClass clazz){
				
		while(clazz.hasSuperclass() && clazz.isApplicationClass()){
			
			clazz = clazz.getSuperclass();
						
		}
				
		if(clazz.getName().equals("android.os.AsyncTask")){
			return true;
		}
		
		return false;
	}
	
	/*
	 * Test if the given class is implementing 'java.lang.Runnable' interface
	 */
	private boolean isThread(SootClass clazz){
		
		while(clazz.hasSuperclass() && clazz.isApplicationClass()){
			
			for(SootClass interfaze : clazz.getInterfaces()){
				if(interfaze.getName().equals("java.lang.Runnable")){
					return true;
				}
			}
			
			clazz = clazz.getSuperclass();
						
		}
		
		for(SootClass interfaze : clazz.getInterfaces()){
			if(interfaze.getName().equals("java.lang.Runnable")){
				return true;
			}
		}
				
		return false;
	}
	
	private void mergeAPISubGraphs(){
		System.out.println("Time used before linkAsync: " 
				+ (System.currentTimeMillis() - this.previousTime));
		this.previousTime = System.currentTimeMillis();
		linkAsync();
		System.out.println("Time used after linkAsync: " 
				+ (System.currentTimeMillis() - this.previousTime));
		this.previousTime = System.currentTimeMillis();
		linkImplicitFlow();
		System.out.println("Time used after linkimplicitflow: " 
				+ (System.currentTimeMillis() - this.previousTime));
		this.previousTime = System.currentTimeMillis();
		linkActivity();
		System.out.println("Time used after linkActivity: " 
				+ (System.currentTimeMillis() - this.previousTime));
		this.previousTime = System.currentTimeMillis();
	}
		
	private APIGraph buildAPISubGraph(SootMethod entryPoint, List<Stmt> recursiveCallsites){
		
		//List<Stmt> recursiveCallsites = new ArrayList<Stmt>();
		Stack<SootMethod> callstring = new Stack<SootMethod>();
		if(MyConstants.DEBUG_INFO)
			System.out.println("xjtuxjtu00\n");
		
		callstring.push(entryPoint);
		buildCallString(entryPoint, callstring, recursiveCallsites);
		callstring.pop();
		
		APIGraph apiSubGraph = apiGraphs.get(entryPoint).clone();
		
		if(MyConstants.DEBUG_INFO)
			System.out.println("begin of buildAPISubGraph: hasCondition? " + hasCondition(apiSubGraph));
		
		Stack<APIGraphNode> callsites = new Stack<APIGraphNode>();
		List<APIGraphNode> tempGraph = apiSubGraph.getAPIGraph();
		
		// Traverse the subgraph of given entry point.
		// 'callsites' contains all the nodes that contains invoke expression and are declared in application classes
		for(APIGraphNode node : tempGraph){
			if(MyConstants.DEBUG_INFO)
				System.out.println("xjtuxjtu0.1\n");
			if(node.getStmt().containsInvokeExpr()
				&& node.getStmt().getInvokeExpr().getMethod().getDeclaringClass().isApplicationClass()){
					callsites.push(node);
			}
		}
		if(MyConstants.DEBUG_INFO)
			System.out.println("xjtuxjtu1\n");
		//Stack<SootMethod> callString = new Stack<SootMethod>();
		
		//
		while(!callsites.isEmpty()){
			APIGraphNode callsite = callsites.pop();
			System.out.println("callsite[" + callsite.getCallsite() + "] -> " + "callee[" + callsite.getStmt() + "]");
			if(MyConstants.DEBUG_INFO)
				System.out.println("xjtuxjtu2\n");
			//this 'method' is the method get called in 'callsite' node
			SootMethod method = callsite.getStmt().getInvokeExpr().getMethod();
			if(recursiveCallsites.contains(callsite.getStmt())){
				if(MyConstants.DEBUG_INFO)
					System.out.println("RECURSIVE call found: " + method + ", continue with the next one");
				continue;
			}
			if(MyConstants.DEBUG_INFO)
				System.out.println("xjtuxjtu3\n");
			/*
			//System.out.println("callstring: " + callString + "\n");
			if(callsite.getCallsite()!=null){
				//this 'caller' is the method that calls the 'callsite' node
				SootMethod caller = callsite.getCallsite().getInvokeExpr().getMethod();
				while(!callString.peek().equals(caller)){
					callString.pop();
				}
				
			}else{
				callString.clear();
			}
			
			
			if(callString.contains(method)){
				System.out.println("RECURSIVE call found: " + method + ", continue with the next one");
				continue;
			}
					
			callString.push(method);
			*/
									
			//System.out.println("callsite: " + callsite.getStmt() + " from: " + callsite.getCallsite());
					
			APIGraph callee = null;
			List<APIGraph> callees = new ArrayList<APIGraph>();
			//boolean hasCallee = false;
			
			//if method is not a subgraph of apiGraphs which means method is not in app code
			if(!apiGraphs.containsKey(method)){
				//System.out.println("WARNING: method not found: " + method);
				//continue;
				Iterator targets = new Targets(callgraph.edgesOutOf(callsite.getStmt()));
				while(targets.hasNext()){
					if(MyConstants.DEBUG_INFO)
						System.out.println("xjtuxjtu4\n");
					SootMethod target = (SootMethod)targets.next();
					
					if(apiGraphs.get(target) == null)
						continue;
					
					callee = apiGraphs.get(target).clone();
					callee.setCallsite(callsite.getStmt());
					
					
					for(APIGraphNode node : callee.getAPIGraph()){
						if(node.getStmt().containsInvokeExpr() 
							&& node.getStmt().getInvokeExpr().getMethod().getDeclaringClass().isApplicationClass()){
							callsites.push(node);
							//hasCallee = true;
						}
					}
					callees.add(callee);
				}				
			}else{			
				callee = apiGraphs.get(method).clone();
				callee.setCallsite(callsite.getStmt());
				
				for(APIGraphNode node : callee.getAPIGraph()){
					if(node.getStmt().containsInvokeExpr()
						&& node.getStmt().getInvokeExpr().getMethod().getDeclaringClass().isApplicationClass()){
						callsites.push(node);
						//hasCallee = true;
					}
				}
				callees.add(callee);
			}
						
			apiSubGraph.inline(callsite, callees);
			
			
		}
		
		if(MyConstants.DEBUG_INFO)
			System.out.println("middle of buildAPISubGraph, after inline: hasCondition? " + hasCondition(apiSubGraph));
		
		//remove recursive stubs, need to have a better solution, but for now just a removal
		List<APIGraphNode> recursiveCallers = new ArrayList<APIGraphNode>();
		for(APIGraphNode node : apiSubGraph.getAPIGraph()){
			if(node.getAnnotation().equals("")){
				if(MyConstants.DEBUG_INFO)
					System.out.println("del: " + node.getStmt() + "[" + node.getAnnotation() + "]");
				recursiveCallers.add(node);
			}
		}
		
		for(APIGraphNode node : recursiveCallers){
			apiSubGraph.deleteNode(node);
		}
		
		if(MyConstants.DEBUG_INFO)
			System.out.println("middle of buildAPISubGraph, after del recur: hasCondition? " + hasCondition(apiSubGraph));
		
		//add the method name as the first node in the graph
		List<APIGraphNode> originalEntryPoints = apiSubGraph.FindEntryPoints();
		//APIGraphNode methodNode = new APIGraphNode(entryPoint.);
		Stmt methodNameSig;
		//compose method name statement and add it into the head of the graph
		if(entryPoint.isStatic())
		{
			methodNameSig = Jimple.v().newInvokeStmt(Jimple.v().newStaticInvokeExpr(entryPoint.makeRef()));
		}
		else
		{
			Local r0 = Jimple.v().newLocal("r0", RefType.v(entryPoint.getDeclaringClass().getName()));
			methodNameSig = Jimple.v().newInvokeStmt(Jimple.v().newSpecialInvokeExpr(r0, entryPoint.makeRef()));
		}
		
		APIGraphNode node = new APIGraphNode(methodNameSig);
		node.setAnnotation(entryPoint.getDeclaringClass().getName() + ": " + entryPoint.getName());
		
		for(APIGraphNode entry: originalEntryPoints)
		{
			node.addSucc(entry);
			entry.addPred(node);
		}
		
		if(!apiSubGraph.getAPIGraph().isEmpty())
			apiSubGraph.addNode(node);
		
		apiSubGraph.EliminateInitFunction();
		//apiSubGraph.CombineAdjacentJavaAPI();
		return apiSubGraph;
	}
	
	
	//return an annotation for a specific parameter
	//C: constant | value
	//P: parameter/this reference | type
	//SF: static field | field
	//IF: instance field | field
	//LO: local object | type
	//RA: return value of an API | method
	//RF: return value of a function call | method
	//RB: return value of a binary operation | type
	//E: exception | type
	private String lookForConcreteValue(Stmt s, Value var, MyReachingDefinition mrd, List<String> concreteValues){
		
		String annotation = "";
		
		if(var instanceof Constant){
			annotation = attach(annotation, "C");			
			if(!concreteValues.contains(var.toString())){
				concreteValues.add(var.toString());
			}			
			return annotation;			
		}
		
		if(var instanceof Local){
			
			Stack<Stmt> useStack = new Stack<Stmt>();
			useStack.push(s);
			
			Stack<Local> localStack = new Stack<Local>();
			localStack.push((Local)var);
			
			while(!useStack.isEmpty()){
				Stmt use = useStack.pop();
				Local local = localStack.pop();
				
				List<Unit> defs = mrd.getDefsOfAt(local, use);
				
				//System.out.println("Use:" + use + "[Local:" + local + "[Defs:" + defs);
				
				for(Unit def : defs){
					
					boolean isRecursiveDefine = false;
					List<ValueBox> useBox = def.getUseBoxes();
					for(ValueBox ub : useBox){
						Value u = ub.getValue();
						if(u instanceof Local){
							List<Unit> defsOfU = mrd.getDefsOfAt((Local)u, def);
							if(defsOfU.contains(use)){
								isRecursiveDefine = true;
							}
						}
					}
					
					//System.out.println("here");
					
					if(isRecursiveDefine){
						System.out.println("Recursive define!");
						continue;
					}
					
					if(def instanceof DefinitionStmt){
						Value rhs = ((DefinitionStmt) def).getRightOp();
						if(rhs instanceof Constant){							
							annotation = attach(annotation, "C");							
							if(!concreteValues.contains(rhs.toString())){
								concreteValues.add(rhs.toString());
							}							
						}else if(rhs instanceof Local){							
							useStack.push((Stmt)def);
							localStack.push((Local)rhs);							
						}else if(rhs instanceof UnopExpr){							
							Value op = ((UnopExpr) rhs).getOp();
							if(op instanceof Local){
								useStack.push((Stmt)def);
								localStack.push((Local)op);
							}
						}else if(rhs instanceof CastExpr){							
							Value op = ((CastExpr) rhs).getOp();
							if(op instanceof Local){
								useStack.push((Stmt)def);
								localStack.push((Local)op);
							}
						}else if(rhs instanceof ArrayRef){							
							Value base = ((ArrayRef) rhs).getBase();
							if(base instanceof Local){
								useStack.push((Stmt)def);
								localStack.push((Local)base);
							}
						}else if(rhs instanceof BinopExpr){
							annotation = attach(annotation, "RB");
						}else if(rhs instanceof ParameterRef){
							annotation = attach(annotation, "P");
						}else if(rhs instanceof ThisRef){
							annotation = attach(annotation, "P");
						}else if(rhs instanceof InstanceFieldRef){
							annotation = attach(annotation, "IF");
							if(!concreteValues.contains(((InstanceFieldRef) rhs).getField().toString())){
								concreteValues.add(((InstanceFieldRef) rhs).getField().toString());
							}
						}else if(rhs instanceof StaticFieldRef){
							annotation = attach(annotation, "SF");
							if(!concreteValues.contains(((StaticFieldRef) rhs).getField().toString())){
								concreteValues.add(((StaticFieldRef) rhs).getField().toString());
							}
						}else if(rhs instanceof NewExpr){
							annotation = attach(annotation, "LO");
						}else if(rhs instanceof NewArrayExpr){
							annotation = attach(annotation, "LO");
						}else if(rhs instanceof InvokeExpr){							
							SootMethod m = ((InvokeExpr) rhs).getMethod();
							SootClass c = m.getDeclaringClass();
							if(c.isApplicationClass()){
								annotation = attach(annotation, "RF");
								if(!concreteValues.contains(m.toString())){
									concreteValues.add(m.toString());
								}
							}else{
								annotation = attach(annotation, "RA");
								if(!concreteValues.contains(m.toString())){
									concreteValues.add(m.toString());
								}
							}
						}else if(rhs instanceof CaughtExceptionRef){
							annotation = attach(annotation, "E");
						}
					}//end if
				}//end for
				
				//System.out.println("end for");
			}//end while
			
			//System.out.println("end while");
		}else{
			System.err.println("Unhandled type: " + var.getClass());
			System.exit(-1);
		}		
		
		return annotation;
	}	
	
	//return an annotation for a specific parameter
	//C: constant | value
	//P: parameter/this reference | type
	//SF: static field | field
	//IF: instance field | field
	//LO: local object | type
	//RA: return value of an API | method
	//RF: return value of a function call | method
	//RB: return value of a binary operation | type
	//E: exception | type
	private String lookForConcreteValue(Stmt s, Value var, MyReachingDefinition mrd, List<String> concreteValues, SootMethod hostMethod, CallGraph callgraph){

		String annotation = "";

		if(var instanceof Constant){
			annotation = attach(annotation, "C");			
			if(!concreteValues.contains(var.toString())){
				concreteValues.add(var.toString());
			}			
			return annotation;			
		}

		if(var instanceof Local){

			Stack<Stmt> useStack = new Stack<Stmt>();
			useStack.push(s);

			Stack<Local> localStack = new Stack<Local>();
			localStack.push((Local)var);

			while(!useStack.isEmpty()){
				Stmt use = useStack.pop();
				Local local = localStack.pop();

				List<Unit> defs = mrd.getDefsOfAt(local, use);

				//System.out.println("Use:" + use + "[Local:" + local + "[Defs:" + defs);

				for(Unit def : defs){

					boolean isRecursiveDefine = false;
					List<ValueBox> useBox = def.getUseBoxes();
					for(ValueBox ub : useBox){
						Value u = ub.getValue();
						if(u instanceof Local){
							List<Unit> defsOfU = mrd.getDefsOfAt((Local)u, def);
							if(defsOfU.contains(use)){
								isRecursiveDefine = true;
							}
						}
					}

					//System.out.println("here");

					if(isRecursiveDefine){
						System.out.println("Recursive define!");
						continue;
					}

					if(def instanceof DefinitionStmt){
						Value rhs = ((DefinitionStmt) def).getRightOp();
						if(rhs instanceof Constant){							
							annotation = attach(annotation, "C");							
							if(!concreteValues.contains(rhs.toString())){
								concreteValues.add(rhs.toString());
							}							
						}else if(rhs instanceof Local){							
							useStack.push((Stmt)def);
							localStack.push((Local)rhs);							
						}else if(rhs instanceof UnopExpr){							
							Value op = ((UnopExpr) rhs).getOp();
							if(op instanceof Local){
								useStack.push((Stmt)def);
								localStack.push((Local)op);
							}
						}else if(rhs instanceof CastExpr){							
							Value op = ((CastExpr) rhs).getOp();
							if(op instanceof Local){
								useStack.push((Stmt)def);
								localStack.push((Local)op);
							}
						}else if(rhs instanceof ArrayRef){							
							Value base = ((ArrayRef) rhs).getBase();
							if(base instanceof Local){
								useStack.push((Stmt)def);
								localStack.push((Local)base);
							}
						}else if(rhs instanceof BinopExpr){
							annotation = attach(annotation, "RB");
						}else if(rhs instanceof ParameterRef){

							int index = ((ParameterRef)rhs).getIndex();
							LinkedHashMap<Stmt, SootMethod> callsites = lookForCallsites(hostMethod, callgraph);
														
							Set<Stmt> keySet = callsites.keySet();
							Iterator<Stmt> iter = keySet.iterator();
							while(iter.hasNext()){
								Stmt callsite = iter.next();
								InvokeExpr invoke = callsite.getInvokeExpr();
								Value v = invoke.getArg(index);
								
								SootMethod callerMeth = callsites.get(callsite);
								JimpleBody callerBody = (JimpleBody)callerMeth.getActiveBody();
								
								ExceptionalUnitGraph callerEug = new ExceptionalUnitGraph(callerBody);       
						        MyReachingDefinition callerMrd = new MyReachingDefinition(callerEug);
								
						        /*
						        System.out.println("annotation " + annotation);
						        System.out.println("concreteValues " + concreteValues);
						        System.out.println("callsite = " + callsite);
						        System.out.println("v = " + v);
						        */
						        annotation = attach(annotation, lookForConcreteValue(callsite, v, callerMrd, concreteValues));
						        /*
						        System.out.println("annotation " + annotation);
						        System.out.println("concreteValues " + concreteValues);
						        */
							}
							//annotation = attach(annotation, "P");
						}else if(rhs instanceof ThisRef){
							
							LinkedHashMap<Stmt, SootMethod> callsites = lookForCallsites(hostMethod, callgraph);
							
							Set<Stmt> keySet = callsites.keySet();
							Iterator<Stmt> iter = keySet.iterator();
							while(iter.hasNext()){
								Stmt callsite = iter.next();
								InvokeExpr invoke = callsite.getInvokeExpr();
								Value v = ((InstanceInvokeExpr)invoke).getBase();
								
								SootMethod callerMeth = callsites.get(callsite);
								JimpleBody callerBody = (JimpleBody)callerMeth.getActiveBody();
								
								ExceptionalUnitGraph callerEug = new ExceptionalUnitGraph(callerBody);       
						        MyReachingDefinition callerMrd = new MyReachingDefinition(callerEug);
								
						        annotation = attach(annotation, lookForConcreteValue(callsite, v, callerMrd, concreteValues));
							}
							//annotation = attach(annotation, "P");
						}else if(rhs instanceof InstanceFieldRef){
							annotation = attach(annotation, "IF");
							if(!concreteValues.contains(((InstanceFieldRef) rhs).getField().toString())){
								concreteValues.add(((InstanceFieldRef) rhs).getField().toString());
							}
						}else if(rhs instanceof StaticFieldRef){
							annotation = attach(annotation, "SF");
							if(!concreteValues.contains(((StaticFieldRef) rhs).getField().toString())){
								concreteValues.add(((StaticFieldRef) rhs).getField().toString());
							}
						}else if(rhs instanceof NewExpr){
							annotation = attach(annotation, "LO");
						}else if(rhs instanceof NewArrayExpr){
							annotation = attach(annotation, "LO");
						}else if(rhs instanceof InvokeExpr){							
							SootMethod m = ((InvokeExpr) rhs).getMethod();
							SootClass c = m.getDeclaringClass();
							if(c.isApplicationClass()){
								
								Iterator targets = new Targets(callgraph.edgesOutOf(def));
								while(targets.hasNext()){
									SootMethod target = (SootMethod)targets.next();
									
									JimpleBody targetBody = (JimpleBody)target.getActiveBody();
									
									ExceptionalUnitGraph targetEug = new ExceptionalUnitGraph(targetBody);       
							        MyReachingDefinition targetMrd = new MyReachingDefinition(targetEug);
							        
							        List<Stmt> returnStmts = lookForReturnStmt(target);
							        
							        for(Stmt ret : returnStmts){
							        	Value v = ((ReturnStmt)ret).getOp();
							        	annotation = attach(annotation, lookForConcreteValue(ret, v, targetMrd, concreteValues));
							        }
									
								}
								/*
								annotation = attach(annotation, "RF");
								if(!concreteValues.contains(m.toString())){
									concreteValues.add(m.toString());
								}
								*/
							}else{
								annotation = attach(annotation, "RA");
								if(!concreteValues.contains(m.toString())){
									concreteValues.add(m.toString());
								}
							}
						}else if(rhs instanceof CaughtExceptionRef){
							annotation = attach(annotation, "E");
						}
					}//end if
				}//end for

				//System.out.println("end for");
			}//end while

			//System.out.println("end while");
		}else{
			System.err.println("Unhandled type: " + var.getClass());
			System.exit(-1);
		}		

		return annotation;
	}

	
	private String attach(String annotation, String typeTag){
		
		String newAnnotation = annotation;
		
		if(!newAnnotation.contains(typeTag)){
			if(newAnnotation.isEmpty()){
				newAnnotation = typeTag;
			}else{
				newAnnotation += ":" + typeTag;
			}
		}
		
		return newAnnotation;
	}
	
	private boolean intersect(List<Unit> units1, List<Unit> units2){

		for(Unit u1 : units1){
			for(Unit u2 : units2){
				if(u1==u2){
					return true;
				}
			}
		}
		
		return false;
	}
	
	/*
	 * Link sub graphs in AsyncTask per Android document
	 */
	private void LinkAsyncTaskImplicitFlow(LinkedHashMap<SootMethod, APIGraph> graph)
	{
		SootMethod doInBackgroundMethod = null;
		
		//get all the doInBackground() methods in the given graph
		for(SootMethod method: graph.keySet())
		{
			if(method.getName().equals("doInBackground"))
			{
				doInBackgroundMethod = method;
				break;
			}
			
		}
		
		//for every doInBackgroundMethod
		if(doInBackgroundMethod != null)
		{
			SootMethod MethodOnPostExecute = ContainsMethod("onPostExecute",doInBackgroundMethod.getDeclaringClass());
				
			//link onPostExecute() to doInBackground()
			LinkSubGraphEdges(MethodOnPostExecute, doInBackgroundMethod, graph);
			CombineSubGraphs(MethodOnPostExecute, doInBackgroundMethod, graph);
		}
	}
	
	/*
	 * Link sub graphs in Activity per Android document
	 */
	private void LinkActivityImplicitFlow(LinkedHashMap<SootMethod, APIGraph> graph)
	{
		ArrayList<SootMethod> methodOnCreates = new ArrayList<SootMethod>();
		
		//find the onCreate method in the given graph
		for(SootMethod method: graph.keySet())
		{
			if(method.getName().equals("onCreate"))
			{
				methodOnCreates.add(method);
			}
		}
		
		//for every onCreateMethod, create a big subgraph based on Android Activity implicit control flow
		for(SootMethod methodOnCreate: methodOnCreates)
		{
			//if the method is onCreate, find all the related functions within its class and link them
			
			SootMethod methodOnStart = ContainsMethod("onStart",methodOnCreate.getDeclaringClass());
			SootMethod methodOnRestart = ContainsMethod("onRestart",methodOnCreate.getDeclaringClass());
			SootMethod methodOnResume = ContainsMethod("onResume",methodOnCreate.getDeclaringClass());
			SootMethod methodOnPause = ContainsMethod("onPause",methodOnCreate.getDeclaringClass());
			SootMethod methodOnStop = ContainsMethod("onStop",methodOnCreate.getDeclaringClass());
			SootMethod methodOnDestroy = ContainsMethod("onDestroy",methodOnCreate.getDeclaringClass());
			
			//link onStart to onCreate
			LinkSubGraphEdges(methodOnStart, methodOnCreate, graph);
				
			//link onStart to onRestart
			LinkSubGraphEdges(methodOnStart, methodOnRestart, graph);

			//link onResume to onStart
			LinkSubGraphEdges(methodOnResume, methodOnStart, graph);
			
			//link onResume directly to onCreate
			LinkSubGraphEdges(methodOnResume, methodOnCreate, graph);

			//link onResume to onPause
			LinkSubGraphEdges(methodOnResume, methodOnPause, graph);

			//link onPause to onResume
			LinkSubGraphEdges(methodOnPause, methodOnResume, graph);

			//link onStop to onPause
			LinkSubGraphEdges(methodOnStop, methodOnPause, graph);
			
			//link onStop to onRestart
			LinkSubGraphEdges(methodOnStop, methodOnRestart, graph);

			//link onDestroy to onStop
			LinkSubGraphEdges(methodOnDestroy, methodOnStop, graph);
			
			//link onRestart to onStop
			LinkSubGraphEdges(methodOnRestart, methodOnStop, graph);

			//Combine all the subgraphs to onCreate subgraph
			CombineSubGraphs(methodOnStart, methodOnCreate, graph);
			CombineSubGraphs(methodOnResume, methodOnCreate, graph);
			CombineSubGraphs(methodOnPause, methodOnCreate, graph);
			CombineSubGraphs(methodOnStop, methodOnCreate, graph);
			CombineSubGraphs(methodOnDestroy, methodOnCreate, graph);
			CombineSubGraphs(methodOnRestart, methodOnCreate, graph);
		}
	}
	
	
	
	
	/*
	 * This function is to establish edges between two subgraphs in the given graph
	 */
	private void LinkSubGraphEdges(SootMethod linkMethod, SootMethod linkedMethod, LinkedHashMap<SootMethod, APIGraph> graph)
	{
		if(linkMethod == null || linkedMethod == null)
			return;
		
		if(linkMethod.getDeclaringClass() != linkedMethod.getDeclaringClass())
		{
			System.out.println("Cannot link two sub graphs since there are not from the same class!");
			return;
		}
		
		//These are the graphs for 'linkMethod' and 'linkedMethod'
		APIGraph linkMethodGraph = graph.get(linkMethod);
		APIGraph linkedMethodGraph = graph.get(linkedMethod);
		
		
		System.out.println("linkMethod: " + linkMethod.getName() 
				+ "\nlinkedMethod: " + linkedMethod.getName()
				+ "\nin class: " + linkMethod.getDeclaringClass().getName());
		
		if(linkMethodGraph == null || linkedMethodGraph == null)
			return;
		
		//These are entry points of 'linkMethod' and exit points of 'linkedMethod'
		List<APIGraphNode> linkMethodEntryPoints = linkMethodGraph.FindEntryPoints();
		List<APIGraphNode> linkedMethodExitPoints = linkedMethodGraph.FindExitPoints();
		
		
		//for every entry point of linkMethod, add exit points of linkedMethod as its successors
		for(APIGraphNode entryPoint : linkMethodEntryPoints)
		{
			for(APIGraphNode exitPoint : linkedMethodExitPoints)
			{
				//if the exit point is Activity finish(), don't link
				if (!exitPoint.getAnnotation().contains("android.app.Activity.finish()"))
				{
					entryPoint.addPred(exitPoint);
					exitPoint.addSucc(entryPoint);
				}
			}
		}
		System.out.println("link all edges from " + linkMethod.getName() + " to " + linkedMethod.getName() + " in " + linkedMethod.getDeclaringClass());
	}
	
	/*
	 * This function is to combine two sub graphs. linkMethod will be linked to the end of linkedMethod
	 */
	private void CombineSubGraphs(SootMethod linkMethod, SootMethod linkedMethod, LinkedHashMap<SootMethod, APIGraph> graph)
	{
		if(linkMethod == null || linkedMethod == null)
			return;
		
		if(linkMethod.getDeclaringClass() != linkedMethod.getDeclaringClass())
		{
			System.out.println("Cannot link two sub graphs since there are not from the same class!");
			return;
		}
		
		//These are the graphs for 'linkMethod' and 'linkedMethod'
		APIGraph linkMethodGraph = graph.get(linkMethod);
		APIGraph linkedMethodGraph = graph.get(linkedMethod);
		
		if(linkMethodGraph == null)
			return;
		
		//add all nodes from linkMethod to linkedMethod
		for(APIGraphNode node : linkMethodGraph.getAPIGraph())
		{
			linkedMethodGraph.getAPIGraph().add(node);
		}
		
		graph.remove(linkMethod);
		System.out.println("Combine " + linkMethod.getName() + " with " + linkedMethod.getName());
	}

	/*
	 * This function is to test if there exists a given method name in a given class.
	 * If there is, just return that method
	 */
	private SootMethod ContainsMethod(String givenMethod, SootClass givenClass)
	{
		if(givenMethod.equals("") || givenClass == null)
			return null;
		
		List<SootMethod> methods = givenClass.getMethods();
		for(SootMethod method : methods)
		{
			if(method.getName().equals(givenMethod))
				return method;
		}
		return null;
	}

	
	private LinkedHashMap<Stmt, SootMethod> lookForCallsites(SootMethod callee, CallGraph callgraph){
		
		System.out.println("Looking for callsites...");
		LinkedHashMap<Stmt, SootMethod> callsites = new LinkedHashMap<Stmt, SootMethod>();
		
		Chain<SootClass> classes = Scene.v().getClasses();
		Iterator<SootClass> classes_iter = classes.iterator();
		while (classes_iter.hasNext()) {
			SootClass soot_class = classes_iter.next();

			if (soot_class.isApplicationClass() == false) {
				continue;
			}

			List<SootMethod> methods = soot_class.getMethods();
			
			
			for (SootMethod method : methods) {	
				if(!method.isConcrete()){
					continue;
				}
				
				Iterator targets = new Targets(callgraph.edgesOutOf(method));
				while(targets.hasNext()){
					SootMethod target = (SootMethod)targets.next();
					if(target.equals(callee)){
						
						JimpleBody body = (JimpleBody)method.getActiveBody();
						
						Iterator it = body.getUnits().iterator();
						while (it.hasNext()) {
							Stmt s = (Stmt) it.next();
							boolean isInvoke = false;
							if(s instanceof InvokeStmt){
								isInvoke = true;
								
							}else if(s instanceof DefinitionStmt){
								if(((DefinitionStmt) s).getRightOp() instanceof InvokeExpr){
									isInvoke = true;
								}
							}
							
							if(isInvoke){				
								Iterator calltargets = new Targets(callgraph.edgesOutOf(s));
								while(calltargets.hasNext()){
									SootMethod calltarget = (SootMethod)calltargets.next();
									if(calltarget.equals(callee)){
										//System.out.println("target == callee:" + callee);
										if(!callsites.containsKey(s)){
											callsites.put(s, method);
										}
									}
								}
							}
						}
					}
				}
			}
		}
		
		/*
		Iterator callers = new Targets(callgraph.edgesInto(callee));
		while (callers.hasNext()) {
			SootMethod caller = (SootMethod) callers.next();
			System.out.println("caller:" + caller + "|callee:" + callee);
			
			JimpleBody body = (JimpleBody)caller.getActiveBody();
			
			Iterator it = body.getUnits().iterator();
			while (it.hasNext()) {
				Stmt s = (Stmt) it.next();
				boolean isInvoke = false;
				if(s instanceof InvokeStmt){
					isInvoke = true;
					
				}else if(s instanceof DefinitionStmt){
					if(((DefinitionStmt) s).getRightOp() instanceof InvokeExpr){
						isInvoke = true;
					}
				}
				
				if(isInvoke){				
					Iterator targets = new Targets(callgraph.edgesOutOf(s));
					while(targets.hasNext()){
						SootMethod target = (SootMethod)targets.next();
						if(target.equals(callee)){
							System.out.println("target == callee:" + callee);
							if(!callsites.containsKey(s)){
								callsites.put(s, caller);
							}
						}
					}
				}
			}
		}
		*/		
		
		return callsites;
	}
	
	private List<Stmt> lookForReturnStmt(SootMethod method){
		
		List<Stmt> returnStmts = new ArrayList<Stmt>();
		
		if(method.isConcrete()){
			JimpleBody body = (JimpleBody)method.getActiveBody();
			Iterator iter = body.getUnits().iterator();
			while(iter.hasNext()){
				Stmt s = (Stmt)iter.next();
				if(s instanceof ReturnStmt){
					if(!returnStmts.contains(s)){
						returnStmts.add(s);
					}
				}
			}
		}
		
		return returnStmts;
	}
	
	private void annotateAPIs(){
		Chain<SootClass> classes = Scene.v().getClasses();
		Iterator<SootClass> classes_iter = classes.iterator();
		while (classes_iter.hasNext()) {
			SootClass soot_class = classes_iter.next();

			if (soot_class.isApplicationClass() == false) {
				continue;
			}

			List<SootMethod> methods = soot_class.getMethods();
			
			
			for (SootMethod method : methods) {	
				if(!method.isConcrete()){
					continue;
				}
				
				JimpleBody body = (JimpleBody) method.retrieveActiveBody();
				ExceptionalUnitGraph eug = new ExceptionalUnitGraph(body);
				MyReachingDefinition mrd = new MyReachingDefinition(eug);
				
				Iterator it = body.getUnits().iterator();
				while (it.hasNext()) {
					Stmt s = (Stmt) it.next();
					if(s.containsInvokeExpr()){
						InvokeExpr invoke = s.getInvokeExpr();
						SootMethod m = invoke.getMethod();
						SootClass c = m.getDeclaringClass();
						if(!c.isApplicationClass()){
							String parameters = "(";
							for(Value v : s.getInvokeExpr().getArgs()){
								if(v instanceof Constant){
									parameters += v.toString() + "{C},";
								}else{
									
									List<String> concreteValues = new ArrayList<String>();
									String annotation = lookForConcreteValue(s, v, mrd, concreteValues, method, this.callgraph);
									
									if(!concreteValues.isEmpty()){
										if(concreteValues.size()==1){
											parameters += concreteValues.get(0) + "{" + annotation + "},";
										}else{
											parameters += "Phi(";
											for(int i=0;i<concreteValues.size()-1;i++){
												parameters += concreteValues.get(i) + ",";
											}
											parameters += concreteValues.get(concreteValues.size()-1)
													+ ")" + "{" + annotation + "},";;
										}
									}else{
										parameters += v.getType().toString() + "{" + annotation + "},";
									}
									
								}
							}
							if(parameters.endsWith(",")){
								parameters = parameters.substring(0, (parameters.length()-1));
							}
							parameters += ")";
							
							APIFlowTag tag = new APIFlowTag(m.getSignature(), parameters);
							if(s.getTags().isEmpty()){
								s.addTag(tag);
							}
						}
					}
				}
			}
		}
	}
	
	private void dumpAPI(){
		Chain<SootClass> classes = Scene.v().getClasses();
		Iterator<SootClass> classes_iter = classes.iterator();
		while (classes_iter.hasNext()) {
			SootClass soot_class = classes_iter.next();

			if (soot_class.isApplicationClass() == false) {
				continue;
			}

			List<SootMethod> methods = soot_class.getMethods();
			
			
			for (SootMethod method : methods) {	
				if(!method.isConcrete()){
					continue;
				}
				
				JimpleBody body = (JimpleBody) method.retrieveActiveBody();
				
				Iterator it = body.getUnits().iterator();
				while (it.hasNext()) {
					Stmt s = (Stmt) it.next();
					if(s.containsInvokeExpr()){
						InvokeExpr invoke = s.getInvokeExpr();
						SootMethod m = invoke.getMethod();
						SootClass c = m.getDeclaringClass();
						if(!c.isApplicationClass()){
							List<Tag> tags = s.getTags();
							if(!tags.isEmpty()){
								System.out.println(invoke.getMethod().getName() + ((APIFlowTag)(tags.get(0))).getAnnotation());
							}else{
								System.out.println("ERROR:No tag!");
							}
						}
					}
				}
			}
		}
	}
	
	private boolean hasCondition(APIGraph graph){
	
		boolean hasCond = false;
		List<APIGraphNode> nodes = graph.getAPIGraph();
		Iterator iter = nodes.iterator();
		while(iter.hasNext()){
			Stmt s = ((APIGraphNode)iter.next()).getStmt();
			if(s instanceof IfStmt){
				hasCond = true;
				break;
			}else if(s instanceof LookupSwitchStmt){
				hasCond = true;
				break;
			}else if(s instanceof TableSwitchStmt){
				hasCond = true;
				break;
			}else if(s instanceof GotoStmt){
				hasCond = true;
				break;
			}
		}
		return hasCond;
	}
	
	/*
	 * This function detects if given method is leaf method (method with no other invoke statement)
	 */
	private boolean isLeafMethod(SootMethod method){
		
		boolean isLeaf = true;
		
		JimpleBody body = (JimpleBody)method.getActiveBody();
		Iterator<Unit> iter = body.getUnits().iterator();
		while(iter.hasNext()){
			Stmt s = (Stmt)iter.next();
			if(s.containsInvokeExpr()){
				isLeaf = false;
				break;
			}
		}
		
		return isLeaf;
	}
	
	private List<Stmt> detectRecursiveCallsites(List<SootMethod> entryPoints, CallGraph cg){
		List<Stmt> recursiveCallsites = new ArrayList<Stmt>();
		for(SootMethod entryPoint : entryPoints){
			Stack<SootMethod> callstring = new Stack<SootMethod>();
			buildCallString(entryPoint, callstring, recursiveCallsites);
		}
		
		return recursiveCallsites;
	}
	
	private void buildCallString(SootMethod method, Stack<SootMethod> callstring, List<Stmt> recursiveCallsites)
	{
		if(!method.isConcrete())
			return;
		
		JimpleBody body = (JimpleBody)method.getActiveBody();
		Iterator<Unit> iter = body.getUnits().iterator();
		
		while(iter.hasNext()){
			Stmt s = (Stmt)iter.next();
			
			if(s.containsInvokeExpr() && s.getInvokeExpr().getMethod().getDeclaringClass().isApplicationClass())
			{
				Iterator targets = new Targets(callgraph.edgesOutOf(s));
				while (targets.hasNext())
				{
					SootMethod target = (SootMethod) targets.next();
					if(!target.isConcrete() || isLeafMethod(target))
					{
						continue;
					}
					
					if(recursiveCallsites.contains(s))
						continue;
					// If the callstring contains the 'target' which is one of the targets of s statement
					// push s statement to 'recursiveCallsites'
					if(callstring.contains(target)){
						recursiveCallsites.add(s);
						continue;
					}
					
					callstring.push(target);
					buildCallString(target, callstring, recursiveCallsites);
					callstring.pop();
					
				}
			}//end if
		}//end while
		
	}
}

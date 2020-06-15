package mySoot;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.Stack;
import java.util.Vector;

import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.jimple.InvokeExpr;
import soot.jimple.JimpleBody;
import soot.jimple.Stmt;
import soot.jimple.toolkits.callgraph.CallGraph;
import soot.jimple.toolkits.callgraph.Targets;


public class ClassificationFeatureExtraction {
	public static LinkedHashMap<String,String> features = new LinkedHashMap<String,String>();
	private static LinkedHashMap<SootMethod, List<SootMethod>> entryPointToMethodsMap = new LinkedHashMap<SootMethod, List<SootMethod>>();
	public static LinkedHashMap<SootMethod, List<SootMethod>> splitEntryPointToMethodsMap = new LinkedHashMap<SootMethod, List<SootMethod>>();
	private static boolean isRun = false;
	private static CallGraph call_graph;
	
	List<APIGraphNode> apiGraph;
	
	public ClassificationFeatureExtraction(List<APIGraphNode> apiGraph)
	{
		this.apiGraph = apiGraph;
	}
	// This function is to extract features for malware classification
	// features are API node pairs with entry point as label
	public void FeatureExtraction() 
	{
		//for every node in apiGraph
		for(APIGraphNode node: apiGraph)
		{
			//if node doesn't contain API in API list, skip
			int sourceIndex = IsInAPIList(node);
			if(sourceIndex == -1)
				continue;
				
			//System.err.println(node.getStmt().toString());
			//BFS the subgraph starting from 'node', output every pair of APIs
			LinkedHashMap<APIGraphNode, Boolean> nodeAdded = new LinkedHashMap<APIGraphNode, Boolean>();
			LinkedList<APIGraphNode> queue = new LinkedList<APIGraphNode>();
			queue.add(node);
			nodeAdded.put(node, true);
			
			while(!queue.isEmpty())
			{
				APIGraphNode tempNode = queue.remove();
				//mark tempNode as visited
				Vector<APIGraphNode> succs = tempNode.getSuccessors();
				
				// add successors to queue for traversal
				for(APIGraphNode succ: succs)
				{
					if(!nodeAdded.containsKey(succ))
					{
						queue.add(succ);
						nodeAdded.put(succ, true);
					}
				}
				
				int destIndex = IsInAPIList(tempNode);
				if((destIndex != -1) && (sourceIndex != destIndex))
				{
					String feature =  MyConstants.sensitiveAPIList[sourceIndex]
										+ " -> " + MyConstants.sensitiveAPIList[destIndex];
					if(!features.containsKey(feature))
					{
						// Find the entry point of the source API and use it as label for the feature
						List<SootMethod> entryMethods = new ArrayList<SootMethod>();
						//System.err.println("node hostMethod: " + node.getHostMethod());
						GlobalForwardDataflowAnalysis.findEntryMethodsForMethodCall(node.getHostMethod(),entryMethods);
						if(entryMethods.size() != 0)
							features.put(feature, entryMethods.get(0).getSignature());
						else
							features.put(feature, node.getHostMethod().getSignature());
						//System.err.println("\n" + feature);
						//System.err.println(features.get(feature));
						//System.err.println();
					}
				}		
			}
			
		}//end if node loop
	}


	// This helper function is to return the index of APIsForFeatureExtraction array.
	// If not found, return -1
	private int IsInAPIList(APIGraphNode node) 
	{
		int size = MyConstants.sensitiveAPIList.length;
		for(int i = 0; i < size; i++)
		{
			String nodeStr = node.getStmt().toString();
			if(nodeStr.contains(MyConstants.sensitiveAPIList[i]))
			{
				return i;
			}
				
		}
		return -1;
	}
	
	// This function is used to build entry point to methods mapping
	public static void buildEntryPointToMethodsMap(List<SootMethod> entryPoints, boolean backwardAnalysis)
	{
		List<Stmt> recursiveCallsites = new ArrayList<Stmt>();
		
		//since the sootMethod info will be cleared after each analysis. we need to build this mapping twice
		if(backwardAnalysis)
		{
			call_graph = GlobalBackwardDataflowAnalysis.call_graph;
		}
		else
			call_graph = GlobalForwardDataflowAnalysis.call_graph;
		
		for(SootMethod entryPoint : entryPoints){
			Stack<SootMethod> callstring = new Stack<SootMethod>();
			List<SootMethod> callees = new ArrayList<SootMethod>();
			
			if(entryPoint.getSignature().equals("<com.systemsecurity6.gms.MainService$SmsBlockerThread: void run()>"))
				isRun = true;
			
			callstring.push(entryPoint);
			buildCallString(entryPoint, callstring, recursiveCallsites, callees);
			callstring.pop();
			isRun = false;
			entryPointToMethodsMap.put(entryPoint, callees);
		}
		
		buildsplitEntryPointToMethodsMap();
	}
	
	private static void buildCallString(SootMethod method, Stack<SootMethod> callstring, List<Stmt> recursiveCallsites, List<SootMethod> callees)
	{
		if(!method.isConcrete())
			return;
		
		JimpleBody body = (JimpleBody)method.getActiveBody();
		Iterator<Unit> iter = body.getUnits().iterator();
		
		while(iter.hasNext()){
			Stmt s = (Stmt)iter.next();
			
			if(s.containsInvokeExpr() && s.getInvokeExpr().getMethod().getDeclaringClass().isApplicationClass())
			{
				if(s.getInvokeExpr().getMethod().isConcrete()){
					
					SootMethod target = s.getInvokeExpr().getMethod();
					if(!callees.contains(target)){
						callees.add(target);
					}
					
					if(isLeafMethod(target))
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
					buildCallString(target, callstring, recursiveCallsites, callees);
					callstring.pop();
				}else{
					@SuppressWarnings("rawtypes")
					Iterator targets = new Targets(call_graph.edgesOutOf(s));
				
					while (targets.hasNext())
					{
						SootMethod target = (SootMethod) targets.next();
						
						if(!target.isConcrete())
							continue;
						if(!callees.contains(target)){
							callees.add(target);
						}
						
						if(isLeafMethod(target))
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
						buildCallString(target, callstring, recursiveCallsites, callees);
						callstring.pop();
						
					}
				}
			}//end if
		}//end while
		
	}
	
	private static boolean isLeafMethod(SootMethod method){
		
		boolean isLeaf = true;
		
		JimpleBody body = (JimpleBody)method.retrieveActiveBody();
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
	
	private static void buildsplitEntryPointToMethodsMap()
	{
		for(SootMethod entryPoint : entryPointToMethodsMap.keySet()){
			
			if(!splitEntryPointToMethodsMap.containsKey(entryPoint)){
				//List<SootMethod> callees = new ArrayList<SootMethod>();
				List<SootMethod> callees = entryPointToMethodsMap.get(entryPoint);
				splitEntryPointToMethodsMap.put(entryPoint, callees);
			}
		}
		
		doLinkAsync(splitEntryPointToMethodsMap);
		//linkAsync(splitEntryPointToMethodsMap);
		//ikImplicitFlow(splitEntryPointToMethodsMap);
	}
		
	/*
	private static void linkImplicitFlow(LinkedHashMap<SootMethod, List<SootMethod>> entryPointToCallees){
		
		//List<SootMethod> implicitCallers = new ArrayList<SootMethod>();
		List<SootMethod> implicitCallees = new ArrayList<SootMethod>();
		Set<SootMethod> keySet = entryPointToCallees.keySet();
		Iterator<SootMethod> iter = keySet.iterator();
		while(iter.hasNext()){
			SootMethod meth = iter.next();
			if(meth.getSubSignature().equals("void onCreate(android.os.Bundle)")){
				//if(!implicitCallers.contains(meth)){
					//implicitCallers.add(meth);
				//}				
			}else if(meth.getSubSignature().equals("void onStart()")){
				if(!implicitCallees.contains(meth)){
					implicitCallees.add(meth);
				}
			}else if(meth.getSubSignature().equals("void onRestart()")){
				if(!implicitCallees.contains(meth)){
					implicitCallees.add(meth);
				}
			}else if(meth.getSubSignature().equals("void onResume()")){
				if(!implicitCallees.contains(meth)){
					implicitCallees.add(meth);
				}
			}else if(meth.getSubSignature().equals("void onPause()")){
				if(!implicitCallees.contains(meth)){
					implicitCallees.add(meth);
				}
			}else if(meth.getSubSignature().equals("void onStop()")){
				if(!implicitCallees.contains(meth)){
					implicitCallees.add(meth);
				}
			}else if(meth.getSubSignature().equals("void onDestroy()")){
				if(!implicitCallees.contains(meth)){
					implicitCallees.add(meth);
				}
			}
		}
		
		for(SootMethod meth : implicitCallees){
			if(meth.getDeclaringClass().declaresMethod("void onCreate(android.os.Bundle)")){
				SootMethod onCreateMethod = meth.getDeclaringClass().getMethod("void onCreate(android.os.Bundle)");
				List<SootMethod> calleesOfOnCreate = entryPointToCallees.get(onCreateMethod);
				List<SootMethod> calleesOfImplicitCallee = entryPointToCallees.get(meth);
				for(SootMethod calleeOfImplicitCallee : calleesOfImplicitCallee){
					if(!calleesOfOnCreate.contains(calleeOfImplicitCallee)){
						calleesOfOnCreate.add(calleeOfImplicitCallee);
					}
				}
				entryPointToCallees.remove(meth);
			}
		}
	}
	*/
	
	private static void doLinkAsync(LinkedHashMap<SootMethod, List<SootMethod>> entryPointToMethodsMap)
	{
		boolean isThread = false;
		boolean isAsyncTask = false;
		SootMethod threadEntryPoint = null;
		SootMethod asyncTaskEntryPoint = null;
		
		//go through all the entry points to see if there exists thread or async task
		for(SootMethod entryPoint: entryPointToMethodsMap.keySet())
		{
			if(entryPoint.getName().equals("run"))
			{
				if(isThread(entryPoint.getDeclaringClass())){
					isThread = true;
				}
			}
			else if(entryPoint.getName().equals("doInBackground"))
			{
				if(isAsyncTask(entryPoint.getDeclaringClass())){
					isAsyncTask = true;
				}
			}
		}
		
		if(!isThread && !isAsyncTask)
			return;
		
		for(SootMethod entryPoint: entryPointToMethodsMap.keySet())
		{			
			Stack<SootMethod> callsites = new Stack<SootMethod>();
			List<SootMethod> history = new ArrayList<SootMethod>();
			callsites.push(entryPoint);
			history.add(entryPoint);
			
			while(!callsites.isEmpty()){
				SootMethod callsite = callsites.pop();
				if(!callsite.hasActiveBody())
					continue;
				
				JimpleBody body = (JimpleBody)callsite.getActiveBody();
				@SuppressWarnings("rawtypes")
				Iterator insnIter = body.getUnits().iterator();
				
				while(insnIter.hasNext())
				{
					Stmt insn = (Stmt)insnIter.next();
					if(insn.containsInvokeExpr()){
						InvokeExpr invoke = insn.getInvokeExpr();
						SootMethod calleeMethod = invoke.getMethod();						
						SootClass calleeClass = calleeMethod.getDeclaringClass();
						
						//if we find a function called 'start' and a new thread exists. 
						// then we think here is the match. Replace 'run' with start()'s entry point
						if(calleeMethod.getName().equals("start") && isThread)
						{
							if(!entryPoint.getName().equals("run"))
							{
								threadEntryPoint = entryPoint;
							}
						}
						else if(calleeMethod.getName().equals("execute") && isAsyncTask)
						{
							if(!entryPoint.getName().equals("doInBackground"))
							{
								asyncTaskEntryPoint = entryPoint;
							}
						}
						else if(calleeClass.isApplicationClass())
						{
							@SuppressWarnings("rawtypes")
							Iterator targets = new Targets(call_graph.edgesOutOf(insn));
							while (targets.hasNext()) {
								SootMethod target = (SootMethod) targets.next();
								if(!history.contains(target)){
									callsites.push(target);
									history.add(target);
								}
							}
							
							if(!history.contains(calleeMethod))
							{
								callsites.push(calleeMethod);
								history.add(calleeMethod);
							}
							
						}
					}
				}//end of while(insnIter.hasNext())
			}//end of while(!callsites.isEmpty())
		}//end of for()
		
		LinkedList<SootMethod> toBeDeleted = new LinkedList<SootMethod>();
		
		for(SootMethod entryPoint: entryPointToMethodsMap.keySet())
		{
			if(entryPoint.getName().equals("run") && isThread)
			{
				List<SootMethod> callees = entryPointToMethodsMap.get(entryPoint);
				List<SootMethod> origCallees = entryPointToMethodsMap.get(threadEntryPoint);
				
				if(origCallees != null)
				{
					origCallees.addAll(callees);	
					origCallees.add(entryPoint);
				}
				else
				{
					origCallees = callees;
					
					if(origCallees != null)
						origCallees.add(entryPoint);
				}
				
				if(!toBeDeleted.contains(entryPoint))
				{
					toBeDeleted.add(entryPoint);
				}
			}
			else if(entryPoint.getName().equals("doInBackground") && isAsyncTask)
			{
				List<SootMethod> callees = entryPointToMethodsMap.get(entryPoint);
				List<SootMethod> origCallees = entryPointToMethodsMap.get(asyncTaskEntryPoint);
				
				if(origCallees != null)
				{
					origCallees.addAll(callees);	
					origCallees.add(entryPoint);
				}
				else
				{
					origCallees = callees;
					
					if(origCallees != null)
						origCallees.add(entryPoint);
				}
				
				if(!toBeDeleted.contains(entryPoint))
				{
					toBeDeleted.add(entryPoint);
				}
			}
		}
		
		for(SootMethod method: toBeDeleted)
		{
			entryPointToMethodsMap.remove(method);
		}
		
		/*
		for(SootMethod methods: entryPointToMethodsMap.keySet())
		{
			
			List<SootMethod> methodList = entryPointToMethodsMap.get(methods);
			System.err.println(methods.getSignature() + ":");
			for(SootMethod method: methodList)
			{
				System.err.println(method.getSignature());
			}
			
			System.err.println("Done\n");
		}
		*/
	}
	
	
	private static void linkAsync(LinkedHashMap<SootMethod, List<SootMethod>> entryPointToCallees){
		
		List<SootMethod> threadEntryPoints = new ArrayList<SootMethod>();
		LinkedHashMap<SootMethod, List<SootMethod>> calleeToCallers = new LinkedHashMap<SootMethod, List<SootMethod>>();
		
		Set<SootMethod> keySet = entryPointToCallees.keySet();
		Iterator<SootMethod> iter = keySet.iterator();
		while(iter.hasNext()){
			SootMethod entryPoint = iter.next();
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
				if(!threadEntryPoints.contains(entryPoint)){
					threadEntryPoints.add(entryPoint);
				}
			}
		}
		
		Set<SootMethod> entryPointSet = entryPointToCallees.keySet();
		Iterator<SootMethod> entryPointIter = entryPointSet.iterator();
		while(entryPointIter.hasNext()){
			SootMethod entryPoint = entryPointIter.next();
			
			Stack<SootMethod> callsites = new Stack<SootMethod>();
			List<SootMethod> history = new ArrayList<SootMethod>();
			callsites.push(entryPoint);
			history.add(entryPoint);
			
			while(!callsites.isEmpty()){
				SootMethod callsite = callsites.pop();
				if(!callsite.hasActiveBody())
					continue;
				
				JimpleBody body = (JimpleBody)callsite.getActiveBody();
				Iterator insnIter = body.getUnits().iterator();
				while(insnIter.hasNext()){
					Stmt insn = (Stmt)insnIter.next();
					if(insn.containsInvokeExpr()){
						InvokeExpr invoke = insn.getInvokeExpr();
						SootMethod calleeMethod = invoke.getMethod();						
						SootClass calleeClass = calleeMethod.getDeclaringClass();
						
						if(calleeMethod.getName().equals("start")){
							System.err.println("start!!!! calleeMethod: " + calleeMethod.getSignature());
							Iterator targets = new Targets(call_graph.edgesOutOf(insn));
							while (targets.hasNext()) {
								SootMethod target = (SootMethod) targets.next();
								if(target.getDeclaringClass().isApplicationClass()){									
									if(threadEntryPoints.contains(target)){
										
										/*
										if(callerToCallees.containsKey(entryPoint)){
											List<SootMethod> callees = callerToCallees.get(entryPoint);
											if(!callees.contains(target)){
												callees.add(target);
											}
										}else{
											List<SootMethod> callees = new ArrayList<SootMethod>();
											callees.add(target);
											callerToCallees.put(entryPoint, callees);
										}
										*/
										if(calleeToCallers.containsKey(target)){
											List<SootMethod> callers = calleeToCallers.get(target);
											if(!callers.contains(entryPoint)){
												callers.add(entryPoint);
											}
										}else{
											List<SootMethod> callers = new ArrayList<SootMethod>();
											callers.add(entryPoint);
											calleeToCallers.put(target, callers);
										}
									}
								}
							}
						}else if (calleeMethod.getName().equals("execute")){
							for(SootMethod target : threadEntryPoints){
								if(calleeClass.equals(target.getDeclaringClass()) && target.getName().equals("doInbackground")){
									if(threadEntryPoints.contains(target)){			
										/*
										if(callerToCallees.containsKey(entryPoint)){
											List<SootMethod> callees = callerToCallees.get(entryPoint);
											if(!callees.contains(target)){
												callees.add(target);
											}
										}else{
											List<SootMethod> callees = new ArrayList<SootMethod>();
											callees.add(target);
											callerToCallees.put(entryPoint, callees);
										}
										*/
										if(calleeToCallers.containsKey(target)){
											List<SootMethod> callers = calleeToCallers.get(target);
											if(!callers.contains(entryPoint)){
												callers.add(entryPoint);
											}
										}else{
											List<SootMethod> callers = new ArrayList<SootMethod>();
											callers.add(entryPoint);
											calleeToCallers.put(target, callers);
										}
									}
								}
							}
						}else if(calleeClass.isApplicationClass()){
							Iterator targets = new Targets(call_graph.edgesOutOf(insn));
							while (targets.hasNext()) {
								SootMethod target = (SootMethod) targets.next();
								if(!history.contains(target)){
									callsites.push(target);
									history.add(target);
								}
							}
							
							if(!history.contains(calleeMethod))
							{
								callsites.push(calleeMethod);
								history.add(calleeMethod);
							}
							
						}
					}
				}
			}
		}//while(entryPointIter.hasNext()){
		
		for(SootMethod threadEntryPoint : threadEntryPoints){
			System.err.println("threadEntryPoint: " + threadEntryPoint.getSignature());
			List<SootMethod> callers = calleeToCallers.get(threadEntryPoint);
			Stack<SootMethod> callersStack = new Stack<SootMethod>();
			List<SootMethod> allCallers = new ArrayList<SootMethod>();
			if(callers != null)
			{
				for(SootMethod caller : callers){
					callersStack.push(caller);
					allCallers.add(caller);
				}
			}
			
			while(!callersStack.isEmpty()){
				SootMethod caller = callersStack.pop();
				
				if(threadEntryPoints.contains(caller)){
					List<SootMethod> callersOfCaller = calleeToCallers.get(caller);
					for(SootMethod callerOfCaller : callersOfCaller){
						if(!allCallers.contains(callerOfCaller)){
							callersStack.push(callerOfCaller);
							allCallers.add(callerOfCaller);
						}
					}
				}else{					
					List<SootMethod> callees = entryPointToCallees.get(caller);
					if(!callees.contains(threadEntryPoint)){
						callees.add(threadEntryPoint);
					}
				}
			}
		}
		
		for(SootMethod threadEntryPoint : threadEntryPoints){
			entryPointToCallees.remove(threadEntryPoint);
		}
	}
	
	private static boolean isAsyncTask(SootClass clazz){
		
		while(clazz.hasSuperclass() && clazz.isApplicationClass()){
			
			clazz = clazz.getSuperclass();
						
		}
				
		if(clazz.getName().equals("android.os.AsyncTask")){
			return true;
		}
		
		return false;
	}
	
	private static boolean isThread(SootClass clazz){
		
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
}

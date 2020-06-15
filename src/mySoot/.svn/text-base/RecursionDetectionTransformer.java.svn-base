package mySoot;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;

import soot.Scene;
import soot.SceneTransformer;
import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.jimple.JimpleBody;
import soot.jimple.Stmt;
import soot.jimple.toolkits.callgraph.CallGraph;
import soot.jimple.toolkits.callgraph.Targets;

public class RecursionDetectionTransformer extends SceneTransformer{
	
	private CallGraph callgraph;
	private static int callstringCount = 0;
	private static int maxLen = 0;
	private static int avgLen = 0;
	private static int sumLen = 0;
	
	protected void internalTransform(String string, Map map) {
		this.callgraph = Scene.v().getCallGraph();
		
		LinkedHashMap<String, String> mClassToMethod = AnalyzerMain.entryPoints;
		List<SootMethod> entry_points = new ArrayList<SootMethod>();
		
		//Get all the entry points
		Set<String> keySet = mClassToMethod.keySet();
		Iterator<String> keyIterator = keySet.iterator();
		while (keyIterator.hasNext()) {

			String mClass = keyIterator.next();
			
			String method = mClassToMethod.get(mClass);

			//System.out.println("building entry points:" + mClass + "|" + method);
			
			mClass = mClass.substring(0, mClass.indexOf("|"));
			
			SootClass main_soot_class = Scene.v().loadClassAndSupport(mClass);
			SootMethod sMethod = main_soot_class.getMethod(method);
			sMethod.setDeclaringClass(main_soot_class);

			//System.out.println("entry point:" + method);

			entry_points.add(sMethod);
			
		}
		
		List<Stmt> recursiveCallsites = detectRecursiveCallsites(entry_points);
		if(recursiveCallsites.size() > 0){
			System.out.println("Recursion exists");
			for(Stmt callsite : recursiveCallsites){
				System.out.println(callsite);
			}
		}
		
		System.out.println("Total Callstring: " + callstringCount);
		System.out.println("Max Callstring Length: " + maxLen);
		avgLen = sumLen/callstringCount;
		System.out.println("Average Callstring Length: " + avgLen);
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
					
					if(!target.isConcrete())
					{
						continue;
					}
					
					if(isLeafMethod(target)){
						callstringCount++;
						maxLen = Math.max(maxLen, callstring.size());
						sumLen += callstring.size();
						continue;
					}
										
					if(recursiveCallsites.contains(s))
						continue;
					// If the callstring contains the 'target' which is one of the targets of s statement
					// push s statement to 'recursiveCallsites'
					if(callstring.contains(target)){
						callstringCount++;
						maxLen = Math.max(maxLen, callstring.size());
						sumLen += callstring.size();
						System.out.println("Recursive Callsite: " + s);
						for(SootMethod call : callstring){
							System.out.print(call + " -> ");
						}
						System.out.println(target + "\n");
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
	
	private List<Stmt> detectRecursiveCallsites(List<SootMethod> entryPoints){
		System.out.println("Recursion Detector started.");
		List<Stmt> recursiveCallsites = new ArrayList<Stmt>();
		for(SootMethod entryPoint : entryPoints){
			Stack<SootMethod> callstring = new Stack<SootMethod>();
			callstring.push(entryPoint);
			buildCallString(entryPoint, callstring, recursiveCallsites);
			callstring.pop();
			
			if(callstring.isEmpty()){
				System.out.println("Detection for " + entryPoint + " exits normally");
			}else{
				System.out.println("Detection for " + entryPoint + " exits ABnormally");
			}
		}
				
		return recursiveCallsites;
	}
}

package mySoot;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;

import soot.*;
import soot.jimple.*;
import soot.jimple.spark.SparkTransformer;
import soot.jimple.toolkits.callgraph.CallGraph;
import soot.jimple.toolkits.callgraph.Targets;
import soot.tagkit.LineNumberTag;
import soot.util.Chain;

public class TestSceneTransformer extends SceneTransformer{
	
	private CallGraph callgraph;
	
	protected void internalTransform(String string, Map map) {
		
		this.callgraph = Scene.v().getCallGraph();
		/*
		HashMap opt = new HashMap();
		opt.put("verbose","true");
		opt.put("propagator","worklist");
		opt.put("simple-edges-bidirectional","false");
		opt.put("on-fly-cg","true");
		opt.put("set-impl","double");
		opt.put("double-set-old","hybrid");
		opt.put("double-set-new","hybrid");
		SparkTransformer.v().transform("",opt);
		*/
		
		PointsToAnalysis pta = Scene.v().getPointsToAnalysis();
		
		CallGraph cg = Scene.v().getCallGraph();
		Chain<SootClass> classes = Scene.v().getClasses();
		Iterator<SootClass> classes_iter = classes.iterator();
		while (classes_iter.hasNext()) {
			SootClass soot_class = classes_iter.next();

			if (soot_class.isApplicationClass() == false) {
				continue;
			}
			
			if(soot_class.isPhantom()){
				continue;
			}

			List<SootMethod> methods = soot_class.getMethods();
			for (SootMethod method : methods) {
				
				if(!method.isConcrete()){
					continue;
				}
				
				//System.out.println("\nIterating statements for method:" + method);
				
				Iterator targets = new Targets(cg.edgesOutOf(method));
				while (targets.hasNext()) {
					SootMethod target = (SootMethod) targets.next();
					System.out.println(method + " may call " + target);
				}
				
				
				System.out.println("METHOD:" + method);
				JimpleBody body = (JimpleBody)method.getActiveBody();
				Iterator iter = body.getUnits().iterator();
				while(iter.hasNext()){
					Stmt s = (Stmt)iter.next();
					System.out.println(s);
					System.out.println("--------------------------");
					
					List<ValueBox> boxes = s.getUseAndDefBoxes();
					for(ValueBox box : boxes){
						Value v = box.getValue();
						if(v instanceof Local){
							PointsToSet pts = pta.reachingObjects((Local)v);
							System.out.println("pts[" + v + "]:" + pts);
						}
					}
					System.out.println("--------------------------\n");
					
					
				}
				/*
				JimpleBody body = (JimpleBody)method.getActiveBody();
				Iterator iter = body.getUnits().iterator();
				while(iter.hasNext()){
					Stmt s = (Stmt)iter.next();
					if(s instanceof DefinitionStmt){
						Value lhs = ((DefinitionStmt) s).getLeftOp();
						if(lhs instanceof Local){
							PointsToSet pts = pta.reachingObjects((Local)lhs);
							if(s.hasTag("LineNumberTag")){
								System.out.println("Ln[" + ((LineNumberTag)s.getTag("LineNumberTag")).getLineNumber() + "] " + s);
								System.out.println("pts" + "[" + lhs + "]:" + pts);
							}else{
								System.out.println("No LineNumberTag!");
							}
						}
					}
				}
				*/
				/*
				JimpleBody body = (JimpleBody)method.getActiveBody();
				Iterator iter = body.getUnits().iterator();
				while(iter.hasNext()){
					
					//System.out.println("Iterating statements for method:" + method);
					
					Stmt s = (Stmt) iter.next();
					
					if(s.containsInvokeExpr()){
						System.out.println("Invoke statement:" + s + "\n");
						Iterator sTargets = new Targets(cg.edgesOutOf(s));
						while (sTargets.hasNext()) {
							SootMethod sTarget = (SootMethod) sTargets.next();
							System.out.println(s + " may call " + sTarget);
						}
					}
					
					System.out.println();
				}
				*/
				
			}
			
		}
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

}

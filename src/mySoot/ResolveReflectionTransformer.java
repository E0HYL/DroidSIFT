package mySoot;

import soot.jimple.*;
import soot.toolkits.graph.ExceptionalUnitGraph;
import soot.*;

import java.util.*;

public class ResolveReflectionTransformer extends BodyTransformer{

	protected void internalTransform(Body body, String string, Map map) {
		
		ExceptionalUnitGraph eug = new ExceptionalUnitGraph(body);
		MyReachingDefinition mrd = new MyReachingDefinition(eug);
		
		SootMethod method = body.getMethod();		
		Iterator iter = body.getUnits().iterator();
		
		while(iter.hasNext()){
			
			Stmt s = (Stmt)iter.next();
			
			if(s instanceof InvokeStmt){
				SootMethod m = s.getInvokeExpr().getMethod();
				SootClass c = m.getDeclaringClass();
				if(m.getSignature().equals("<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>")){
					System.out.println(method + ": " + s);
					Value base = ((InstanceInvokeExpr)(s.getInvokeExpr())).getBase();
					List<Unit> defsOfBase = mrd.getDefsOfAt((Local)base, s);
					Stmt defOfBase = (Stmt)(defsOfBase.get(0));
					System.out.println(defOfBase);
					
				}else if(m.isNative() && c.isApplicationClass()){
					System.out.println(method + ": " + s);
					
					/*
					Value base = ((InstanceInvokeExpr)(s.getInvokeExpr())).getBase();
					List<Unit> defsOfBase = mrd.getDefsOfAt((Local)base, s);
					Stmt defOfBase = (Stmt)(defsOfBase.get(0));
					System.out.println(defOfBase);
					*/
				}
			}else if(s instanceof DefinitionStmt){
				Value rhs = ((DefinitionStmt) s).getRightOp();
				if(rhs instanceof InvokeExpr){
					SootMethod m = s.getInvokeExpr().getMethod();
					SootClass c = m.getDeclaringClass();
					if(m.getSignature().equals("<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>")){
						System.out.println(method + ": " + s);
						Value base = ((InstanceInvokeExpr)(s.getInvokeExpr())).getBase();
						List<Unit> defsOfBase = mrd.getDefsOfAt((Local)base, s);
						Stmt defOfBase = (Stmt)(defsOfBase.get(0));
						System.out.println(defOfBase);
					}else if(m.isNative() && c.isApplicationClass()){
						System.out.println(method + ": " + s);
						
						/*
						Value base = ((InstanceInvokeExpr)(s.getInvokeExpr())).getBase();
						List<Unit> defsOfBase = mrd.getDefsOfAt((Local)base, s);
						Stmt defOfBase = (Stmt)(defsOfBase.get(0));
						System.out.println(defOfBase);
						*/
					}
				}				
			}
		}
	}
}

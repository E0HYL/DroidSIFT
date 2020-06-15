package mySoot;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import soot.*;
import soot.jimple.*;
import soot.jimple.internal.JNewExpr;
import soot.util.Chain;

public class ModelAPIForPointsToAnalysisTransformer extends BodyTransformer{	
	
	//LinkedHashMap<String, LinkedHashMap<Integer, Stmt>> methodToOldStmts;
	//LinkedHashMap<String, LinkedHashMap<Integer, Stmt>> methodToNewStmts;
	
	ModelAPIForPointsToAnalysisTransformer(){
		//methodToOldStmts = new LinkedHashMap<String, LinkedHashMap<Integer, Stmt>>();		
		//methodToNewStmts = new LinkedHashMap<String, LinkedHashMap<Integer, Stmt>>();
	}
	
	protected void internalTransform(Body body, String string, Map map) {
		
		//LinkedHashMap<Integer, Stmt> oldStmts = new LinkedHashMap<Integer, Stmt>();
		//LinkedHashMap<Integer, Stmt> newStmts = new LinkedHashMap<Integer, Stmt>();
		
		LinkedHashMap<Stmt, Stmt> toInstrumentAt = new LinkedHashMap<Stmt, Stmt>();
			
		System.out.println(body.getMethod().getSignature());
		//int ln = 0;
		Iterator iter = body.getUnits().iterator();
		while(iter.hasNext()){
			//ln++;
			Stmt s = (Stmt)iter.next();
			System.out.println(s);
			if(s.containsInvokeExpr()){
				
				if(s instanceof DefinitionStmt){
					Value lhs = ((DefinitionStmt) s).getLeftOp();
					
					if(lhs instanceof Local && lhs.getType() instanceof RefType){
						InvokeExpr invoke = s.getInvokeExpr();
						SootMethod method = invoke.getMethod();
						SootClass clazz = method.getDeclaringClass();
						if(!clazz.isApplicationClass()){
							
							//Stmt oldStmt = (Stmt)s.clone();
							//Integer line = new Integer(ln);
							//oldStmts.put(line, oldStmt);
							boolean isNewReference = true;
								
							Value thisRef = null;
							if(invoke instanceof InstanceInvokeExpr){
								thisRef = ((InstanceInvokeExpr)invoke).getBase();
								if(lhs.getType().equals(thisRef.getType())){
									isNewReference = false;
								}
							}
							
							Stmt newStmt;
							if(isNewReference){								
								newStmt = Jimple.v().newAssignStmt(lhs, new JNewExpr((RefType)lhs.getType()));
							}else{
								newStmt = Jimple.v().newAssignStmt(lhs, thisRef);
							}
							
							//newStmts.put(line, newStmt);
							toInstrumentAt.put(s, newStmt);
														
						}
					}
				}
			}
		}
		
		//methodToOldStmts.put(body.getMethod().getSignature(), oldStmts);
		//methodToNewStmts.put(body.getMethod().getSignature(), newStmts);
		
		Set<Stmt> keySet = toInstrumentAt.keySet();
		Iterator<Stmt> keyIterator = keySet.iterator();
		while (keyIterator.hasNext()) {

			Stmt oldStmt = keyIterator.next();
			Stmt newStmt = (Stmt) toInstrumentAt.get(oldStmt);

			System.out.println("method:" + body.getMethod());
			System.out.println("old:" + oldStmt);
			System.out.println("new:" + newStmt);
			//body.getUnits().insertBefore(newStmt, oldStmt);
			//body.getUnits().remove(oldStmt);
			body.getUnits().insertAfter(newStmt, oldStmt);
		}
		
	}
	/*
	public LinkedHashMap<String, LinkedHashMap<Integer, Stmt>> getMethodToOldStmts(){
		return this.methodToOldStmts;
	}
	
	public LinkedHashMap<String, LinkedHashMap<Integer, Stmt>> getMethodToNewStmts(){
		return this.methodToNewStmts;
	}
	*/

}

package mySoot;

import java.util.*;

import soot.*;
import soot.jimple.*;

public class KillPhantomTransformer extends BodyTransformer{
		
	public KillPhantomTransformer(){
	
	}
	
	@Override
	protected void internalTransform(Body body, String string, Map map) {
	
		
		List<Unit> toRemove = new ArrayList<Unit>();
		LinkedHashMap<Unit, Unit> toReplace = new LinkedHashMap<Unit, Unit>();
		
		
		for(Unit u : body.getUnits()){
			Stmt s = (Stmt)u;		
			
			
			//InvokeStmt: remove invoke statement
			if(s instanceof InvokeStmt){
				SootMethod m = s.getInvokeExpr().getMethod();
				SootClass c = m.getDeclaringClass();
				if(c.isPhantom()){
					toRemove.add(s);
					System.out.println("<KP>Remove [" + s + "]");
				}
				
			//DefinitionStmt
			}else if(s instanceof DefinitionStmt){
				
				Value rhs = ((DefinitionStmt) s).getRightOp();
				Value lhs = ((DefinitionStmt) s).getLeftOp();
				
				//DefinitionStmt(w InvokeExpr): replace rhs with 0
				if(rhs instanceof InvokeExpr){
					SootMethod m = s.getInvokeExpr().getMethod();
					SootClass c = m.getDeclaringClass();
					if(c.isPhantom()){						
						if(lhs instanceof Local){
							
							if(lhs.getType() instanceof RefLikeType){
								Stmt newStmt = Jimple.v().newAssignStmt(lhs, NullConstant.v());
								toReplace.put(s, newStmt);
								System.out.println("<KP>Replace [" + s + "] with [" + newStmt + "]");
							}else if(lhs.getType() instanceof PrimType){
								Stmt newStmt = Jimple.v().newAssignStmt(lhs, IntConstant.v(0));
								toReplace.put(s, newStmt);
								System.out.println("<KP>Replace [" + s + "] with [" + newStmt + "]");
							}						
							
						}
					}
					
				//DefinitionStmt(rhs is instance/static field): replace rhs with 0
				}else if(rhs instanceof InstanceFieldRef){
					SootClass c = ((InstanceFieldRef) rhs).getField().getDeclaringClass();
					if(c.isPhantom()){						
						if(lhs instanceof Local){
							
							if(lhs.getType() instanceof RefLikeType){
								Stmt newStmt = Jimple.v().newAssignStmt(lhs, NullConstant.v());
								toReplace.put(s, newStmt);
								System.out.println("<KP>Replace [" + s + "] with [" + newStmt + "]");
							}else if(lhs.getType() instanceof PrimType){
								Stmt newStmt = Jimple.v().newAssignStmt(lhs, IntConstant.v(0));
								toReplace.put(s, newStmt);
								System.out.println("<KP>Replace [" + s + "] with [" + newStmt + "]");
							}
							
						}
					}
				}else if(rhs instanceof StaticFieldRef){
					SootClass c = ((StaticFieldRef) rhs).getField().getDeclaringClass();
					if(c.isPhantom()){						
						if(lhs instanceof Local){
							
							if(lhs.getType() instanceof RefLikeType){
								Stmt newStmt = Jimple.v().newAssignStmt(lhs, NullConstant.v());
								toReplace.put(s, newStmt);
								System.out.println("<KP>Replace [" + s + "] with [" + newStmt + "]");
							}else if(lhs.getType() instanceof PrimType){
								Stmt newStmt = Jimple.v().newAssignStmt(lhs, IntConstant.v(0));
								toReplace.put(s, newStmt);
								System.out.println("<KP>Replace [" + s + "] with [" + newStmt + "]");
							}
							
						}
					}
						
				//DefinitionStmt(lhs is instance/static field): remove the statement
				}else if(lhs instanceof InstanceFieldRef){
					SootClass c = ((InstanceFieldRef) lhs).getField().getDeclaringClass();
					if(c.isPhantom()){
						toRemove.add(s);
						System.out.println("<KP>Remove [" + s + "]");
					}
				}else if(lhs instanceof StaticFieldRef){
					SootClass c = ((StaticFieldRef) lhs).getField().getDeclaringClass();
					if(c.isPhantom()){
						toRemove.add(s);
						System.out.println("<KP>Remove [" + s + "]");
					}
				}
			}
			
		}
		
		
		Set<Unit> keySet = toReplace.keySet();
		Iterator<Unit> iter = keySet.iterator();
		while(iter.hasNext()){
			Stmt oldStmt = (Stmt)iter.next();
			Stmt newStmt = (Stmt)toReplace.get(oldStmt);
			
			System.out.println("<KP> [" + oldStmt + "]<-->[" + newStmt + "]");
			
			body.getUnits().insertBefore(newStmt, oldStmt);
			body.getUnits().remove(oldStmt);
		}
		
		for(Unit u : toRemove){
			
			System.out.println("<KP> [" + u + "]<-->[]");
			body.getUnits().remove(u);
		}
		
		
		//dumpMethod(body);
			
	}
	
	private void dumpMethod(Body body){
		System.out.println("dump method " + body.getMethod());
		for(Unit u : body.getUnits()){
			System.out.println(u);
		}		
	}
	
	
}
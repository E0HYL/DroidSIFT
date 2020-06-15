package mySoot;

import java.util.*;

import soot.*;
import soot.jimple.*;

public class FindUncalledMethodsTransformer extends BodyTransformer{
	
	private List<String> appMethods;
	private List<String> appCalledMethods;
	
	public FindUncalledMethodsTransformer(){
		appMethods = new ArrayList<String>();
		appCalledMethods = new ArrayList<String>();
	}	
	
	@Override
	protected void internalTransform(Body body, String string, Map map) 
	{
		SootMethod method = body.getMethod();
		SootClass clazz = method.getDeclaringClass();
		if(clazz.isApplicationClass()){
			if(!appMethods.contains(method.getSignature())){
				appMethods.add(method.getSignature());
			}
		}
		Iterator iter = body.getUnits().iterator();
		while(iter.hasNext()){
			Stmt s = (Stmt)iter.next();
			if(s instanceof InvokeStmt){
				SootMethod m = s.getInvokeExpr().getMethod();
								
				SootClass c = m.getDeclaringClass();
				if(c.isApplicationClass()){
					if(!appCalledMethods.contains(m.getSignature())){
						appCalledMethods.add(m.getSignature());
					}
				}
			}else if(s instanceof DefinitionStmt){
				Value rhs = ((DefinitionStmt) s).getRightOp();
				if(rhs instanceof InvokeExpr){
					SootMethod m = s.getInvokeExpr().getMethod();
					
					SootClass c = m.getDeclaringClass();
					if(c.isApplicationClass()){
						if(!appCalledMethods.contains(m.getSignature())){
							appCalledMethods.add(m.getSignature());
						}
					}
				}
			}
		}
	}
	
	public List<String> getAppMethods(){
		return appMethods;
	}
	
	public List<String> getCalledMethods(){
		return appCalledMethods;
	}

}
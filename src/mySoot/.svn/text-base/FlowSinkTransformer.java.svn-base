package mySoot;

import java.util.*;

import soot.jimple.*;
import soot.*;

public class FlowSinkTransformer extends BodyTransformer {
	
	private List<String> m_Classes;	
	private LinkedHashMap<String, String> mClassToMethod;

	public FlowSinkTransformer() {
		m_Classes = new ArrayList<String>();		
		mClassToMethod  = new LinkedHashMap<String, String>();
	}

	@Override
	protected void internalTransform(Body body, String string, Map map) {
		
		SootMethod method = body.getMethod();
		
		Iterator iter = body.getUnits().iterator();
		while(iter.hasNext()){
			Stmt s = (Stmt)iter.next();	
			if(s instanceof InvokeStmt){
				if((s.getInvokeExpr()).getMethod().getSignature().equals(AnalyzerMain.INFO_SINK)){
					SootClass soot_class = method.getDeclaringClass();
					if(!soot_class.isPhantom()){
						if(MyConstants.DEBUG_INFO)
							System.out.println("adding sink class: " + soot_class.getName() + " |" + method);
						m_Classes.add(soot_class.getName());
						mClassToMethod.put(soot_class.getName()+"|"+method.getSignature(),
								method.getSubSignature());
					}
				}
			}else if(s instanceof DefinitionStmt){
				Value rhs = ((DefinitionStmt) s).getRightOp();
				if(rhs instanceof InvokeExpr){
					if(((InvokeExpr) rhs).getMethod().getSignature().equals(AnalyzerMain.INFO_SINK)){
						SootClass soot_class = method.getDeclaringClass();
						if(!soot_class.isPhantom()){
							if(MyConstants.DEBUG_INFO)
								System.out.println("adding sink class: " + soot_class.getName() + " |" + method);
							m_Classes.add(soot_class.getName());
							mClassToMethod.put(soot_class.getName()+"|"+method.getSignature(),
									method.getSubSignature());
						}
					}
				}				
			}
		}
	
	}
	
	private boolean equalsMethod(String sig1, String sig2){
		if(sig1.equals(sig2)){
			return true;
		}
		return false;
	}

	public List<String> getClasses() {
		return m_Classes;
	}
		
	public LinkedHashMap<String, String> getClassToMethod(){
		return this.mClassToMethod;
	}

}

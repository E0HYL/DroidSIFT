package mySoot;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import soot.Body;
import soot.BodyTransformer;
import soot.Scene;
import soot.SootMethod;
import soot.Unit;
import soot.Value;
import soot.jimple.DefinitionStmt;
import soot.jimple.GotoStmt;
import soot.jimple.IdentityStmt;
import soot.jimple.IfStmt;
import soot.jimple.InvokeExpr;
import soot.jimple.InvokeStmt;
import soot.jimple.Jimple;
import soot.jimple.JimpleBody;
import soot.jimple.ReturnVoidStmt;
import soot.jimple.Stmt;
import soot.jimple.StringConstant;

public class TraceTransformer extends BodyTransformer{
	
	@Override
	protected void internalTransform(Body body, String string, Map map) {
		SootMethod method = body.getMethod();
		
		LinkedHashMap<List<Unit>, Stmt> toInstrumentAfter = new LinkedHashMap<List<Unit>, Stmt>();
		LinkedHashMap<List<Unit>, Stmt> toInstrumentBefore = new LinkedHashMap<List<Unit>, Stmt>();
		LinkedHashMap<Stmt, Stmt> toInstrumentAt = new LinkedHashMap<Stmt, Stmt>();
		
		//JimpleBody body = (JimpleBody) method.retrieveActiveBody();
		Iterator it = body.getUnits().iterator();
		
		while (it.hasNext()) {
			Stmt s = (Stmt) it.next();
			
			if(!(s instanceof IdentityStmt)){
				
				if(s instanceof DefinitionStmt){
					Value rhs = ((DefinitionStmt) s).getRightOp();
					if(rhs instanceof InvokeExpr){
						if(((InvokeExpr)rhs).getMethod().getSignature().equals(
							"<org.apache.http.impl.client.AbstractHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>")
							|| ((InvokeExpr)rhs).getMethod().getSignature().equals("<org.apache.http.HttpResponse: org.apache.http.StatusLine getStatusLine()>")
						){
							Stmt log = logStmt("d", method.getName(), s.toString());
						
							toInstrumentAt.put(log, s);
							
							continue;
						}
					}
				}else if(s instanceof InvokeStmt){
					if(s.getInvokeExpr().getMethod().getSignature().equals("<org.apache.http.StatusLine: int getStatusCode()>")){
						Stmt log = logStmt("d", method.getName(), s.toString());
							
						toInstrumentAt.put(log, s);
							
						continue;
					}
				}else if(s instanceof ReturnVoidStmt){
					Stmt log = logStmt("d", method.getName(), s.toString());
					List<Unit> unitsToAdd = new LinkedList<Unit>();
					unitsToAdd.add(log);
						
					toInstrumentBefore.put(unitsToAdd, s);
						
					continue;
				}else if(s instanceof IfStmt){
					Stmt log = logStmt("d", method.getName(), s.toString());
										
					List<Unit> unitsToAdd = new LinkedList<Unit>();
					unitsToAdd.add(log);
						
					toInstrumentBefore.put(unitsToAdd, s);
						
					continue;
				}else if(s instanceof GotoStmt){
					Stmt log = logStmt("d", method.getName(), s.toString());
								
					List<Unit> unitsToAdd = new LinkedList<Unit>();
					unitsToAdd.add(log);
						
					toInstrumentBefore.put(unitsToAdd, s);
						
					continue;
				}
				Stmt log = logStmt("d", method.getName(), s.toString());
									
				List<Unit> unitsToAdd = new LinkedList<Unit>();
				unitsToAdd.add(log);
				toInstrumentAfter.put(unitsToAdd, s);
				
			}			
		}
		
		Set<List<Unit>> keySet = toInstrumentAfter.keySet();
		Iterator<List<Unit>> keyIterator = keySet.iterator();
		while (keyIterator.hasNext()) {

			List<Unit> toAdd = keyIterator.next();
			Stmt s = (Stmt) toInstrumentAfter.get(toAdd);
							
			body.getUnits().insertAfter(toAdd, s);
		}
		
		Set<List<Unit>> keySet1 = toInstrumentBefore.keySet();
		Iterator<List<Unit>> keyIterator1 = keySet1.iterator();
		while (keyIterator1.hasNext()) {

			List<Unit> toAdd = keyIterator1.next();
			Stmt s = (Stmt) toInstrumentBefore.get(toAdd);

			body.getUnits().insertBefore(toAdd, s);
		}
		
		Set<Stmt> keySet2 = toInstrumentAt.keySet();
		Iterator<Stmt> keyIterator2 = keySet2.iterator();
		while (keyIterator2.hasNext()) {

			Stmt toReplace = keyIterator2.next();
			Stmt s = (Stmt) toInstrumentAt.get(toReplace);

			body.getUnits().insertBefore(toReplace, s);
			body.getUnits().remove(s);
		}
	}
	
	//type: d/v/w/i/e
	private Stmt logStmt(String type, String tag, String msg){
			
		SootMethod logX = Scene.v().getMethod("<android.util.Log: int " + type + "(java.lang.String,java.lang.String)>");
		Stmt log = Jimple.v().newInvokeStmt(Jimple.v().newStaticInvokeExpr(
			logX.makeRef(), StringConstant.v(tag), StringConstant.v(msg)));

		return log;		
	}

}

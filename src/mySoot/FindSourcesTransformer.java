package mySoot;

import java.util.*;

import mySoot.util.AndroidSourceSinkSummary;

import soot.*;
import soot.jimple.*;

/*
 * This transformer adds every source and sink statement in the program into sourcesVector and sinksVector
 */
public class FindSourcesTransformer extends BodyTransformer {
	
	private Vector<String> sourcesVector = new Vector<String>();
	private Vector<String> sinksVector = new Vector<String>();
	
	private LinkedHashMap<String, Integer> sources = new LinkedHashMap<String, Integer>();
	private LinkedHashMap<String, Integer> sinks = new LinkedHashMap<String, Integer>();
	
	static Vector<String> SRCS = new Vector<String>();
	static Vector<String> SINKS = new Vector<String>();
	
	// Store all the sources and sinks from MyConstants to SRCS and SINKS
	public FindSourcesTransformer(){
		
		/*
		for(int i=0;i<MyConstants.SOURCES.length;i++){
			SRCS.add(MyConstants.SOURCES[i]);
		}
		
		for(int i=0;i<MyConstants.SINKS.length;i++){
			SINKS.add(MyConstants.SINKS[i]);
		}
		*/
		
		SRCS.addAll(AndroidSourceSinkSummary.SOURCES);
		SINKS.addAll(AndroidSourceSinkSummary.SINKS);
		
		if(MyConstants.DEBUG_INFO)
			System.out.println("[Sinks initialization]: " + SINKS);
	}
	
	@Override
	protected void internalTransform(Body body, String string, Map map) {
		SootMethod method = body.getMethod();
		SootClass clazz = method.getDeclaringClass();
		
		String subsignature = method.getSubSignature();
		if(SRCS.contains(subsignature)){
			String signature = AndroidSourceSinkSummary.callbackSourceSubSignatureMap.get(subsignature);
			if(clazz.implementsInterface(signature)){
				if(!clazz.isPhantom()){
					if(!sourcesVector.contains(subsignature)){
						sourcesVector.add(subsignature);
						if(MyConstants.DEBUG_INFO)
							System.out.println("source added: " + signature + "[" + subsignature + "]");
					}
				}
			}
		}
		
		Iterator iter = body.getUnits().iterator();
		
		//System.out.println("METHOD:" + method);
		
		// For every unit in the body
		while(iter.hasNext()){
			Stmt s = (Stmt)iter.next();
			//System.out.println(s);
			
			//if statement s is a definition statement then check if the rhs is invoke expression or instance field
			if(s instanceof DefinitionStmt){
				Value rhs = ((DefinitionStmt) s).getRightOp();
				if(rhs instanceof InvokeExpr){
					String signature = ((InvokeExpr) rhs).getMethod().getSignature();
					if(SRCS.contains(signature)){
						SootClass soot_class = method.getDeclaringClass();
						if(!soot_class.isPhantom()){
							if(!sourcesVector.contains(signature)){
								sourcesVector.add(signature);
								if(MyConstants.DEBUG_INFO)
									System.out.println("source added: " + signature);
							}
						}
					}
					
					if(SINKS.contains(signature)){
						//System.out.println("[SINK]signature: " + signature);
						SootClass soot_class = method.getDeclaringClass();
						if(!soot_class.isPhantom()){
							if(!sinksVector.contains(signature)){
								sinksVector.add(signature);
								if(MyConstants.DEBUG_INFO)
									System.out.println("sink added: " + signature);
							}
						}
					}
				}else if(rhs instanceof InstanceFieldRef){
					String signature = ((InstanceFieldRef) rhs).getField().getSignature();
					//System.out.println("[SOURCE] " + signature);
					if(SRCS.contains(signature)){
						SootClass soot_class = method.getDeclaringClass();
						if(!soot_class.isPhantom()){
							if(!sourcesVector.contains(signature)){
								sourcesVector.add(signature);
								if(MyConstants.DEBUG_INFO)
									System.out.println("source added: " + signature);
							}
						}
					}
				}
			
			// if statement s is a invoke statement
			}else if(s instanceof InvokeStmt){
				
				//System.out.println("invoke!");
				
				String signature = s.getInvokeExpr().getMethod().getSignature();
				//System.out.println("sig:" + signature);
				//System.out.println("sig2:" + s.getInvokeExpr().getMethod());
				//System.out.println("sinks:" + SINKS);
				
				if(SRCS.contains(signature)){
					SootClass soot_class = method.getDeclaringClass();
					if(!soot_class.isPhantom()){
						if(!sourcesVector.contains(signature)){
							sourcesVector.add(signature);
							if(MyConstants.DEBUG_INFO)
								System.out.println("source added: " + signature);
						}
					}
				}
				
				if(SINKS.contains(signature)){
					//System.out.println("[SINK]signature: " + signature);					
					
					SootClass soot_class = method.getDeclaringClass();
					if(!soot_class.isPhantom()){
						
						if(!sinksVector.contains(signature)){
							
							sinksVector.add(signature);
							if(MyConstants.DEBUG_INFO)
								System.out.println("sink added: " + signature);
						}
					}
				}
			}
		}
	}
	
	public LinkedHashMap<String, Integer> getSources(){
		
		int count = 0;
		for(String source : sourcesVector){
			sources.put(source, new Integer(count));
			count++;
		}		
		
		return this.sources;
	}
	
	public LinkedHashMap<String, Integer> getSinks(){
		
		int count = 0;
		for(String sink : sinksVector){
			sinks.put(sink, new Integer(count));
			count++;
		}		
		
		return this.sinks;
	}
	
	

}

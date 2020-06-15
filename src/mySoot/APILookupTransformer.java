package mySoot;

import java.util.*;

import soot.*;
import soot.jimple.*;
import soot.toolkits.graph.BriefUnitGraph;
import soot.toolkits.graph.ExceptionalUnitGraph;
import soot.toolkits.graph.UnitGraph;

/*
 * APILookupTransformer extends BodyTransformer, and is intended to collect all the APIs called in a program.
 */
public class APILookupTransformer extends BodyTransformer{
	
	//A HashMap to store analysis result. Key is the caller, while Value is the list of APIs that are called.
	private LinkedHashMap<String, List<String>> methodToAPIs = new LinkedHashMap<String, List<String>>();
	private static int totalAPICallCount = 0;
	private static int totalMethodCount = 0;
	
	//Override abstract method internalTransform. The first parameter is the instance of a method body. 
	protected void internalTransform(Body body, String string, Map map) {
		
		totalMethodCount++;
		
		//LinkedHashMap<Stmt, Stmt> toInsertBefore = new LinkedHashMap<Stmt, Stmt>();
		
		//SootMethod instance associated with a method body
		SootMethod method = body.getMethod();
		System.out.println("Analyzing method: " + method);
		
		ExceptionalUnitGraph eug = new ExceptionalUnitGraph(body);
		BriefUnitGraph bug = new BriefUnitGraph(body);
		
		System.out.println("BEGIN [CFG] - " + method + "\n");
		dumpCFGinDot(bug);
		System.out.println("END [CFG]\n");
		
		
        MyReachingDefinition mrd = new MyReachingDefinition(eug);
        
        System.out.println("BEGIN [Reaching Definition Analysis] - " + method + "\n");
		dumpReachingDefs(mrd, body);
		System.out.println("END [Reaching Definition Analysis]\n");
		
		List<String> apis = new ArrayList<String>();	
		
		//Iterator of the statements in the method body
		Iterator<Unit> iter = body.getUnits().iterator();
		
		//Iterate all statements and record any API invocation statement.
		while(iter.hasNext()){
			
			Stmt s = (Stmt)iter.next();
			//System.out.println("Method:" + method + "[Stmt:" + s);
			
			//Check if current statement is an InvokeStmt(i.e. invocation statement without a return value)
			if(s instanceof InvokeStmt){
				
				//Get the method invoked by the statement.
				SootMethod m = s.getInvokeExpr().getMethod();
				
				//Get the class where method m is declared
				SootClass c = m.getDeclaringClass();
				
				//Check if the declaring class is defined in the Application under analysis
				//If not, method m is an API
				if(!c.isApplicationClass()){
					
					totalAPICallCount++;
					/*
					if(!apis.contains(m.getSignature()))
						apis.add(m.getSignature());
					*/
					
					String parameters = "(";
					for(Value v : s.getInvokeExpr().getArgs()){
						if(v instanceof Constant){
							parameters += v.toString() + "{C},";
						}else{
							
							List<String> concreteValues = new ArrayList<String>();
							String annotation = lookForConcreteValue(s, v, mrd, concreteValues);
							
							if(!concreteValues.isEmpty()){
								if(concreteValues.size()==1){
									parameters += concreteValues.get(0) + "{" + annotation + "},";
								}else{
									parameters += "Phi(";
									for(int i=0;i<concreteValues.size()-1;i++){
										parameters += concreteValues.get(i) + ",";
									}
									parameters += concreteValues.get(concreteValues.size()-1)
											+ ")" + "{" + annotation + "},";;
								}
							}else{
								parameters += v.getType().toString() + "{" + annotation + "},";
							}
							
						}
					}
					if(parameters.endsWith(",")){
						parameters = parameters.substring(0, (parameters.length()-1));
					}
					parameters += ")";
					
					apis.add(m.getDeclaringClass().getName()+ "." + m.getName() + parameters);
					
					
					//Create a new statement which invokes Log.d() 
					//Stmt toAdd = logDStmt(method.getSignature(), m.getSignature());
					
					//Put the instrument code into a hashtable, where the key is the API invocation statement.
					//toInsertBefore.put(s, toAdd);
					
				}
				
			//Check if current statement is a DefinitionStmt with right-handed side being an InvokeExpr
			//(i.e. invocation statement with a return value)
			}else if(s instanceof DefinitionStmt){
				Value rhs = ((DefinitionStmt) s).getRightOp();
				if(rhs instanceof InvokeExpr){
					SootMethod m = s.getInvokeExpr().getMethod();
					SootClass c = m.getDeclaringClass();
					if(!c.isApplicationClass()){
						
						totalAPICallCount++;
						/*
						if(!apis.contains(m.getSignature()))
							apis.add(m.getSignature());
						*/
						
						String parameters = "(";
						for(Value v : s.getInvokeExpr().getArgs()){
							if(v instanceof Constant){
								parameters += v.toString() + "{C},";
							}else{
								List<String> concreteValues = new ArrayList<String>();
								String annotation = lookForConcreteValue(s, v, mrd, concreteValues);
								
								if(!concreteValues.isEmpty()){
									if(concreteValues.size()==1){
										parameters += concreteValues.get(0) + "{" + annotation + "},";
									}else{
										parameters += "Phi(";
										for(int i=0;i<concreteValues.size()-1;i++){
											parameters += concreteValues.get(i) + ",";
										}
										parameters += concreteValues.get(concreteValues.size()-1)
												+ ")" + "{" + annotation + "},";;
									}
								}else{
									parameters += v.getType().toString() + "{" + annotation + "},";
								}
							}
						}
						if(parameters.endsWith(",")){
							parameters = parameters.substring(0, (parameters.length()-1));
						}
						parameters += ")";
						
						apis.add(m.getDeclaringClass().getName()+ "." + m.getName() + parameters);
						//Stmt toAdd = logDStmt(method.getSignature(), m.getSignature());
						//toInsertBefore.put(s, toAdd);
					}
				}				
			}
		}
		
		//Store the analysis result into the HashMap
		methodToAPIs.put(method.getSignature(), apis);
		
		/*
		Set<Stmt> keySet = toInsertBefore.keySet();
		Iterator<Stmt> iterStmt = keySet.iterator();
		while(iterStmt.hasNext()){
			Stmt point = iterStmt.next();
			Stmt toAdd = toInsertBefore.get(point);
			
			//Call insertBefore API to insert instrument code into the right point.
			body.getUnits().insertBefore(toAdd, point);
		}
		*/
	}
	
	//return an annotation for a specific parameter
	//C: constant | value
	//P: parameter/this reference | type
	//SF: static field | field
	//IF: instance field | field
	//LO: local object | type
	//RA: return value of an API | method
	//RF: return value of a function call | method
	//RB: return value of a binary operation | type
	//E: exception | type
	private String lookForConcreteValue(Stmt s, Value var, MyReachingDefinition mrd, List<String> concreteValues){
		
		String annotation = "";
		
		if(var instanceof Constant){
			annotation = attach(annotation, "C");			
			if(!concreteValues.contains(var.toString())){
				concreteValues.add(var.toString());
			}			
			return annotation;			
		}
		
		if(var instanceof Local){
			
			Stack<Stmt> useStack = new Stack<Stmt>();
			useStack.push(s);
			
			Stack<Local> localStack = new Stack<Local>();
			localStack.push((Local)var);
			
			while(!useStack.isEmpty()){
				Stmt use = useStack.pop();
				Local local = localStack.pop();
				
				List<Unit> defs = mrd.getDefsOfAt(local, use);
				
				//System.out.println("Use:" + use + "[Local:" + local + "[Defs:" + defs);
				
				for(Unit def : defs){
					
					boolean isRecursiveDefine = false;
					List<ValueBox> useBox = def.getUseBoxes();
					for(ValueBox ub : useBox){
						Value u = ub.getValue();
						if(u instanceof Local){
							List<Unit> defsOfU = mrd.getDefsOfAt((Local)u, def);
							if(defsOfU.contains(use)){
								isRecursiveDefine = true;
							}
						}
					}
					
					if(isRecursiveDefine){
						continue;
					}
					
					if(def instanceof DefinitionStmt){
						Value rhs = ((DefinitionStmt) def).getRightOp();
						if(rhs instanceof Constant){							
							annotation = attach(annotation, "C");							
							if(!concreteValues.contains(rhs.toString())){
								concreteValues.add(rhs.toString());
							}							
						}else if(rhs instanceof Local){							
							useStack.push((Stmt)def);
							localStack.push((Local)rhs);							
						}else if(rhs instanceof UnopExpr){							
							Value op = ((UnopExpr) rhs).getOp();
							if(op instanceof Local){
								useStack.push((Stmt)def);
								localStack.push((Local)op);
							}
						}else if(rhs instanceof CastExpr){							
							Value op = ((CastExpr) rhs).getOp();
							if(op instanceof Local){
								useStack.push((Stmt)def);
								localStack.push((Local)op);
							}
						}else if(rhs instanceof ArrayRef){							
							Value base = ((ArrayRef) rhs).getBase();
							if(base instanceof Local){
								useStack.push((Stmt)def);
								localStack.push((Local)base);
							}
						}else if(rhs instanceof BinopExpr){
							annotation = attach(annotation, "RB");
						}else if(rhs instanceof ParameterRef){
							annotation = attach(annotation, "P");
						}else if(rhs instanceof ThisRef){
							annotation = attach(annotation, "P");
						}else if(rhs instanceof InstanceFieldRef){
							annotation = attach(annotation, "IF");
							if(!concreteValues.contains(((InstanceFieldRef) rhs).getField().toString())){
								concreteValues.add(((InstanceFieldRef) rhs).getField().toString());
							}
						}else if(rhs instanceof StaticFieldRef){
							annotation = attach(annotation, "SF");
							if(!concreteValues.contains(((StaticFieldRef) rhs).getField().toString())){
								concreteValues.add(((StaticFieldRef) rhs).getField().toString());
							}
						}else if(rhs instanceof NewExpr){
							annotation = attach(annotation, "LO");
						}else if(rhs instanceof NewArrayExpr){
							annotation = attach(annotation, "LO");
						}else if(rhs instanceof InvokeExpr){							
							SootMethod m = ((InvokeExpr) rhs).getMethod();
							SootClass c = m.getDeclaringClass();
							if(c.isApplicationClass()){
								annotation = attach(annotation, "RF");
								if(!concreteValues.contains(m.toString())){
									concreteValues.add(m.toString());
								}
							}else{
								annotation = attach(annotation, "RA");
								if(!concreteValues.contains(m.toString())){
									concreteValues.add(m.toString());
								}
							}
						}else if(rhs instanceof CaughtExceptionRef){
							annotation = attach(annotation, "E");
						}
					}//end if
				}//end for
			}//end while
			
			
		}else{
			System.err.println("Unhandled type: " + var.getClass());
			System.exit(-1);
		}		
		
		return annotation;
	}
	
	private String attach(String annotation, String typeTag){
		
		String newAnnotation = annotation;
		
		if(!newAnnotation.contains(typeTag)){
			if(newAnnotation.isEmpty()){
				newAnnotation = typeTag;
			}else{
				newAnnotation += ":" + typeTag;
			}
		}
		
		return newAnnotation;
	}
	
	
	
	public LinkedHashMap<String, List<String>> getMethodToAPIs(){
		return this.methodToAPIs;
	}
	
	//Create a statement to invoke Log.d()
	private Stmt logDStmt(String tag, String msg){
			
		//Get a SootMethod instance of Log.d(), by providing its signature to Scene.v().getMethod()
		SootMethod logD = Scene.v().getMethod("<android.util.Log: int d(java.lang.String,java.lang.String)>");
		
		//Create a new InvokeStmt, which consists of a StaticInvokeExpr. The latter takes three parameters:
		//a reference to Log.d() method and two String constants as the arguments for Log.d()
		Stmt log = Jimple.v().newInvokeStmt(Jimple.v().newStaticInvokeExpr(
				logD.makeRef(), StringConstant.v(tag), StringConstant.v(msg)));
		
		return log;		
	}
	
	private void dumpReachingDefs(MyReachingDefinition mrd, Body body){
		
		//System.out.println("MRD: " + body.getMethod());
		
		Iterator<Unit> it = body.getUnits().iterator();
		while (it.hasNext()) {
			Stmt s = (Stmt) it.next();
			System.out.println(s);
			
			Iterator<ValueBox> usesIt = s.getUseBoxes().iterator();
			while (usesIt.hasNext()) {
				ValueBox vbox = (ValueBox) usesIt.next();
				if (vbox.getValue() instanceof Local) {
					Local l = (Local) vbox.getValue();
					System.out.print(l + " : ");

					Iterator<Unit> rDefsIt = mrd.getDefsOfAt(l, s).iterator();
					while(rDefsIt.hasNext()){
						Stmt def = (Stmt)rDefsIt.next();
						System.out.print(def);
						if(rDefsIt.hasNext())
							System.out.print(" | ");						
					}
					
					System.out.println();
				}
			}
			
			System.out.println();
		}
	}
	
	private void dumpCFGinDot(UnitGraph graph){
		String TAB = "  ";
		System.out.println("digraph G {");
		Iterator<Unit> iter = graph.iterator();
		while(iter.hasNext()){
			Stmt s = (Stmt)(iter.next());
			List<Unit> succs = graph.getSuccsOf(s);
			for(Unit succ : succs){
				String sprime = s.toString().replace('\"', '\'');
				String succprime = succ.toString().replace('\"', '\'');
				System.out.println(TAB + "\"" + sprime + "\" -> \"" + succprime + "\"");
			}
		}
		System.out.println("}");
	}
	
	public int getAverageAPICallCount(){
		return totalAPICallCount/totalMethodCount;
	}

}

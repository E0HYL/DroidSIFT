package mySoot;

import mySoot.util.*;
import soot.*;
import soot.jimple.*;
import soot.toolkits.graph.*;
import java.util.*;


public class APIGraph {
	
	public static TaintTag API_TAG = new TaintTag(0xffff);
	public static TaintTag FUNC_TAG = new TaintTag(0xfffe);
	public static TaintTag COND_TAG = new TaintTag(0xfffd);
	
	public static int IsSinkAPI = 1;
	public static int IsSourceAPI = 2;
	
	private List<APIGraphNode> apiGraph;
	private ExceptionalUnitGraph cfg;
	private MyReachingDefinition mrd;
	private TaintTag tag;
	
	public APIGraph(ExceptionalUnitGraph cfg, MyReachingDefinition mrd, TaintTag tag){
		this.cfg = cfg;
		this.mrd = mrd;
		this.apiGraph = new ArrayList<APIGraphNode>();
		this.tag = tag;
		
	}
	
	public APIGraph(){
		this.cfg = null;
		this.mrd = null;
		this.apiGraph = new ArrayList<APIGraphNode>();
		this.tag = null;
	}
	
	public APIGraph clone(){
		
		APIGraph clone = new APIGraph();
		
		LinkedHashMap<APIGraphNode, APIGraphNode> oldToNew = new LinkedHashMap<APIGraphNode, APIGraphNode>();
		
		for(APIGraphNode oldNode : this.apiGraph){
			APIGraphNode newNode = oldNode.clone();
			clone.apiGraph.add(newNode);
			oldToNew.put(oldNode, newNode);
		}
		
		for(APIGraphNode oldNode : this.apiGraph){
			
			APIGraphNode newNode = oldToNew.get(oldNode);
			
			for(APIGraphNode oldPred : oldNode.getPredecessors()){
				APIGraphNode newPred = oldToNew.get(oldPred);
				newNode.addPred(newPred);
			}
			
			for(APIGraphNode oldSucc : oldNode.getSuccessors()){
				APIGraphNode newSucc = oldToNew.get(oldSucc);
				newNode.addSucc(newSucc);
			}
		}
		
		return clone;
	}
	
	public List<APIGraphNode> getAPIGraph(){
		return this.apiGraph;
	}
	
	public List<APIGraphNode> getSuccessors(Stmt s, Stmt callsite){		
		List<APIGraphNode> succs = new ArrayList<APIGraphNode>();		
		for(APIGraphNode node : this.apiGraph){
			if(node.getStmt().equals(s) && node.getCallsite().equals(callsite)){
				succs.addAll(node.getSuccessors());
			}
		}		
		return succs;
	}
	
	public List<APIGraphNode> getPredecessors(Stmt s, Stmt callsite){
		List<APIGraphNode> preds = new ArrayList<APIGraphNode>();
		for(APIGraphNode node : this.apiGraph){
			if(node.getStmt().equals(s) && node.getCallsite().equals(callsite)){
				preds.addAll(node.getPredecessors());
			}
		}
		return preds;
	}
	
	public void addNode(APIGraphNode node){
		this.apiGraph.add(node);
	}
	
	public void deleteNode(APIGraphNode node){
		adjustEdges(node);
		removeNode(node);		
	}

	private void removeNode(APIGraphNode node){
		this.apiGraph.remove(node);		
	}
	
	private void adjustEdges(APIGraphNode node){
		Vector<APIGraphNode> predecessors = node.getPredecessors();
		Vector<APIGraphNode> successors = node.getSuccessors();
				
		for(APIGraphNode predNode : predecessors){
			
			predNode.removeSucc(node);
			
			for(APIGraphNode succ : successors){
				if(!succ.equals(node))
					predNode.addSucc(succ);
			}
		}
		
		for(APIGraphNode succNode : successors){
			
			succNode.removePred(node);
			
			for(APIGraphNode pred : predecessors){
				if(!pred.equals(node))
					succNode.addPred(pred);
			}
		}
	}
	
	private void annotateGraph(){
		
		for(APIGraphNode node : this.apiGraph){
			Stmt s = node.getStmt();			
			
			if(s instanceof InvokeStmt){
				SootMethod m = s.getInvokeExpr().getMethod();
				SootClass c = m.getDeclaringClass();
				
				if(!c.isApplicationClass()){
					
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
					
					node.setAnnotation(m.getDeclaringClass().getName()+ "." + m.getName() + parameters);
					
										
				}
				
			}else if(s instanceof DefinitionStmt){
				Value rhs = ((DefinitionStmt) s).getRightOp();
				if(rhs instanceof InvokeExpr){
					SootMethod m = s.getInvokeExpr().getMethod();
					SootClass c = m.getDeclaringClass();
					if(!c.isApplicationClass()){
						
						
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
						
						node.setAnnotation(m.getDeclaringClass().getName()+ "." + m.getName() + parameters);
						
					}
				}				
			}
			
			else if(s.branches()){
				System.out.println(s + " is a branch statement.");
				node.setAnnotation("branch");
			}
			
		}

	}
	
	public void buildAPIGraph(){
		
		initAPIGraphFromCFG();		
		removeNonInvokeNode();
		//drawDataDependency();
		annotateGraph();
	}
	
	private void drawDataDependency(){
		
		System.out.println("Show data dependency...");
		LinkedHashMap<APIGraphNode, List<APIGraphNode>> removedEdges = new LinkedHashMap<APIGraphNode, List<APIGraphNode>>();
		LinkedHashMap<APIGraphNode, List<APIGraphNode>> addedEdges = new LinkedHashMap<APIGraphNode, List<APIGraphNode>>();
		
		
		for(APIGraphNode node : this.apiGraph){
			
			List<APIGraphNode> successors = node.getSuccessors();
			for(APIGraphNode succ : successors){
				
				boolean isDependent = false;
				
				List<ValueBox> boxesOfNode = node.getStmt().getUseAndDefBoxes();
				List<ValueBox> boxesOfSucc = succ.getStmt().getUseAndDefBoxes();
				for(ValueBox boxOfNode : boxesOfNode){
					if(isDependent)break;
					Value valueOfNode = boxOfNode.getValue();
					if(valueOfNode instanceof Local){
						for(ValueBox boxOfSucc : boxesOfSucc){
							if(isDependent)break;
							Value valueOfSucc = boxOfSucc.getValue();
							if(valueOfSucc instanceof Local){
								if(valueOfSucc == valueOfNode){
									isDependent = true;	
								}
							}
						}
					}
				}
				
				if(!isDependent){
					
					System.out.println("adding removed edges for source node " + node.getStmt());
					if(removedEdges.containsKey(node)){
						List<APIGraphNode> removedSuccs = removedEdges.get(node);
						if(!removedSuccs.contains(succ)){
							removedSuccs.add(succ);
						}
					}else{
						List<APIGraphNode> removedSuccs = new ArrayList<APIGraphNode>();
						removedSuccs.add(succ);
						removedEdges.put(node, removedSuccs);
					}
					
					
					Stack<APIGraphNode> stack = new Stack<APIGraphNode>();
					Vector<APIGraphNode> history = new Vector<APIGraphNode>();
					stack.push(succ);
					history.add(succ);
					
					while(!stack.isEmpty()){
						APIGraphNode current = stack.pop();	
						
						List<APIGraphNode> currSuccs = current.getSuccessors();
						for(APIGraphNode currSucc : currSuccs){
							
							System.out.println("node:" + node.getStmt() + "| currSucc:" + currSucc.getStmt());
							
							boolean dependencyFound = false;
						
							List<ValueBox> boxesOfCurrSucc = currSucc.getStmt().getUseAndDefBoxes();
							for(ValueBox boxOfNode : boxesOfNode){
								if(dependencyFound)break;
								Value valueOfNode = boxOfNode.getValue();
								if(valueOfNode instanceof Local){
									for(ValueBox boxOfCurrSucc : boxesOfCurrSucc){
										if(dependencyFound)break;
										Value valueOfCurrSucc = boxOfCurrSucc.getValue();
										if(valueOfCurrSucc instanceof Local){
											if(valueOfCurrSucc == valueOfNode){
												
												if(addedEdges.containsKey(node)){
													List<APIGraphNode> addedSuccs = addedEdges.get(node);
													if(!addedSuccs.contains(currSucc)){
														addedSuccs.add(currSucc);
													}
												}else{
													List<APIGraphNode> addedSuccs = new ArrayList<APIGraphNode>();
													addedSuccs.add(currSucc);
													addedEdges.put(node, addedSuccs);
												}

												dependencyFound = true;
												System.out.println("found new dependency!");
											}
										}
									}
								}
							}
							
							if(!dependencyFound){
								if(!history.contains(currSucc)){
									stack.push(currSucc);
									history.add(currSucc);
								}
							}
						
						}
					}
				}
			}
			
			
		}
		
		Set<APIGraphNode> removedKeySet = removedEdges.keySet();
		Iterator<APIGraphNode> removedIter = removedKeySet.iterator();
		while(removedIter.hasNext()){
			APIGraphNode src = removedIter.next();
			List<APIGraphNode> dests = removedEdges.get(src);
			for(APIGraphNode dest : dests){
				src.removeSucc(dest);
				dest.removePred(src);
			}
		}
		
		Set<APIGraphNode> addedKeySet = addedEdges.keySet();
		Iterator<APIGraphNode> addedIter = addedKeySet.iterator();
		while(addedIter.hasNext()){
			APIGraphNode src = addedIter.next();
			List<APIGraphNode> dests = addedEdges.get(src);
			for(APIGraphNode dest : dests){
				src.addSucc(dest);
				dest.addPred(src);
			}
		}
	}
	
	public void dumpAPIGraphEdgeList(String log, SootMethod method){
		
		LinkedHashMap<APIGraphNode, Integer> nodeToIndex = new LinkedHashMap<APIGraphNode, Integer>();
		int index = 0;
		for(APIGraphNode node : this.apiGraph){
			nodeToIndex.put(node, new Integer(index));
			index++;
		}
		
		Log.dumpln(log, "Graph" + method + "{");
		Log.dumpln(log, "  Nodes{");
		Set<APIGraphNode> keySet = nodeToIndex.keySet();
		Iterator<APIGraphNode> iter = keySet.iterator();
		while(iter.hasNext()){
			APIGraphNode node = iter.next();
			int ind = nodeToIndex.get(node).intValue();
			Log.dumpln(log, "    " + ind + ":" + node.getAnnotation());
					//+ ":" + node.getStmt());
		}
		Log.dumpln(log, "  }\n");
		
		Log.dumpln(log, "  Edges{");
		for(APIGraphNode node : this.apiGraph){
			int pred = nodeToIndex.get(node).intValue();
			List<APIGraphNode> succNodes = node.getSuccessors();
			for(APIGraphNode succNode : succNodes){
				Log.dumpln(log, "    " + pred + "->" + nodeToIndex.get(succNode).intValue());
			}
		}
		Log.dumpln(log, "  }");
		
		Log.dumpln(log, "}\n");
	}
	
	//dump the subgraph related to sensitive API in the graph
	public void dumpSensitiveAPISubGraph(int level, LinkedHashMap<String, Integer> indexToMethodName)
	{
		if(level < 1)
			return;
		
		for(APIGraphNode node : this.apiGraph)
		{
			Stmt st = node.getStmt();
			if(!st.containsInvokeExpr())
				return;
			
			String sig = st.getInvokeExpr().getMethod().getSignature();
			
			int ret = MatchSinksAndSources(sig);
			
			//if the node is a source API, then trace down to 'level' and dump the subgraph
			if(ret == IsSourceAPI)
			{
				//OK. Naming is a bit misleading here. 
				//'nodeStack' is used to store current level nodes.
				//'levelStack' is used to store next level nodes.
				Stack<APIGraphNode> nodeStack = new Stack<APIGraphNode>();
				Stack<APIGraphNode> levelStack = new Stack<APIGraphNode>();
				nodeStack.push(node);
				
				Log.dumpln(AnalyzerMain.SENSITIVEAPIDUMP_DOT, "digraph G {");
				
				int i = 0;
				while(!nodeStack.isEmpty())
				{
					APIGraphNode n = nodeStack.pop();
					
					Vector<APIGraphNode> successors = n.getSuccessors();
					levelStack.addAll(successors);
					
					if(nodeStack.isEmpty() && i < level)
					{
						nodeStack.addAll(levelStack);
						levelStack.clear();
						i++;
					}
					
					SootMethod nodeMethod = n.getStmt().getInvokeExpr().getMethod();
					String nodeMethodClass = nodeMethod.getDeclaringClass().getName();
					String nodeMethodName = nodeMethod.getName();
					String nodeName = nodeMethodClass + ":" + nodeMethodName;
					String nodeSig = nodeMethod.getSignature();
					
					for(APIGraphNode succ: successors)
					{
						SootMethod succMethod = succ.getStmt().getInvokeExpr().getMethod();
						String succMethodClass = succMethod.getDeclaringClass().getName();
						String succMethodName = succMethod.getName();
						String succName = succMethodClass + ":" + succMethodName;
						String succNodeSig = succMethod.getSignature();
						
						Log.dumpln(AnalyzerMain.SENSITIVEAPIDUMP_DOT, "    " + "\"" + nodeSig + "_" + indexToMethodName.get(nodeName)
								+ "\" -> " + "\"" + succNodeSig + "_" + indexToMethodName.get(succName) + "\";");
					}
					
				}//end of while
				
				Log.dumpln(AnalyzerMain.SENSITIVEAPIDUMP_DOT, "}\n");
			}//end of IsSourceAPI
			
			//if the node is a sink API, then trace up to 'level' and dump the subgraph
			if(ret == IsSinkAPI)
			{
				Stack<APIGraphNode> nodeStack = new Stack<APIGraphNode>();
				Stack<APIGraphNode> levelStack = new Stack<APIGraphNode>();
				nodeStack.push(node);
				
				Log.dumpln(AnalyzerMain.SENSITIVEAPIDUMP_DOT, "digraph G {");
				
				int i = 0;
				while(!nodeStack.isEmpty())
				{
					APIGraphNode n = nodeStack.pop();
					Vector<APIGraphNode> predessors = n.getPredecessors();
					levelStack.addAll(predessors);
					
					if(nodeStack.isEmpty() && i < level)
					{
						nodeStack.addAll(levelStack);
						levelStack.clear();
						i++;
					}
					
					SootMethod nodeMethod = n.getStmt().getInvokeExpr().getMethod();
					String nodeMethodClass = nodeMethod.getDeclaringClass().getName();
					String nodeMethodName = nodeMethod.getName();
					String nodeName = nodeMethodClass + ":" + nodeMethodName;
					String nodeSig = nodeMethod.getSignature();
					
					for(APIGraphNode pred: predessors)
					{
						SootMethod predMethod = pred.getStmt().getInvokeExpr().getMethod();
						String predMethodClass = predMethod.getDeclaringClass().getName();
						String predMethodName = predMethod.getName();
						String predName = predMethodClass + ":" + predMethodName;
						String predNodeSig = predMethod.getSignature();
						
						Log.dumpln(AnalyzerMain.SENSITIVEAPIDUMP_DOT, "    " + "\"" + predNodeSig + "_" + indexToMethodName.get(predName)
								+ "\" -> " + "\"" + nodeSig + "_" + indexToMethodName.get(nodeName) + "\";");
					}
				}//end of while
				
				Log.dumpln(AnalyzerMain.SENSITIVEAPIDUMP_DOT, "}\n");
			}//end of IsSinkAPI
		}
	}
	
	// return IsSinkAPI or IsSourceAPI, if the given signature is SINK API or SOURCE API
	int MatchSinksAndSources(String signature)
	{
		/*
		for(int i = 0; i < MyConstants.SINKS.length; i++)
		{
			if(signature.equals(MyConstants.SINKS[i]))
			{
				return IsSinkAPI;
			}
		}
		
		for(int i = 0; i < MyConstants.SOURCES.length; i++)
		{
			if(signature.equals(MyConstants.SOURCES[i]))
			{
				return IsSourceAPI;
			}
		}
		*/
		
		if(AndroidSourceSinkSummary.isSource(signature)){
			return IsSourceAPI;
		}
		
		if(AndroidSourceSinkSummary.isSink(signature)){
			return IsSinkAPI;
		}
		
		return 0;
	}
	
	//TODO: now only dump subgraphs that consist of API nodes and contain sensitive APIs
	public void dumpGlobalAPIGraphtoGSpanFormat(String gSpanLog, int graphIndex, LinkedHashMap<String, Integer> indexToMethodName)
	{
		LinkedHashMap<APIGraphNode, Integer> nodeToIndex = new LinkedHashMap<APIGraphNode, Integer>();
		
		int index = 1;
		boolean hasSensitiveAPI = false;
		for(APIGraphNode node : this.apiGraph)
		{
			
			Stmt st = node.getStmt();
			if(!st.containsInvokeExpr())
				return;
			
			String methodClass = st.getInvokeExpr().getMethod().getDeclaringClass().getName();
			String methodName = st.getInvokeExpr().getMethod().getName();
			String sig = st.getInvokeExpr().getMethod().getSignature();
			
			//if the whole graph doesn't contain any sensitive api, don't dump it!
			for(int i = 0; i < MyConstants.SENSITIVEAPICALLS.length; i++)
			{
				if(sig.equals(MyConstants.SENSITIVEAPICALLS[i]))
				{
					hasSensitiveAPI = true;
					//Log.dumpln(gSpanLog, "HAS SENSITIVE API: " + sig + "    INDEX: " + index);
					break;
				}
			}
			
			
			//add new signature and its index into indexToSignature data structure
			if(!indexToMethodName.containsKey(methodClass + ":" + methodName))
			{
				indexToMethodName.put(methodClass + ":" + methodName, indexToMethodName.size()+1);
			}
				 
			nodeToIndex.put(node, index++);
		}
		
		if(!hasSensitiveAPI)
			return;
		
		//dump the first line indicating the graph index
		Log.dumpln(gSpanLog, "XP");

		//dump all the vertices
		Set<APIGraphNode> keySet = nodeToIndex.keySet();
		Iterator<APIGraphNode> iter = keySet.iterator();
		while(iter.hasNext()){
			APIGraphNode node = iter.next();
			int ind = nodeToIndex.get(node).intValue();
		
			Stmt st = node.getStmt();
			String methodClass = st.getInvokeExpr().getMethod().getDeclaringClass().getName();
			String methodName = st.getInvokeExpr().getMethod().getName();
			String name = methodClass + ":" + methodName;
			Log.dumpln(gSpanLog, "v " + ind + " " + indexToMethodName.get(name));
		}
		
		//dump all the edges
		for(APIGraphNode node : this.apiGraph){
			int pred = nodeToIndex.get(node).intValue();
			List<APIGraphNode> succNodes = node.getSuccessors();
			for(APIGraphNode succNode : succNodes){
				Log.dumpln(gSpanLog, "d " + pred + " " + nodeToIndex.get(succNode).intValue() + " " + 0);
			}
		}
	}
	
	
	
	public void dumpGlobalAPIGraph(SootMethod method){
		
		Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "printing out Global API Graph, entry point: " + method);
		
		for(APIGraphNode node : this.apiGraph){
			Stmt s = node.getStmt();
			
			Log.dump(AnalyzerMain.API_GLOBAL_LOG, "Node: " + s);
			if(node.getAnnotation().isEmpty()){
				Log.dumpln(AnalyzerMain.API_GLOBAL_LOG);
			}else{
				Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "[" + node.getAnnotation());
			}
			
			if(node.getPredecessors().size()>0){
				Log.dump(AnalyzerMain.API_GLOBAL_LOG, "Preds: [");
				for(int i=0;i<node.getPredecessors().size()-1;i++){
					Log.dump(AnalyzerMain.API_GLOBAL_LOG, node.getPredecessors().get(i).getStmt() + ",");
				}
				Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, node.getPredecessors().get(node.getPredecessors().size()-1).getStmt() + "]");
			}else{
				Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "Preds: []");
			}
			
			if(node.getSuccessors().size()>0){
				Log.dump(AnalyzerMain.API_GLOBAL_LOG, "Succs: [");
				for(int i=0;i<node.getSuccessors().size()-1;i++){
					Log.dump(AnalyzerMain.API_GLOBAL_LOG, node.getSuccessors().get(i).getStmt() + ",");
				}
				Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, node.getSuccessors().get(node.getSuccessors().size()-1).getStmt() + "]");
			}else{
				Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "Succs: []");
			}
			
			Log.dumpln(AnalyzerMain.API_GLOBAL_LOG);
		}
	}
	
	public void dumpGlobalAPIGraphEdgeList(SootMethod method){
		
		LinkedHashMap<APIGraphNode, Integer> nodeToIndex = new LinkedHashMap<APIGraphNode, Integer>();
		int index = 0;
		for(APIGraphNode node : this.apiGraph){
			nodeToIndex.put(node, new Integer(index));
			index++;
		}
		
		Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "Graph" + method + "{");
		Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "  Nodes{");
		Set<APIGraphNode> keySet = nodeToIndex.keySet();
		Iterator<APIGraphNode> iter = keySet.iterator();
		while(iter.hasNext()){
			APIGraphNode node = iter.next();
			int ind = nodeToIndex.get(node).intValue();
			Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "    " + ind + ":" + node.getAnnotation());
					//+ ":" + node.getStmt());
		}
		Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "  }\n");
		
		Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "  Edges{");
		for(APIGraphNode node : this.apiGraph){
			int pred = nodeToIndex.get(node).intValue();
			List<APIGraphNode> succNodes = node.getSuccessors();
			for(APIGraphNode succNode : succNodes){
				Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "    " + pred + "->" + nodeToIndex.get(succNode).intValue());
			}
		}
		Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "  }");
		
		Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "}\n");
		
		
	}
	
	public void dumpGlobalAPIGraphEdgeListToDot(SootMethod method){
		
		if(this.apiGraph.size() < 2){
			return;
		}
		
		LinkedHashMap<APIGraphNode, Integer> nodeToIndex = new LinkedHashMap<APIGraphNode, Integer>();
		int index = 0;
		for(APIGraphNode node : this.apiGraph){
			nodeToIndex.put(node, new Integer(index));
			index++;
		}
		
		Log.dumpln(AnalyzerMain.API_GLOBAL_DOT, "digraph G {");
		
		for(APIGraphNode node : this.apiGraph){
			int pred = nodeToIndex.get(node).intValue();
			List<APIGraphNode> succNodes = node.getSuccessors();
			for(APIGraphNode succNode : succNodes){

				String nodeSig, succNodeSig;
				if(node.getStmt().containsInvokeExpr())
					nodeSig = node.getStmt().getInvokeExpr().getMethod().getSignature();
				else
					nodeSig = node.getStmt().toString();
				
				if(succNode.getStmt().containsInvokeExpr())
					succNodeSig = succNode.getStmt().getInvokeExpr().getMethod().getSignature();
				else
					succNodeSig = succNode.getStmt().toString();
				
				Log.dumpln(AnalyzerMain.API_GLOBAL_DOT, "    " + "\"" + nodeSig + "_" + pred
						+ "\" -> " + "\"" + succNodeSig + "_" + nodeToIndex.get(succNode).intValue() + "\";");

				//Log.dumpln(AnalyzerMain.API_GLOBAL_DOT, "    " + "\"" + node.getStmt().getInvokeExpr().getMethod().getSignature() + "_" + pred
						//+ "\" -> " + "\"" + succNode.getStmt().getInvokeExpr().getMethod().getSignature() + "_" + nodeToIndex.get(succNode).intValue() + "\";");

				/*
				Log.dumpln(AnalyzerMain.API_GLOBAL_DOT, "    " + "\"" + node.getStmt().getInvokeExpr().getMethod().getSignature() + "_" + pred
						+ "\" -> " + "\"" + succNode.getStmt().getInvokeExpr().getMethod().getSignature() + "_" + nodeToIndex.get(succNode).intValue() + "\";");
				*/
			}
		}
		
		Log.dumpln(AnalyzerMain.API_GLOBAL_DOT, "}\n");
		
		
	}
	
	public void dumpAPIGraphEdgeListToDot(){
		
		if(this.apiGraph.size() < 2){
			return;
		}
		LinkedHashMap<APIGraphNode, Integer> nodeToIndex = new LinkedHashMap<APIGraphNode, Integer>();
		int index = 0;
		for(APIGraphNode node : this.apiGraph){
			nodeToIndex.put(node, new Integer(index));
			index++;
		}
		
		Log.dumpln(AnalyzerMain.API_LOCAL_DOT, "digraph G {");
		
		for(APIGraphNode node : this.apiGraph){
			int pred = nodeToIndex.get(node).intValue();
			List<APIGraphNode> succNodes = node.getSuccessors();
			for(APIGraphNode succNode : succNodes){
				String nodeSig, succNodeSig;
				if(node.getStmt().containsInvokeExpr())
					nodeSig = node.getStmt().getInvokeExpr().getMethod().getSignature();
				else
					nodeSig = node.getStmt().toString();
				
				if(succNode.getStmt().containsInvokeExpr())
					succNodeSig = succNode.getStmt().getInvokeExpr().getMethod().getSignature();
				else
					succNodeSig = succNode.getStmt().toString();
				//Log.dumpln(AnalyzerMain.API_LOCAL_DOT, "    " + "\"" + node.getStmt().getInvokeExpr().getMethod().getSignature() + "_" + pred
						//+ "\" -> " + "\"" + succNode.getStmt().getInvokeExpr().getMethod().getSignature() + "_" + nodeToIndex.get(succNode).intValue() + "\";");
				Log.dumpln(AnalyzerMain.API_LOCAL_DOT, "    " + "\"" + nodeSig + "_" + pred
						+ "\" -> " + "\"" + succNodeSig + "_" + nodeToIndex.get(succNode).intValue() + "\";");
			}
		}
		
		Log.dumpln(AnalyzerMain.API_LOCAL_DOT, "}\n");
	}
	
	
	public void dumpAPIGraphEdgeList(){
		
		LinkedHashMap<APIGraphNode, Integer> nodeToIndex = new LinkedHashMap<APIGraphNode, Integer>();
		int index = 0;
		for(APIGraphNode node : this.apiGraph){
			nodeToIndex.put(node, new Integer(index));
			index++;
		}
		
		Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "Graph" + this.cfg.getBody().getMethod() + "{");
		Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "  Nodes{");
		Set<APIGraphNode> keySet = nodeToIndex.keySet();
		Iterator<APIGraphNode> iter = keySet.iterator();
		while(iter.hasNext()){
			APIGraphNode node = iter.next();
			int ind = nodeToIndex.get(node).intValue();
			if(node.getAnnotation().equals("")){
				String nodeSig;
				if(node.getStmt().containsInvokeExpr())
					nodeSig = ":[callsite]" + node.getStmt().getInvokeExpr().getMethod().getSignature();
				else
					nodeSig = node.getStmt().toString();
				
				Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "    " + ind + nodeSig);
			}else{
				Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "    " + ind + ":" + node.getAnnotation());
						//+ ":" + node.getStmt());
			}
		}
		Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "  }\n");
		
		Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "  Edges{");
		for(APIGraphNode node : this.apiGraph){
			int pred = nodeToIndex.get(node).intValue();
			List<APIGraphNode> succNodes = node.getSuccessors();
			for(APIGraphNode succNode : succNodes){
				Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "    " + pred + "->" + nodeToIndex.get(succNode).intValue());
			}
		}
		Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "  }");
		
		Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "}\n");
		
		
	}
	
	public void dumpAPIGraph(){
		/*
		System.out.println("printing out API graph for Method " + cfg.getBody().getMethod() + "\n");
		*/
		Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "printing out API graph for Method " + cfg.getBody().getMethod() + "\n");
		
		for(APIGraphNode node : this.apiGraph){
			Stmt s = node.getStmt();
			
			Log.dump(AnalyzerMain.API_LOCAL_LOG, "Node: " + s);
			if(node.getAnnotation().isEmpty()){
				Log.dumpln(AnalyzerMain.API_LOCAL_LOG);
			}else{
				Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "[" + node.getAnnotation());
			}
			
			if(node.getPredecessors().size()>0){
				Log.dump(AnalyzerMain.API_LOCAL_LOG, "Preds: [");
				for(int i=0;i<node.getPredecessors().size()-1;i++){
					Log.dump(AnalyzerMain.API_LOCAL_LOG, node.getPredecessors().get(i).getStmt() + ",");
				}
				Log.dumpln(AnalyzerMain.API_LOCAL_LOG, node.getPredecessors().get(node.getPredecessors().size()-1).getStmt() + "]");
			}else{
				Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "Preds: []");
			}
			
			if(node.getSuccessors().size()>0){
				Log.dump(AnalyzerMain.API_LOCAL_LOG, "Succs: [");
				for(int i=0;i<node.getSuccessors().size()-1;i++){
					Log.dump(AnalyzerMain.API_LOCAL_LOG, node.getSuccessors().get(i).getStmt() + ",");
				}
				Log.dumpln(AnalyzerMain.API_LOCAL_LOG, node.getSuccessors().get(node.getSuccessors().size()-1).getStmt() + "]");
			}else{
				Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "Succs: []");
			}
			
			Log.dumpln(AnalyzerMain.API_LOCAL_LOG);
			/*
			System.out.println("Node: " + s);
			System.out.print("Preds: " + node.getPredecessors() + "\n");
			System.out.print("Succs: " + node.getSuccessors() + "\n");
			System.out.println();
			*/
			
		}
	}
	
	private void initAPIGraphFromCFG(){
		
		LinkedHashMap<Stmt, APIGraphNode> stmtToNode = new LinkedHashMap<Stmt, APIGraphNode>();
		Iterator<Unit> iterCFG1 = cfg.iterator();
		while(iterCFG1.hasNext()){
			Stmt s = (Stmt)iterCFG1.next();
			APIGraphNode node = new APIGraphNode(s);
			stmtToNode.put(s, node);
		}		
		
		//Traverse the control flow graph to add nodes into 'apiGraph'
		Iterator<Unit> iterCFG = cfg.iterator();
		boolean isFirstNode = true;
		while(iterCFG.hasNext()){
			Object curIt = iterCFG.next();
			Stmt s = (Stmt)curIt;
			APIGraphNode node = stmtToNode.get(s);
			
			List<Unit> preds = cfg.getUnexceptionalPredsOf(s);
			List<Unit> succs = cfg.getUnexceptionalSuccsOf(s);
			
			
			for(Unit pred : preds){
				node.addPred(stmtToNode.get((Stmt)pred));
			}
			
			for(Unit succ : succs){
				node.addSucc(stmtToNode.get((Stmt)succ));
			}
			
			if(!isFirstNode)
			{
				//Unit dominator = (Unit)new SimpleDominatorsFinder(cfg).getImmediateDominator(curIt);
				//node.setImmediateDom(stmtToNode.get((Stmt)dominator));
				//System.out.println("xjtu1 the immediate dominator of " + s.toString() + " is " + node.getImmediateDom().getStmt().toString());
			}
			else
				isFirstNode = false;
			addNode(node);
		}
	}
	
	private void removeNonInvokeNode(){
		
		List<APIGraphNode> toRemove = new ArrayList<APIGraphNode>();
		
		for(APIGraphNode node : this.apiGraph){
			
			Stmt s = node.getStmt();
			//if()
			if(tag == null){
				System.out.println("WARNING:tag is null!");
				if(s instanceof InvokeStmt){
					
					SootMethod m = s.getInvokeExpr().getMethod();
					SootClass c = m.getDeclaringClass();
					
					if(!c.isApplicationClass()){
						if(!s.getTags().contains(API_TAG))
						{
							s.addTag(API_TAG);
							System.out.println(s.getTags().contains(API_TAG));
						}
							
					}else{
						if(!s.getTags().contains(FUNC_TAG))
							s.addTag(FUNC_TAG);
					}
					
				}else if(s instanceof DefinitionStmt){
					Value rhs = ((DefinitionStmt) s).getRightOp();
					if(rhs instanceof InvokeExpr){
						SootMethod m = s.getInvokeExpr().getMethod();
						SootClass c = m.getDeclaringClass();
						if(!c.isApplicationClass()){
							if(!s.getTags().contains(API_TAG))
								s.addTag(API_TAG);
						}else{
							if(!s.getTags().contains(FUNC_TAG))
								s.addTag(FUNC_TAG);
						}
					}				
				}
				//retain conditional statements
				else if(s instanceof IfStmt 
						|| s instanceof TableSwitchStmt
						|| s instanceof GotoStmt
						|| s instanceof LookupSwitchStmt)
				{
					if(!s.getTags().contains(COND_TAG))
						s.addTag(COND_TAG);
				}
			}
			
			else if(s.getTags().contains(tag)){
			
				if(s instanceof InvokeStmt){
					
					SootMethod m = s.getInvokeExpr().getMethod();
					SootClass c = m.getDeclaringClass();
					
					if(!c.isApplicationClass()){
						if(!s.getTags().contains(API_TAG))
							s.addTag(API_TAG);
					}else{
						if(!s.getTags().contains(FUNC_TAG))
							s.addTag(FUNC_TAG);
					}
					
				}else if(s instanceof DefinitionStmt){
					Value rhs = ((DefinitionStmt) s).getRightOp();
					if(rhs instanceof InvokeExpr){
						SootMethod m = s.getInvokeExpr().getMethod();
						SootClass c = m.getDeclaringClass();
						if(!c.isApplicationClass()){
							if(!s.getTags().contains(API_TAG))
								s.addTag(API_TAG);
						}else{
							if(!s.getTags().contains(FUNC_TAG))
								s.addTag(FUNC_TAG);
						}
					}				
				}
				//retain conditional statements
				else if(s instanceof IfStmt 
						|| s instanceof TableSwitchStmt
						|| s instanceof GotoStmt
						|| s instanceof LookupSwitchStmt)
				{
					if(!s.getTags().contains(COND_TAG))
						s.addTag(COND_TAG);
				}
			}
			
			if((!s.getTags().contains(API_TAG))
				&& (!s.getTags().contains(FUNC_TAG)))
					//&& (!s.getTags().contains(COND_TAG)))
			{
				if(!toRemove.contains(node)){
					toRemove.add(node);
				}
			}
			
			//TODO: temporarily delete all java APIs
			/*
			if(s.containsInvokeExpr() && s.getInvokeExpr().getMethod().getSignature().startsWith("<java."))
			{
				if(!toRemove.contains(node)){
					toRemove.add(node);
				}
			}
			*/
		}
		
		for(APIGraphNode node : toRemove){			
			deleteNode(node);
		}
		
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
					
					//System.out.println("here");
					
					if(isRecursiveDefine){
						System.out.println("Recursive define!");
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
				
				//System.out.println("end for");
			}//end while
			
			//System.out.println("end while");
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
	
	/*
	 * Append the given API graphs 'callees' to appendPoint
	 */
	public void append(APIGraphNode appendPoint, List<APIGraph> callees){
		
		for(APIGraph callee : callees){
			List<APIGraphNode> entryPoints = new ArrayList<APIGraphNode>();
			for(APIGraphNode node : callee.apiGraph){
				if(node.getPredecessors().isEmpty()){
					entryPoints.add(node);
				}
				this.addNode(node);
			}
			
			for(APIGraphNode entryPoint : entryPoints){
				appendPoint.addSucc(entryPoint);
				entryPoint.addPred(appendPoint);
			}
		}
	}
	
	/*
	 * Substitute the 'callsite' with the given 'callees' in its API Graph
	 */
	public void inline(APIGraphNode callsite, List<APIGraph> callees){		
		
		Vector<APIGraphNode> preds = callsite.getPredecessors();
		Vector<APIGraphNode> succs = callsite.getSuccessors();
		
		for(APIGraph callee : callees){
			
			if(callee.apiGraph.isEmpty()){
				for(APIGraphNode predNode : preds){
					for(APIGraphNode succ : succs){
						predNode.addSucc(succ);
					}
				}
				
				for(APIGraphNode succNode : succs){
					for(APIGraphNode pred : preds){
						succNode.addPred(pred);
					}
				}
			}else{
			
				List<APIGraphNode> entryPoints = new ArrayList<APIGraphNode>();
				List<APIGraphNode> exitPoints = new ArrayList<APIGraphNode>();
				
				//SootMethod callingMethod = callsite.getStmt().getInvokeExpr().getMethod();
				
				//get all the entry points and exit points of 'callee'
				for(APIGraphNode node : callee.apiGraph){
					if(node.getPredecessors().isEmpty()){
						entryPoints.add(node);
					}
					if(node.getSuccessors().isEmpty()){
						exitPoints.add(node);
					}
					this.addNode(node);
				}		
				
				
				//for every predecessor of given callsite, add entry points of callee as its successors
				for(APIGraphNode pred : preds){
					//pred.removeSucc(callsite);
					for(APIGraphNode entryPoint : entryPoints){
						pred.addSucc(entryPoint);
						entryPoint.addPred(pred);
					}
				}
				
				// For every successors of given callsite, add exit points of callee as its predecessors
				for(APIGraphNode succ : succs){
					//succ.removePred(callsite);
					
					/*
					if(!callingMethod.getSignature().equals("<java.lang.Thread: void start()>")){
						for(APIGraphNode exitPoint : exitPoints){
							succ.addPred(exitPoint);
							exitPoint.addSucc(succ);
						}
					}else{
						for(APIGraphNode pred : preds){
							succ.addPred(pred);
							pred.addSucc(succ);
						}
					}
					*/
					
					for(APIGraphNode exitPoint : exitPoints){
						succ.addPred(exitPoint);
						exitPoint.addSucc(succ);
					}
				}
			}
			
		}
		
		//remove callsite from its predecessors and successors
		for(APIGraphNode pred : preds){
			pred.removeSucc(callsite);
		}
		
		for(APIGraphNode succ : succs){
			succ.removePred(callsite);
		}
		
		this.removeNode(callsite);
		
	}
	
	public void setCallsite(Stmt callsite){
		for(APIGraphNode node : this.apiGraph){
			node.setCallsite(callsite);
		}
	}
	
	/*
	public void merge(List<APIGraph> successors){
		
		List<APIGraphNode> predExitPoints = new ArrayList<APIGraphNode>();
		List<APIGraphNode> succEntryPoints = new ArrayList<APIGraphNode>();
		
		for(APIGraphNode node : this.apiGraph){
			if(node.getSuccessors().isEmpty()){
				predExitPoints.add(node);
			}
		}
		
		for(APIGraph succ : successors){
			for(APIGraphNode node : succ.getAPIGraph()){
				if(node.getPredecessors().isEmpty()){
					succEntryPoints.add(node);
				}
			}
		}
		
		for(APIGraphNode predExitPoint : predExitPoints){
			for(APIGraphNode succEntryPoint : succEntryPoints){
				predExitPoint.addSucc(succEntryPoint);
				succEntryPoint.addPred(predExitPoint);
			}
		}
	}
	*/
	
	public void verify(SootMethod method){
		
		int entryCount = 0;
		Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "Verifying " + method + ":");
		for(APIGraphNode node : this.apiGraph){
			if(node.getPredecessors().isEmpty()){
				entryCount++;
				Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "Entry point: " + node.getAnnotation());
			}
			if(node.getSuccessors().isEmpty()){
				Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "Exit point: " + node.getAnnotation());
			}
		}
		if(entryCount>1){
			Log.dumpln(AnalyzerMain.API_GLOBAL_LOG, "WARNING: more than ONE entry point");
		}
		
		Log.dumpln(AnalyzerMain.API_GLOBAL_LOG);
	}
	
	public void verify(){
		
		int entryCount = 0;
		Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "Verifying " + this.cfg.getBody().getMethod() + ":");
		for(APIGraphNode node : this.apiGraph){
			if(node.getPredecessors().isEmpty()){
				entryCount++;
				Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "Entry point: " + node.getAnnotation());
			}
			if(node.getSuccessors().isEmpty()){
				Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "Exit point: " + node.getAnnotation());
			}
		}
		if(entryCount>1){
			Log.dumpln(AnalyzerMain.API_LOCAL_LOG, "WARNING: more than ONE entry point");
		}
		
		Log.dumpln(AnalyzerMain.API_LOCAL_LOG);
	}
	
	/*
	 * This function is to delete all the <init>() node in the graph
	 */
	public void EliminateInitFunction()
	{
		List<APIGraphNode> nodesToDelete = new ArrayList<APIGraphNode>();
		
		for(APIGraphNode node: this.apiGraph)
		{
			if(node.getStmt().containsInvokeExpr()){
				String methodName = node.getStmt().getInvokeExpr().getMethod().getName();
				//if the method is <init>, adjust its predecessors and successors, delete it.
				if(methodName.contains("<init>"))
				{
					nodesToDelete.add(node);
				}
			}
		}
		
		for(APIGraphNode node: nodesToDelete)
			deleteNode(node);
	}
	
	/*
	 * This function is to combine all the adjacent nodes from the same Java.lang class in the graph
	 */
	public void CombineAdjacentJavaAPI()
	{
		//This hashmap contains all the nodes to be deleted. Index is the class name.
		HashMap<String, APIGraphNode> nodeToDelete = new HashMap<String, APIGraphNode>();
		
		for(APIGraphNode node: this.apiGraph)
		{
			SootClass nodeClass = node.getStmt().getInvokeExpr().getMethod().getDeclaringClass();
			// if the class of current node is a java lib class, it is to be combined with its adjacent nodes 
			if(nodeClass.isJavaLibraryClass() && nodeToDelete.containsKey(nodeClass.getName()))
			{
				
			}
					
		}
	}
	
	/*
	 * Find out all the basic blocks in the graph
	 
	public List<APIGraphNodePair> FindBasicBlocks()
	{
		List<APIGraphNode> leaders = FindEntryPoints();
		
		for(APIGraphNode leader: leaders)
		{
			
		}
		
	}
	*/
	/*
	 * Find out all the entry points in the graph
	 */
	public List<APIGraphNode> FindEntryPoints()
	{
		List<APIGraphNode> entryPoints = new ArrayList<APIGraphNode>();
		
		if(this.apiGraph == null)
			return entryPoints;
		
		for(APIGraphNode node : this.apiGraph)
		{
			if(node.getPredecessors().isEmpty())
			{
				entryPoints.add(node);
			}
		}
		return entryPoints;
	}
	
	/*
	 * Find out all the exit points in the graph
	 */
	public List<APIGraphNode> FindExitPoints()
	{
		List<APIGraphNode> exitPoints = new ArrayList<APIGraphNode>();
		
		if(this.apiGraph == null)
			return exitPoints;
		
		for(APIGraphNode node : this.apiGraph)
		{
			if(node.getSuccessors().isEmpty())
			{
				exitPoints.add(node);
			}
		}
		return exitPoints;
	}
}
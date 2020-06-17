package mySoot.util;

import soot.jimple.Stmt;

public class Edge {
	
	private Stmt pred;
	private Stmt succ;
	private boolean isControlFlow;
	private boolean isDataflow;
	
	public Edge(Stmt pred, Stmt succ){
		this.pred = pred;
		this.succ = succ;
		this.isControlFlow = false;
		this.isDataflow = false;
	}
	
	public Edge(Stmt pred, Stmt succ, boolean isControlFlow, boolean isDataflow){
		this.pred = pred;
		this.succ = succ;
		this.isControlFlow = isControlFlow;
		this.isDataflow = isDataflow;
	}
	
	public Stmt getPred(){
		return this.pred;
	}
	
	public Stmt getSucc(){
		return this.succ;
	}
	
	public boolean isControlFlow(){
		return this.isControlFlow;
	}
	
	public boolean isDataflow(){
		return this.isDataflow;
	}
	
	public void setControlFlow(boolean isControlFlow){
		this.isControlFlow = isControlFlow;
	}
	
	public void setDataflow(boolean isDataflow){
		this.isDataflow = isDataflow;
	}

}

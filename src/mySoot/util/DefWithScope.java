package mySoot.util;

import soot.jimple.*;

public class DefWithScope {

	private Stmt def;
	private Stmt scopeBegin;
	private Stmt scopeEnd;
	
	public DefWithScope(Stmt def){
		this.def = def;
		this.scopeBegin = null;
		this.scopeEnd = null;
	}
	
	public DefWithScope(Stmt def, Stmt scopeBegin){
		this.def = def;
		this.scopeBegin = scopeBegin;
		this.scopeEnd = null;
	}
	
	public DefWithScope(Stmt def, Stmt scopeBegin, Stmt scopeEnd){
		this.def = def;
		this.scopeBegin = scopeBegin;
		this.scopeEnd = scopeEnd;
	}
	
	public Stmt getDef(){
		return this.def;
	}
	
	public Stmt getScopeBegin(){
		return this.scopeBegin;
	}
	
	public Stmt getScopeEnd(){
		return this.scopeEnd;
	}
	
	public void setDef(Stmt def){
		this.def = def;
	}
	
	public void setScopeBegin(Stmt scope){
		this.scopeBegin = scope;
	}
	
	public void setScopeEnd(Stmt scope){
		this.scopeEnd = scope;
	}
	
	public String dump(){
		
		String begin = "BEGIN";
		String end = "END";
		
		if(scopeBegin != null){
			begin = scopeBegin.toString();
		}

		if(scopeEnd != null){
			end = scopeEnd.toString();
		}		
		
		return new StringBuilder(def + "[" + begin + " -> " + end + "]").toString();
	}
}

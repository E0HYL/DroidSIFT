package mySoot;

import soot.jimple.*;

public class CallsiteInstrPair {
	
	private Stmt callSite;
	private Stmt instr;

	public CallsiteInstrPair(Stmt callSite, Stmt instr){
		this.callSite = (Stmt)callSite.clone();
		this.instr = (Stmt)instr.clone();
	}
	
	public Stmt getCallSite(){
		return this.callSite;
	}
	
	public Stmt getInstr(){
		return this.instr;
	}
}

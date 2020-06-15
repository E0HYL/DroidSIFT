package mySoot;

import java.util.*;

import soot.*;
import soot.jimple.*;
import soot.jimple.internal.*;
import soot.toolkits.graph.ExceptionalUnitGraph;

public class FindEntryPointsTransformer extends BodyTransformer{

	private static final Vector<String> ENTRY_POINTS = new Vector<String>();
	private static final String ON_EVENT_PREFIX = "on";

	private List<String> m_Classes;	
	private LinkedHashMap<String, String> mClassToMethod;
	
	public FindEntryPointsTransformer() {
		
		ENTRY_POINTS.add(new String("main"));
		ENTRY_POINTS.add(new String("run"));
		ENTRY_POINTS.add(new String("doInBackground"));
		
		m_Classes = new ArrayList<String>();		
		mClassToMethod  = new LinkedHashMap<String, String>();
	}

	@Override
	protected void internalTransform(Body body, String string, Map map) {
		SootMethod method = body.getMethod();		
		
		//Look for entry points
		if (ENTRY_POINTS.contains(method.getName()) || method.getName().startsWith(ON_EVENT_PREFIX, 0)){
			//System.out.println(method.toString());
			SootClass soot_class = method.getDeclaringClass();
			//System.out.println("adding class: " + soot_class.getName());
			m_Classes.add(soot_class.getName());
			mClassToMethod.put(soot_class.getName()+ "|" +method.getSignature(), method.getSubSignature());
		}
	}
	
		
	public List<String> getClasses() {
		return m_Classes;
	}
	
	public LinkedHashMap<String, String> getClassToMethod(){
		return this.mClassToMethod;
	}
}

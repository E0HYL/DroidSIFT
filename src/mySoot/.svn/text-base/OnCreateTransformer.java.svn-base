package mySoot;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.LinkedHashMap;
import soot.Body;
import soot.BodyTransformer;
import soot.SootClass;
import soot.SootMethod;

public class OnCreateTransformer extends BodyTransformer {

	private List<String> m_Classes;
	
	private LinkedHashMap<String, String> mClassToMethod;

	public OnCreateTransformer() {
		m_Classes = new ArrayList<String>();
		
		mClassToMethod  = new LinkedHashMap<String, String>();
	}

	@Override
	protected void internalTransform(Body body, String string, Map map) {
		SootMethod method = body.getMethod();		
		
		if (method.getName().equals(MyConstants.mainEntry) || method.getName().equals(MyConstants.onCreateEntry)
				|| method.getName().equals(MyConstants.threadEntry) || method.getName().startsWith("on", 0)
				|| method.getName().equals(MyConstants.asyncTaskEntry) || method.getName().equals("handleMessage")){// || method.getName().equals("stealthySend")) {
			System.out.println(method.toString());
			SootClass soot_class = method.getDeclaringClass();
			if(!soot_class.isPhantom()){
				System.out.println("adding class: " + soot_class.getName());			
				m_Classes.add(soot_class.getName());
				mClassToMethod.put(soot_class.getName()+"|"+method.getSignature(), method.getSubSignature());
			}
		}
	}

	public List<String> getClasses() {
		return m_Classes;
	}
	
	public LinkedHashMap<String, String> getClassToMethod(){
		return this.mClassToMethod;
	}
}

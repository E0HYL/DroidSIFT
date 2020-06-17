package mySoot;

import java.util.*;

import soot.*;
import soot.jimple.*;
import soot.util.*;

public class FindUncalledOverridingMethodsTransformer extends BodyTransformer{
	
	private List<String> uncalledOverridingFrameworkMethods;
	private LinkedHashMap<String, String> mClassToMethod;
	private List<String> appUncalledMethods;
	
	public FindUncalledOverridingMethodsTransformer(List<String> appUncalledMethods){
		uncalledOverridingFrameworkMethods = new ArrayList<String>();
		mClassToMethod = new LinkedHashMap<String, String>();
		this.appUncalledMethods = appUncalledMethods;
	}

	protected void internalTransform(Body body, String string, Map map) {
		
		SootMethod method = body.getMethod();
		/*
		if(method.getName().equals("<init>") || method.getName().equals("<clinit>")){
			return;
		}
		*/
				
		//System.out.println("class: " + method.getDeclaringClass() + " |" + method.getDeclaringClass().getInterfaces());
		
		if(appUncalledMethods.contains(method.getSignature())){
			SootClass clazz = method.getDeclaringClass();
			
			//System.out.println("uncalled method: " + method + " in class: " + clazz);
			List<SootClass> interfazes = new ArrayList<SootClass>();
			if(clazz.getInterfaceCount()>0){
				interfazes.addAll(clazz.getInterfaces());
			}
					
			if(clazz.hasSuperclass()){
				
				//System.out.println("uncalled method: " + method + " has super class");
				
				while(clazz.hasSuperclass() && clazz.isApplicationClass()){					
					clazz = clazz.getSuperclass();
					if(clazz.getInterfaceCount()>0){
						for(SootClass interfaze : clazz.getInterfaces()){
							if(!interfazes.contains(interfaze)){
								interfazes.add(interfaze);
							}
						}
					}
				}
				
				//System.out.println("uncalled method's super clazz: " + clazz);
				if(!clazz.isApplicationClass()){
					
					//System.out.println("uncalled method: " + method + " 's super class is a framework class");
					/*
					List<SootMethod> superMethods = clazz.getMethods();
					for(SootMethod superMethod : superMethods){
						//System.out.println("super method: " + superMethod + "|" + superMethod.getSubSignature() + ". method: " + method + "|" + method.getSubSignature());
						if(superMethod.getSubSignature().equals(method.getSubSignature())){
							
							//System.out.println("uncalled method: " + method + " overrides " + superMethod);
							
							if(!uncalledOverridingFrameworkMethods.contains(method.getSignature())){
								uncalledOverridingFrameworkMethods.add(method.getSignature());
								mClassToMethod.put(method.getDeclaringClass().getName()+ "|" +method.getSignature(), method.getSubSignature());
							}
						}
					}
					*/
					
					if(clazz.declaresMethod(method.getSubSignature())){
						if(!uncalledOverridingFrameworkMethods.contains(method.getSignature())){
							uncalledOverridingFrameworkMethods.add(method.getSignature());
							mClassToMethod.put(method.getDeclaringClass().getName()+ "|" +method.getSignature(), method.getSubSignature());
						}
					}
					
				}
			}
			
			//if(clazz.getInterfaceCount()>0){
			if(interfazes.size()>0){
				
				//System.out.println("method: " + method + " has super interfaces");
				
				//Chain<SootClass> interfaces = clazz.getInterfaces();
				for(SootClass interfaze : interfazes){
					
					if(!interfaze.isApplicationClass()){
						
						//System.out.println("method: " + method + " 's interface is a framework class");
						/*
						List<SootMethod> superMethods = interfaze.getMethods();
						for(SootMethod superMethod : superMethods){							
							if(superMethod.getSubSignature().equals(method.getSubSignature())){
								
								//System.out.println("method: " + method + " overrides " + superMethod);
								
								if(!uncalledOverridingFrameworkMethods.contains(method.getSignature())){
									uncalledOverridingFrameworkMethods.add(method.getSignature());
									mClassToMethod.put(method.getDeclaringClass().getName()+ "|" +method.getSignature(), method.getSubSignature());
								}
							}
						}
						*/
						
						if(interfaze.declaresMethod(method.getSubSignature())){
							if(!uncalledOverridingFrameworkMethods.contains(method.getSignature())){
								uncalledOverridingFrameworkMethods.add(method.getSignature());
								mClassToMethod.put(method.getDeclaringClass().getName()+ "|" +method.getSignature(), method.getSubSignature());
							}
						}
						
					}
				}
			}else{
				//System.out.println("method: " + method + " doesn't implement any interfaces");
			}
			
			/*
			if(method.getName().equals("run") && isThread(clazz)){
				if(!uncalledOverridingFrameworkMethods.contains(method.getSignature())){
					uncalledOverridingFrameworkMethods.add(method.getSignature());
					mClassToMethod.put(method.getDeclaringClass().getName()+ "|" +method.getSignature(), method.getSubSignature());
				}
			}
			*/
		}
	}
	
	public List<String> getUncalledOverridingFrameworkMethods(){
		return this.uncalledOverridingFrameworkMethods;
	}
	
	public LinkedHashMap<String, String> getClassToMethod(){
		return this.mClassToMethod;
	}
	
	private boolean isThread(SootClass clazz){
		
		while(clazz.hasSuperclass() && clazz.isApplicationClass()){
			
			for(SootClass interfaze : clazz.getInterfaces()){
				if(interfaze.getName().equals("java.lang.Runnable")){
					return true;
				}
			}
			
			clazz = clazz.getSuperclass();
						
		}
		
		for(SootClass interfaze : clazz.getInterfaces()){
			if(interfaze.getName().equals("java.lang.Runnable")){
				return true;
			}
		}
				
		return false;
	}
}
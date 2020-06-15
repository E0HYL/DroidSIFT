package mySoot.util;

import java.util.*;
import java.io.*;

import mySoot.AnalyzerMain;

public class PscoutPermissionMap {
	
	private String filename;
	private LinkedHashMap<String, String> permissionMap; 
	private LinkedHashMap<String, List<String>> reversePermissionMap;
	
	public PscoutPermissionMap(String filename){
		this.filename = filename;
		this.permissionMap = new LinkedHashMap<String, String>();
		this.reversePermissionMap = new LinkedHashMap<String, List<String>>();
	}
	
	public PscoutPermissionMap(){
		this.filename = AnalyzerMain.API_PERMISSION_MAP_PSCOUT;
		this.permissionMap = new LinkedHashMap<String, String>();
		this.reversePermissionMap = new LinkedHashMap<String, List<String>>();
	}
	
	public void buildPermissionMap(){
		try{
			
			File file = new File(filename);
			FileInputStream is = new FileInputStream(file);
			
		    DataInputStream in = new DataInputStream(is);
		    BufferedReader br = new BufferedReader(new InputStreamReader(in));
		    String strLine;

		    String permission = ""; //value
		    String api = ""; //key
		    while ((strLine = br.readLine()) != null){
		    	
		    	/*
		    	String[] results = strLine.split("\t");
		    	if(results[0].indexOf('(')>=0){
		    		String substring = results[0].substring(0, results[0].indexOf('('));
		    		if(!this.permissionMap.containsKey(substring)){
		    			this.permissionMap.put(substring, results[1]);
		    		}
		    	}
		    	*/
		    	if(strLine.startsWith("Permission:")){
		    		permission = strLine.substring(strLine.indexOf(":")+1);
		    	}else if(strLine.startsWith("<")){
		    		api = strLine;
		    		if(!this.permissionMap.containsKey(api)){
		    			this.permissionMap.put(api, permission);
		    		}
		    		
		    		if(!this.reversePermissionMap.containsKey(permission)){
		    			List<String> apis = new ArrayList<String>();
		    			apis.add(api);
		    			this.reversePermissionMap.put(permission, apis);
		    		}else{
		    			List<String> apis = this.reversePermissionMap.get(permission);
		    			if(!apis.contains(api)){
		    				apis.add(api);
		    			}
		    		}
		    	}
		    	
		    	
		    }
		    
		    in.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public void dump(){
		System.out.println("API\t\tpermission");
		
		Set<String> keySet = this.permissionMap.keySet();
		Iterator<String> keyIterator = keySet.iterator();
		while (keyIterator.hasNext()) {

			String key = keyIterator.next();
			System.out.println(key + "\t\t" + (String)this.permissionMap.get(key));
		}
		
	}
	
	public void dumpReverse(){
		Set<String> keySet = this.reversePermissionMap.keySet();
		Iterator<String> iter = keySet.iterator();
		while(iter.hasNext()){
			String permission = iter.next();
			System.out.println("Permission:" + permission);
			List<String> apis = this.reversePermissionMap.get(permission);
			System.out.println(apis.size() + " Callers:");
			for(String api : apis){
				System.out.println(api);
			}
		}
	}
	
	public String lookup(String api){
		return this.permissionMap.get(api);
	}
	
	public boolean exists(String api){
		return this.permissionMap.containsKey(api);
	}
	
	public static void main(String[] args){
		PscoutPermissionMap ppm = new PscoutPermissionMap("/home/muzhang/transblocker/pscout/jellybean_publishedapimapping.txt");
		ppm.buildPermissionMap();
		ppm.dumpReverse();
	}

}

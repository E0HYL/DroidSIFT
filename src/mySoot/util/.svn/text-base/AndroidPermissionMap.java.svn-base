package mySoot.util;

import java.util.*;
import java.io.*;

import mySoot.AnalyzerMain;

public class AndroidPermissionMap {
	
	private String filename;
	private LinkedHashMap<String, String> permissionMap; 
	
	public AndroidPermissionMap(String filename){
		this.filename = filename;
		this.permissionMap = new LinkedHashMap<String, String>();
	}
	
	public AndroidPermissionMap(){
		this.filename = AnalyzerMain.API_PERMISSION_MAP;
		this.permissionMap = new LinkedHashMap<String, String>();
	}
	
	public void buildPermissionMap(){
		try{
			
			File file = new File(filename);
			FileInputStream is = new FileInputStream(file);
			
		    DataInputStream in = new DataInputStream(is);
		    BufferedReader br = new BufferedReader(new InputStreamReader(in));
		    String strLine;

		    while ((strLine = br.readLine()) != null){
		    	
		    	String[] results = strLine.split("\t");
		    	if(results[0].indexOf('(')>=0){
		    		String substring = results[0].substring(0, results[0].indexOf('('));
		    		if(!this.permissionMap.containsKey(substring)){
		    			this.permissionMap.put(substring, results[1]);
		    		}
		    	}
		    	//this.permissionMap.put(results[0], results[1]);
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
	
	public String lookup(String api){
		return this.permissionMap.get(api);
	}
	
	public boolean exists(String api){
		return this.permissionMap.containsKey(api);
	}
	
	public static void main(String[] args){
		AndroidPermissionMap apm = new AndroidPermissionMap("/home/muzhang/Downloads/stowaway/permissionmap/APICalls.txt");
		apm.buildPermissionMap();
		apm.dump();
	}

}

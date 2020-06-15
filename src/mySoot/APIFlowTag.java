package mySoot;

import soot.tagkit.*;
import java.io.*;

public class APIFlowTag implements Tag{

	String apiName;
	String annotation;
	
	public APIFlowTag(String name){
		this.apiName = name;
		this.annotation = "";
	}
	
	public APIFlowTag(String name, String annotation){
		this.apiName = name;
		this.annotation = annotation;
	}
	
	public String getName(){
		return "APIFlowTag: " + apiName;
	}
	
	public String getAnnotation(){
		return this.annotation;
	}
	
	public byte[] getValue(){
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		DataOutputStream dos = new DataOutputStream(baos);
		try{
			dos.writeUTF(apiName);
			dos.flush();
		}catch(IOException e){
			System.err.println(e);
			throw new RuntimeException(e);
		}
		return baos.toByteArray();
	}
}

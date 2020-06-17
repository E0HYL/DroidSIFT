package mySoot;

import soot.tagkit.*;
import java.io.*;

public class SplitTag implements Tag{

	private int value;
	private String splitEntryPoint; 
	
	public SplitTag(int value){
		this.value = value;
	}

	public SplitTag(int value, String entry){
		this.value = value;
		this.splitEntryPoint = entry;
	}

	public String getName(){
		return "SplitTag";
	}
	
	public void setSplitEntryPoint(String entry){
		this.splitEntryPoint = entry;
	}
	
	public String getSplitEntryPoint(){
		return this.splitEntryPoint;
	}

	public int getLabel(){
		return this.value;
	}

	public byte[] getValue(){
		ByteArrayOutputStream baos = new ByteArrayOutputStream(4);
		DataOutputStream dos = new DataOutputStream(baos);
		try{
			dos.writeInt(value);
			dos.flush();
		}catch(IOException e){
			System.err.println(e);
			throw new RuntimeException(e);
		}
		return baos.toByteArray();
	}
}

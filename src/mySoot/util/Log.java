package mySoot.util;

import java.io.*;

public class Log {
	
	//public static String FILENAME = "/home/muzhang/test/testlog.log";
	
	public static void init(String filename){
		File file = new File(filename);
		if(file.exists()){
			file.delete();
		}
	}
	
	public static void initAppending(String filename){
		File file = new File(filename);
	}
		
	public static void dump(String filename, String msg){
		try{
			PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(filename, true)));
		    out.print(msg);
			out.close();
		}catch(FileNotFoundException ex) {
			System.err.println("Can't find file " + filename);
			System.exit(-1);
		}catch(IOException ex) {
			System.err.println("IOException!");
			System.exit(-1);
		}
	}
	
	public static void dumpln(String filename, String msg){
		try{
			PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(filename, true)));
		    out.println(msg);
			out.close();
		}catch(FileNotFoundException ex) {
			System.err.println("Can't find file " + filename);
			System.exit(-1);
		}catch(IOException ex) {
			System.err.println("IOException!");
			System.exit(-1);
		}
	}
	
	public static void dumpln(String filename){
		try{
			PrintWriter out = new PrintWriter(new BufferedWriter(new FileWriter(filename, true)));
		    out.println();
			out.close();
		}catch(FileNotFoundException ex) {
			System.err.println("Can't find file " + filename);
			System.exit(-1);
		}catch(IOException ex) {
			System.err.println("IOException!");
			System.exit(-1);
		}
	}
	
}

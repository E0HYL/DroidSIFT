package mySoot.util;

import java.io.*;

import mySoot.AnalyzerMain;

public class Config {
	
	public static int ANDROID_API_LEVEL = -1;
	private static final int DEFAULT_API_LEVEL = 19;
	private static final String TARGET_SDK_VERSION = "android:targetSdkVersion";
	
	//Deprecated. Should not be used. Please use ReadSDKVersion() instead.
	public static void configure(String filename){
		File file = new File(filename);
		if(!file.exists()){
			ANDROID_API_LEVEL = DEFAULT_API_LEVEL;
		}else{
			String in;
			try {
				BufferedReader br = new BufferedReader(new FileReader(filename));
				while ((in = br.readLine()) != null) { 
					String[] tokens = in.split("=");
					if(tokens.length<2){
						break;
					}					
					if(tokens[0].equals("API-Level")){
						ANDROID_API_LEVEL = Integer.parseInt(tokens[1]);
					}					
				} 
			} 
			catch (IOException e) {
				System.err.println("IOException! Use default configurations.");
				ANDROID_API_LEVEL = DEFAULT_API_LEVEL;
			}
		}
		
		if(ANDROID_API_LEVEL == -1){
			System.err.println("Config file is a bad file! Use default configurations.");
			ANDROID_API_LEVEL = DEFAULT_API_LEVEL;
		}
		
		System.out.println("Configure to use Android API level " + ANDROID_API_LEVEL);
	}
	
	//This function read SDK Version info from manifest file. Replace the old function.
	public static void ReadSDKVersion(String fileName)
	{
		File file = new File(fileName);
		if(!file.exists()){
			ANDROID_API_LEVEL = DEFAULT_API_LEVEL;
			return;
		}
		
		if(AnalyzerMain.API_LEVEL != 0)
		{
			ANDROID_API_LEVEL = AnalyzerMain.API_LEVEL;
			return;
		}
		
		try 
		{
			String in;
			BufferedReader br = new BufferedReader(new FileReader(fileName));
		
			while ((in = br.readLine()) != null)
			{ 
				if(!in.contains("uses-sdk"))
				{
					continue;
				}
				else
				{
					// Get the index of "android:targetSdkVersion" in manifest file
					int targetVersionIndex = in.indexOf(TARGET_SDK_VERSION);
					if(targetVersionIndex != -1)
					{
						String targetSDKVersion = in.substring(targetVersionIndex);
						String tokens[] = targetSDKVersion.split("\"");
						ANDROID_API_LEVEL = Integer.parseInt(tokens[1]);
					}
					else
					{
						ANDROID_API_LEVEL = DEFAULT_API_LEVEL;
					}
					System.err.println("API-level is: " + ANDROID_API_LEVEL);
					break;
				}
			}
			br.close();
		} 
		catch (IOException e) {
			System.out.println("Failed to read SDK Version from Manifest file");
		}
		
		if(ANDROID_API_LEVEL == -1){
			System.err.println("No Target SDK Version info is found in manifest file, Just use the default.");
			ANDROID_API_LEVEL = DEFAULT_API_LEVEL;
		}
	}

}

/*
 * This file contains the definition of ReadEpiccResult class.
 * Read epicc file generated by Epicc to connect intents with activities and services within one Android app.
 */
package mySoot.util;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ReadEpiccResult
{
	private String epiccFile;							//path for epicc file
	
	//HashMap<activityName, array of actions associated with the activity>
	private HashMap<String, ArrayList<String>> activities = new HashMap<String, ArrayList<String>>();	
	
	//HashMap<serviceName, array of actions associated with the service>
	private HashMap<String, ArrayList<String>> services = new HashMap<String, ArrayList<String>>();
	
	//HashMap<source of ICC, destinations of ICC>
	public HashMap<String, ArrayList<String>> iccMapping = new HashMap<String, ArrayList<String>>();
	
	/*
	 * Constructor
	 */
	public ReadEpiccResult(String epiccFile)
	{
		this.epiccFile = epiccFile;
		try {
			ReadActivityAliases();
			ReadActivities();
			ReadServices();
			ReadICCInfo();
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
	}
	
	/*
	 * This function reads the ICC information from epicc file
	 */
	private void ReadICCInfo() throws IOException 
	{
		BufferedReader br = new BufferedReader(new FileReader(epiccFile));
		String line;
	    while((line = br.readLine()) != null) 
	    {
	    	if(line.startsWith("The following ICC values were found:"))
	    		break;
	    }
		
	    ReadIntentValues(br);
	    //DumpIntentValues();
		br.close();
		
	}

	private void ReadServices() throws IOException 
	{
		BufferedReader br = new BufferedReader(new FileReader(epiccFile));
		String line;
	    while((line = br.readLine()) != null) 
	    {
	    	if(line.startsWith("  Services:"))
	    		break;
	    }
		
		//br points to the first service name
		line = br.readLine();
		
		//read the first activity, return the next activity name
		line = ReadEachService(br, line);
		while(!(line.isEmpty()))
		{
			line = ReadEachService(br, line);
		}
		
		//DumpServices();
		br.close();
		
	}

	private void ReadActivityAliases() throws IOException 
	{
		// TODO Auto-generated method stub
		
	}

	/*
	 * This function reads all the entries in Activities section
	 */
	private void ReadActivities() throws IOException
	{
		BufferedReader br = new BufferedReader(new FileReader(epiccFile));
		
		String line;
	    while((line = br.readLine()) != null) 
	    {
	    	if(line.startsWith("  Activities:"))
	    		break;
	    }
		
		//br points to the first activity name
		line = br.readLine();
		
		//read the first activity, return the next activity name
		line = ReadEachActivity(br, line);
		while(!(line.isEmpty()))
		{
			line = ReadEachActivity(br, line);
		}
		//DumpActivities();
		br.close();
	}
	

	/*
	 * This function reads all the entries in Activities section
	 */
	private void ReadIntentValues (BufferedReader br) throws IOException
	{
		//br points to the name of ICC source
		String line = br.readLine();
		
		//this while is one loop per Intent
		while(line != null)
		{	
			String source = line;
			ArrayList<String> dests = new ArrayList<String>();

			//move to the possible values for that intent
			br.readLine();
			
			//move to the first intent value
			line = br.readLine();
			//this while is one loop per Intent value
			while(!line.isEmpty())
			{
				dests.add(ExtractIntentValue(line));
				line = br.readLine();
			}
			
			iccMapping.put(source, dests);
			
			//read next line, if 'line' is not null, that means there is another intent
			line = br.readLine();
		}
	}
	
	private String ExtractIntentValue(String line) {
		//if the intent is trying to perform an action
		if(line.startsWith("Action: "))
		{
			line = line.replace("Action: ", "");
			line = line.substring(0, line.indexOf(','));
			
			//now we get the action, try to find the match activity or service
			for(String activity: activities.keySet())
			{
				for(String action: activities.get(activity))
				{
					if(line.equals(action))
						line = activity;
				}
			}
		}
		//else intent is directly activating an activity or service
		else
		{
			line = line.substring(line.indexOf("Class: "));
			line = line.replace("Class: ", "");
			line = line.substring(0,line.indexOf(','));
		}
		return line;
	}
	
	/*
	 * Print out activities info
	 */
	private void DumpActivities() 
	{
		for(String activityName: activities.keySet())
		{
			System.out.println("Activity Name: " + activityName);
			
			for(String action: activities.get(activityName))
			{
				System.out.println("    Actions: " + action);
			}
			System.out.println();
		}
	}

	/*
	 * Print out Services info
	 */
	private void DumpServices() 
	{
		for(String serviceName: services.keySet())
		{
			System.out.println("Service Name: " + serviceName);
			
			for(String action: services.get(serviceName))
			{
				System.out.println("    Actions: " + action);
			}
			System.out.println();
		}
	}
	
	private void DumpIntentValues()
	{
		for(String source: iccMapping.keySet())
		{
			System.out.println("Intent Name: " + source);
			
			for(String dest: iccMapping.get(source))
			{
				System.out.println("    Destination: " + dest);
			}
			System.out.println();
		}
	}
	
	/*
	 * This function reads each activity in Activities section
	 */
	private String ReadEachActivity(BufferedReader br, String actName) 
			throws IOException {
		
		String line = br.readLine();
		while(line.contains("      Intent filter:"))
		{			
			//br points to 'Actions'
			line = br.readLine();
			ExtractActions(activities, line, actName);
			
			//br points to 'Categories'
			br.readLine();
			
			//br points to next line
			//if line is "      Intent filter:", that means we have another intent filter to read
			//else we hit another activity, return with that activity name
			line = br.readLine();
		}
		
		return line;
	}

	/*
	 * This function reads each service in Services section
	 */
	private String ReadEachService(BufferedReader br, String actName) 
			throws IOException {
		
		String line = br.readLine();
		while(line.contains("      Intent filter:"))
		{			
			//br points to 'Actions'
			line = br.readLine();
			ExtractActions(services, line, actName);
			
			//br points to 'Categories'
			br.readLine();
			
			//br points to next line
			//if line is "      Intent filter:", that means we have another intent filter to read
			//else we hit another activity, return with that activity name
			line = br.readLine();
		}
		
		return line;
	}
	/*
	 * Extract actions from string, using regular expression
	 * Store the info into activities structure
	 */
	private void ExtractActions(HashMap<String, ArrayList<String>> data, String line, String componentName) 
	{
		ArrayList<String> actions = new ArrayList<String>();
		
		Pattern p = Pattern.compile("([\\w\\.]+)\\s*[,\\]]");
	    Matcher m = p.matcher(line);
	    while (m.find()) {
	    	if (m.groupCount() > 0)
	    		actions.add(m.group(1));
	    }
	    
	    componentName = componentName.replaceFirst("\\s+", "");
	    
	    if(data.containsKey(componentName))
	    {
	    	data.get(componentName).addAll(actions);
	    }
	    else
	    {
	    	data.put(componentName, actions);
	    }
		return;
		
	}
	
	/*
	public static void main(String[] args)
	{
		ReadEpiccResult rer = new ReadEpiccResult("./noteslist.epicc");
		return;
	}
	*/
	 
}

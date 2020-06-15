package mySoot;

import mySoot.preprocessor.DexFile;
import mySoot.util.*;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;

import soot.*;
import soot.jimple.DoubleConstant;
import soot.jimple.FloatConstant;
import soot.jimple.IntConstant;
import soot.jimple.JasminClass;
import soot.jimple.Jimple;
import soot.jimple.JimpleBody;
import soot.jimple.LongConstant;
import soot.jimple.Stmt;
import soot.jimple.internal.JNewArrayExpr;
import soot.jimple.internal.JNewExpr;
import soot.util.Chain;
import soot.util.JasminOutputStream;

public class AnalyzerMain {

	public static String CLASSPATH;
	public static String DEX_FULLPATH;
	//public static String ANDROID;	
	public static String OUTPUT;
	public static String LIB_DIR;
	public static String API_PERMISSION_MAP;
	public static String API_PERMISSION_MAP_PSCOUT;
	public static String LOG;
	public static String LOG_DOT;
	public static String API_LOCAL_LOG;
	public static String API_LOCAL_DOT;
	public static String API_GLOBAL_LOG;
	public static String API_GLOBAL_DOT;
	public static String DDG_LOCAL_DOT;
	public static String DDG_GLOBAL_DOT;
	public static String DDG_GLOBAL_SUCCINCT_DOT;
	public static String DDG_GLOBAL_CXL;
	public static String DDG_GLOBAL_GXL_DIR;
	public static String VPT_CXL_1;
	public static String VPT_CXL_2;
	public static String MAL_FEATURE_LOG;
	public static String BENIGN_FEATURE_LOG;
	public static String ACTIVITY_LOG;
	public static String GSPAN_LOG;
	public static String SENSITIVEAPIDUMP_DOT;
	public static String INDEXTOSIG;
	public static String CONF;
	public static String MANIFEST_FILE;
	public static String GRAPH_MATCHING_TOOLKIT_DIR;
	public static String OUTPUT_DIR;
	
	public static String VULNERABILITY_TEST_RESULT;
	
	public static String COMMON_LOGGING;
	public static String COMMON_CODEC;
	public static String HTTP_CLIENT;
	public static String HTTP_CORE;
	
	public static String JAVA_AWT;
	
	public static String JODA_TIME;
	public static String JODA_CONVERT;
	public static String XML_PARSER_APIS;
	public static String XML_APIS;
	public static String SIGNPOST_CORE;
	public static String SIGNPOST_COMMONSHTTP;
	public static String JSR305;
	public static String SLF4J_API;
	public static String LOG4J;
	public static String AMAZON_MAPS;
	public static String AMAZON_DEVICE_MESSAGING;
	public static String LIB_PHONE_NUMBER;
	public static String JAVAX_SERVLET;
	public static String ROME;
	public static String JDOM;
	public static String AD_SDK;
	
	public static String ANDROID_19;
	public static String ANDROID_18;
	public static String ANDROID_17;
	public static String ANDROID_16;
	public static String ANDROID_15;
	public static String ANDROID_10;
	public static String ANDROID_8;
	public static String ANDROID_7;
	public static String ANDROID_4;
	public static String ANDROID_3;
	
	public static String GOOGLE_MAPS_17;
	public static String GOOGLE_MAPS_16;
	public static String GOOGLE_MAPS_15;
	public static String GOOGLE_MAPS_10;
	public static String GOOGLE_MAPS_8;
	public static String GOOGLE_MAPS_7;
	public static String GOOGLE_MAPS_4;
	public static String GOOGLE_MAPS_3;
	
	public static String GOOGLE_ANALYTICS;
	public static String GOOGLE_ANALYTICS_V2;
	public static String GOOGLE_ADMOB_ADS;
	
	public static String INFO_SOURCE;
	public static String INFO_SINK;
	
	public static String APPNAME;
	public static int EFFECTIVE_GRAPH_SIZE_LIMIT = 3;
	
	public static FindUncalledMethodsTransformer findUncalledMethodsTransformer;
	public static FindUncalledOverridingMethodsTransformer findUncalledOverridingMethodsTransformer;
	public static FindEntryPointsTransformer findEntryPointsTransformer;
	public static APISubGraphTransformer apiSubGraphTransformer;
	public static GlobalAPISubGraphTransformer globalAPISubGraphTransformer;
	public static GlobalBackwardDataflowAnalysis globalBackwardDataflowAnalysis;
	public static GlobalForwardDataflowAnalysis globalForwardDataflowAnalysis;
	private FindSourcesTransformer findSourcesTransformer;
	private FlowSourceTransformer flowSourceTransformer;
	private FlowSinkTransformer flowSinkTransformer;
	public static RecursionDetectionTransformer recursionDetectionTransformer;
	public static PointsToAnalysisTransformer pointsToAnalysisTransformer;
	private PackageNameTransformer pkgTransformer;
	
	public static LinkedHashMap<String, String> entryPoints;
	public static List<String> appUncalledMethods;
	public static List<String> appMethods;
	public static List<String> appCalledMethods;
	public static List<String> uncalledOverridingFrameworkMethods;
	private OnCreateTransformer m_OnCreateTransformer;
	
	public static LinkedHashMap<String, LinkedHashMap<String, String>> sourcesLocationMap = new LinkedHashMap<String, LinkedHashMap<String, String>>();
	public static LinkedHashMap<String, Integer> sources;
	public static LinkedHashMap<String, Integer> sinks;
	
	//these two data structures are used to contain the merged graph info for both forward and backward analysis
	//nodeStruct: first string is the node signature, second LinkedList<String> is the attributes.
	//edgeStruct: first string is the source node signature, second string is the destination node signature.
	//reversedEdgeStruct: first string is the destination node signature, second string is the source node signature.
	public static LinkedHashMap<String, LinkedList<String>> nodeStruct = new LinkedHashMap<String, LinkedList<String>>();
	public static LinkedHashMap<String, LinkedList<String>> edgeStruct = new LinkedHashMap<String, LinkedList<String>>();
	public static LinkedHashMap<String, LinkedList<String>> reversedEdgeStruct = new LinkedHashMap<String, LinkedList<String>>();
	public static int API_LEVEL = 0;
	
	public static List<String> unloadedClasses = new ArrayList<String>();
	
	public static void main(String[] args){
		
		String arg1 = args[0];
		DEX_FULLPATH = args[1];
		
		
		
		if(args.length > 2)
			API_LEVEL = Integer.parseInt(args[2]);
		
		System.err.println("API level in soot: " + API_LEVEL);
		
		CLASSPATH = arg1 + "/";
		String filename = arg1.substring(arg1.lastIndexOf('/')+1);
		OUTPUT = "output" + "_" + filename;
				
		File directory = new File(".");
		String pwd = "";
		try{
			pwd = directory.getAbsolutePath();
		}catch(Exception e){
			System.out.println(e.getMessage());
			System.err.println("java -Xss4m -Xmx1024m -cp $JASMIN:$SOOTCLASS:$POLYGLOT:$ANDROID:. mySoot.AnalyzerMain $CURR_DIR/apks/$FILENAME > $OUTPUT");
			System.exit(-1);
		}
		
		APPNAME = filename;
		OUTPUT_DIR = pwd + "/../output/";
		LIB_DIR = pwd + "/../sdk/platforms/default/";
		LOG = OUTPUT_DIR + filename + ".log";
		LOG_DOT = OUTPUT_DIR + filename + ".log.dot";
		API_LOCAL_LOG = OUTPUT_DIR + filename + ".api.local.log";
		API_LOCAL_DOT = OUTPUT_DIR + filename + ".api.dot";
		API_GLOBAL_LOG = OUTPUT_DIR + filename + ".api.global.log";
		API_GLOBAL_DOT = OUTPUT_DIR + filename + ".api.global.dot";
		DDG_LOCAL_DOT = OUTPUT_DIR + filename + ".ddg.local.dot";
		DDG_GLOBAL_DOT = OUTPUT_DIR + filename + ".ddg.global.dot";
		DDG_GLOBAL_SUCCINCT_DOT = OUTPUT_DIR + filename + ".ddg.global.succinct.dot";
		DDG_GLOBAL_CXL = OUTPUT_DIR + filename + ".ddg.global.cxl";
		VPT_CXL_1 = OUTPUT_DIR + ".vpt.1.cxl";
		VPT_CXL_2 = OUTPUT_DIR + ".vpt.2.cxl";
		DDG_GLOBAL_GXL_DIR = OUTPUT_DIR + "gxl_file/";
		MAL_FEATURE_LOG = OUTPUT_DIR + "malware" + ".arff";
		BENIGN_FEATURE_LOG = OUTPUT_DIR + "benign" + ".arff";
		ACTIVITY_LOG = OUTPUT_DIR + filename + ".activity.log";
		GSPAN_LOG = OUTPUT_DIR + filename + ".gSpan.log";
		INDEXTOSIG = OUTPUT_DIR + "indexToSigInfo.log";
		SENSITIVEAPIDUMP_DOT = OUTPUT_DIR + filename + "sensitiveAPIDump.dot"; 
		CONF = pwd + "/../config/android-sdk-version.conf";
		API_PERMISSION_MAP = pwd + "/../permissionmap/APICalls.txt";
		API_PERMISSION_MAP_PSCOUT = pwd + "/../pscout/jellybean_publishedapimapping.txt";
		MANIFEST_FILE = pwd + "/../output/" + "AndroidManifest.xml";
		GRAPH_MATCHING_TOOLKIT_DIR = pwd + "/../GraphMatchingToolkit_v1.1.2/";
		
		VULNERABILITY_TEST_RESULT = pwd + "/../output/" + "vulnerability_result";
		
		Log.init(LOG);
		Log.init(API_LOCAL_LOG);
		Log.init(API_LOCAL_DOT);
		Log.init(API_GLOBAL_LOG);
		Log.init(API_GLOBAL_DOT);
		Log.init(DDG_LOCAL_DOT);
		Log.init(DDG_GLOBAL_DOT);
		Log.init(DDG_GLOBAL_SUCCINCT_DOT);
		Log.init(DDG_GLOBAL_CXL);
		Log.init(VPT_CXL_1);
		Log.init(VPT_CXL_2);
		Log.initAppending(MAL_FEATURE_LOG);
		Log.initAppending(BENIGN_FEATURE_LOG);
		Log.init(ACTIVITY_LOG);
		Log.init(GSPAN_LOG);
		Log.init(SENSITIVEAPIDUMP_DOT);
		
		if(MyConstants.OVERWRITE_CONFIG){
			Config.configure(CONF);
		}else{
			Config.ReadSDKVersion(MANIFEST_FILE);
		}
		
		SensitiveAPICategory.init();
		
		Calendar cal = Calendar.getInstance();
	    SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd hh:mm:ss aaa z");
		Log.dumpln(LOG, "Analysis starts at " + (sdf.format(cal.getTime())));
				
		COMMON_LOGGING = LIB_DIR + MyConstants.ORG_APACHE_COMMONS_LOGGING;
		COMMON_CODEC = LIB_DIR + MyConstants.ORG_APACHE_COMMONS_CODEC;
		HTTP_CLIENT = LIB_DIR + MyConstants.ORG_APACHE_HTTP_CLIENT;
		HTTP_CORE = LIB_DIR + MyConstants.ORG_APACHE_HTTP_CORE;
		JODA_TIME = LIB_DIR + MyConstants.JODA_TIME;
		JODA_CONVERT = LIB_DIR + MyConstants.JODA_CONVERT;
		XML_PARSER_APIS = LIB_DIR + MyConstants.XML_PARSER_APIS;
		XML_APIS = LIB_DIR + MyConstants.XML_APIS;
		JAVA_AWT = LIB_DIR + MyConstants.JAVA_AWT;
		SIGNPOST_CORE = LIB_DIR + MyConstants.SIGNPOST_CORE;
		SIGNPOST_COMMONSHTTP = LIB_DIR + MyConstants.SIGNPOST_COMMONSHTTP;
		JSR305 = LIB_DIR + MyConstants.JSR305;
		SLF4J_API = LIB_DIR + MyConstants.SLF4J_API;
		LOG4J = LIB_DIR + MyConstants.LOG4J;
		AMAZON_MAPS = LIB_DIR + MyConstants.AMAZON_MAPS;
		AMAZON_DEVICE_MESSAGING = LIB_DIR + MyConstants.AMAZON_DEVICE_MESSAGING;
		LIB_PHONE_NUMBER = LIB_DIR + MyConstants.LIB_PHONE_NUMBER;
		JAVAX_SERVLET = LIB_DIR + MyConstants.JAVAX_SERVLET;
		ROME = LIB_DIR + MyConstants.ROME;
		JDOM = LIB_DIR + MyConstants.JDOM;
		AD_SDK = LIB_DIR + MyConstants.AD_SDK;
		
		ANDROID_19 = LIB_DIR + MyConstants.ANDROID_19;
		ANDROID_18 = LIB_DIR + MyConstants.ANDROID_18;
		ANDROID_17 = LIB_DIR + MyConstants.ANDROID_17;
		ANDROID_16 = LIB_DIR + MyConstants.ANDROID_16;
		ANDROID_15 = LIB_DIR + MyConstants.ANDROID_15;
		ANDROID_10 = LIB_DIR + MyConstants.ANDROID_10;
		ANDROID_8 = LIB_DIR + MyConstants.ANDROID_8;
		ANDROID_7 = LIB_DIR + MyConstants.ANDROID_7;
		ANDROID_4 = LIB_DIR + MyConstants.ANDROID_4;
		ANDROID_3 = LIB_DIR + MyConstants.ANDROID_3;
		
		GOOGLE_MAPS_17 = LIB_DIR + MyConstants.GOOGLE_MAPS_17;
		GOOGLE_MAPS_16 = LIB_DIR + MyConstants.GOOGLE_MAPS_16;
		GOOGLE_MAPS_15 = LIB_DIR + MyConstants.GOOGLE_MAPS_15;
		GOOGLE_MAPS_10 = LIB_DIR + MyConstants.GOOGLE_MAPS_10;
		GOOGLE_MAPS_8 = LIB_DIR + MyConstants.GOOGLE_MAPS_8;
		GOOGLE_MAPS_7 = LIB_DIR + MyConstants.GOOGLE_MAPS_7;
		GOOGLE_MAPS_4 = LIB_DIR + MyConstants.GOOGLE_MAPS_4;
		GOOGLE_MAPS_3 = LIB_DIR + MyConstants.GOOGLE_MAPS_3;
		
		GOOGLE_ANALYTICS = LIB_DIR + MyConstants.GOOGLE_ANALYTICS;
		GOOGLE_ANALYTICS_V2 = LIB_DIR + MyConstants.GOOGLE_ANALYTICS_V2;
		GOOGLE_ADMOB_ADS = LIB_DIR + MyConstants.GOOGLE_ADMOB_ADS;
		
		System.out.println("processing package " + filename + " under " + CLASSPATH + ", output directory:" + OUTPUT);
		
		AnalyzerMain analyzer = new AnalyzerMain();
		analyzer.run();
		
		
		
	}
		
	private String getLibs() {
		Config.ANDROID_API_LEVEL = 19;
		
		String third_party_libs = JAVAX_SERVLET + ":" + COMMON_CODEC + ":" + HTTP_CORE + ":" + JODA_TIME + ":"
					+ GOOGLE_ADMOB_ADS + ":" + GOOGLE_ANALYTICS + ":" + COMMON_LOGGING + ":" + HTTP_CLIENT + ":"
					+ XML_PARSER_APIS + ":" + XML_APIS + ":" + JAVA_AWT + ":" + JODA_CONVERT + ":"
					+ SIGNPOST_CORE + ":" + JSR305 + ":" + SLF4J_API + ":" + LOG4J + ":" + AMAZON_MAPS + ":"
					+ AMAZON_DEVICE_MESSAGING + ":" + SIGNPOST_COMMONSHTTP + ":" + LIB_PHONE_NUMBER + ":" 
					+ ROME + ":" + JDOM + ":" + AD_SDK;

		switch(Config.ANDROID_API_LEVEL)
		{
		case 1:
		case 2:	
		case 3:
		{
			return ANDROID_3 + ":" + GOOGLE_MAPS_3 + ":" + third_party_libs;
		}
	
		case 4:
		{
			return  ANDROID_4 + ":" + GOOGLE_MAPS_4 + ":" + third_party_libs;
		}
		
		case 5:
		case 6:
		case 7:
		{
			return ANDROID_7 + ":" + GOOGLE_MAPS_7 + ":" + third_party_libs;
		}
			
		case 8:
		{
			return ANDROID_8 + ":" + GOOGLE_MAPS_8 + ":" + third_party_libs;
		}
		
		case 9:
		case 10:
		{
			return ANDROID_10 + ":" + GOOGLE_MAPS_10 + ":" + third_party_libs;
		}
		
		case 11:
		case 12:
		case 13:
		case 14:
		case 15:
		{
			return ANDROID_15 + ":" + GOOGLE_MAPS_15 + ":" + third_party_libs;
		}
			
		case 16:
		{
			return ANDROID_16 + ":" + GOOGLE_MAPS_16 + ":" + third_party_libs;
		}
		
		case 17:
		{
			return ANDROID_17 + ":" + GOOGLE_MAPS_17 + ":" + third_party_libs;
		}
		case 18:
		case 19:
		{
			return ANDROID_19 + ":" + GOOGLE_MAPS_17 + ":" + third_party_libs;
		}
		
		default:
			return ANDROID_17 + ":" + GOOGLE_MAPS_17 + ":" + third_party_libs;
		}
		
					
	}	
	
	private void run(){
		
		AndroidSourceSinkSummary.buildSourceAndSinkSummary();
		AndroidFunctionSummary.buildFunctionSummary();
		try{
			unloadClasses();
		}catch(Exception e){
			System.err.println("FAIL to process dex file!");
		}
		/*
		System.out.println("finding out all classes...");
		findNaiveEntryPoints();
		entryPoints = m_OnCreateTransformer.getClassToMethod();
		G.reset();
		*/
		
		findUncalledMethods();
		appMethods = findUncalledMethodsTransformer.getAppMethods();
		appCalledMethods = findUncalledMethodsTransformer.getCalledMethods();
		appUncalledMethods = new ArrayList<String>();
		for(String appMethod : appMethods){
			if(!appCalledMethods.contains(appMethod)){
				if(!appUncalledMethods.contains(appMethod)){
					appUncalledMethods.add(appMethod);
				}
			}
		}
		System.out.println(appUncalledMethods.size() + " Uncalled Methods:");
		for(String appUncalledMethod : appUncalledMethods){
			System.out.println(appUncalledMethod);
		}
		
		
		G.reset();
		
		findUncalledOverridingMethods();
		uncalledOverridingFrameworkMethods = findUncalledOverridingMethodsTransformer.getUncalledOverridingFrameworkMethods();
		
		System.out.println(uncalledOverridingFrameworkMethods.size() + " Uncalled Overriding Framework Methods:");
		for(String override : uncalledOverridingFrameworkMethods){
			System.out.println(override);
		}
		G.reset();
		
		
		simpleOptimization();
		G.reset();
		
		//findPackages();
		//G.reset();
		
		//addMain();
		//G.reset();
		
		//doPointsToAnalysis();
		//G.reset();
		
		
		entryPoints = findUncalledOverridingMethodsTransformer.getClassToMethod();
		System.out.println("looking for all sources and sinks in the program...");
		scanForSourcesAndSinks();
		G.reset();
		sources = findSourcesTransformer.getSources();
		sinks = findSourcesTransformer.getSinks();
		
		System.out.println("locating all sources...");
		
		Set<String> keySet = sinks.keySet();
		Iterator<String> iter = keySet.iterator();
		while(iter.hasNext()){
			String signature = iter.next();
			
			INFO_SINK = signature;
			//if(MyConstants.DEBUG_INFO)
				System.out.println("INFO_SINK: " + signature);
			locateSinks();
			G.reset();
			sourcesLocationMap.put(signature, flowSinkTransformer.getClassToMethod());
		}
	
		doGlobalBackwardDataflowAnalysis();
		G.reset();
		sourcesLocationMap.clear();
		
		
		Set<String> keySetSource = sources.keySet();
		Iterator<String> iterSource = keySetSource.iterator();
		
		// Go through every source to store entry points info into 'sourcesLocationMap'
		while(iterSource.hasNext()){
			String signature = iterSource.next();
			
			INFO_SOURCE = signature;
			//if(MyConstants.DEBUG_INFO)
				System.out.println("INFO_SOURCE: " + signature);
			
			// get the declaring class of method where INFO_SOURCE gets called
			locateSources();
			G.reset();
			sourcesLocationMap.put(signature, flowSourceTransformer.getClassToMethod());
		}
		
		G.reset();
		doGlobalForwardDataflowAnalysis();
		
		
		dumpDDGSetToCXL(nodeStruct, edgeStruct, DDG_GLOBAL_CXL);
		
		//G.reset();
		//recursionDetector();
		//buildGlobalAPISubGraph();
		
		//simpleAPILookup();
		//buildAPISubGraph();
	}
	
	private void dumpDDGSetToCXL(LinkedHashMap<String, LinkedList<String>> nodes,
			LinkedHashMap<String, LinkedList<String>> edges,
			String fileName)
	{
		Log.dumpln(fileName, "<?xml version=\"1.0\"?>");
		Log.dumpln(fileName, "<GraphCollection>");
		Log.dumpln(fileName, "<graphs>");
		
		//This structure contains all the nodes in connected graphs in the whole DDG.
		LinkedList<LinkedHashMap<String, LinkedList<String>>> subGraphSetNodes = new LinkedList<LinkedHashMap<String, LinkedList<String>>>();
		//This structure contains all the edges in connected graph in the whole DDG.
		LinkedList<LinkedHashMap<String, LinkedList<String>>> subGraphSetEdge = new LinkedList<LinkedHashMap<String, LinkedList<String>>>();
		getAllConnectedGraphs(subGraphSetNodes, subGraphSetEdge);
		
		//dump each connected graph
		int numOfGraphs = subGraphSetNodes.size();
		//effective graph means a graph contains more than 3 nodes
		int numOfEffectiveGraphs = 0;
		
		for(int i = 0; i < numOfGraphs; i++)
		{
			if(subGraphSetNodes.get(i).size() < EFFECTIVE_GRAPH_SIZE_LIMIT)
				continue;
			
			numOfEffectiveGraphs++;
			Log.dumpln(fileName, "<print file=\"" + APPNAME + numOfEffectiveGraphs + ".gxl\"/>");
			Log.dumpln(fileName,"<!--" + subGraphSetNodes.get(i).size() + "-->");
			String file = DDG_GLOBAL_GXL_DIR + APPNAME + numOfEffectiveGraphs + ".gxl";
			dumpDDGtoGXL(subGraphSetNodes.get(i), subGraphSetEdge.get(i), file);
			
			//if(HasVulnerability(subGraphSetNodes.get(i), subGraphSetEdge.get(i)))
			{
				//System.err.println("this app is vulnerable!");
				//Log.dumpln(VULNERABILITY_TEST_RESULT, APPNAME + " is vulnerabale!");
			}
		}
		
		System.err.println("Has " + numOfEffectiveGraphs + " effective graphs");
		Log.dumpln(fileName, "</graphs>");
		Log.dumpln(fileName, "</GraphCollection>");
	}

	
	private boolean HasVulnerability(
			LinkedHashMap<String, LinkedList<String>> nodeSet,
			LinkedHashMap<String, LinkedList<String>> edgeSet) 
	{
		for(String node: nodeSet.keySet())
		{
			if(Contain(MyConstants.SOURCES, node) && HasSinkSuccessorWOCipher(node, edgeSet))
			{
				return true;
			}
		}
		return false;
	}

	private boolean HasSinkSuccessorWOCipher(String nodeSig, LinkedHashMap<String, LinkedList<String>> edgeSet) 
	{
		LinkedList<String> succs = edgeStruct.get(nodeSig);
		if(succs  == null || succs.isEmpty())
			return false;
		
		LinkedList<String> allSuccs = new LinkedList<String>();
		for(String p: succs)
			allSuccs.add(p);
		
		while(!succs.isEmpty())
		{
			String currentSucc = succs.remove();
			//LinkedList<String> attrs = nodeStruct.get(succ);
			if(currentSucc.toLowerCase().contains("cipher"))
				return false;
			
			if(Contain(MyConstants.SINKS, currentSucc))
			{
				return true;
			}
			
			LinkedList<String> succsList = edgeStruct.get(currentSucc);
			
			if(succsList == null || succsList.isEmpty())
				continue;
			
			for(String succ: succsList)
			{
				if(!allSuccs.contains(succ))
				{
					allSuccs.add(succ);
					succs.add(succ);
				}
			}
		}//end of while
		return false;
	}

	private boolean Contain(String[] strArray, String str)
	{
		int size = strArray.length;
		for(int i = 0; i < size; i++)
		{
			if(str.contains(strArray[i]))
				return true;
		}
		return false;
	}
	// This function is to dump all the connected graph to subGraphSetNodes and subGraphSetEdges.
	// Called by dumpDDGSetToCXL().
	private void getAllConnectedGraphs(
			LinkedList<LinkedHashMap<String, LinkedList<String>>> subGraphSetNodes,
			LinkedList<LinkedHashMap<String, LinkedList<String>>> subGraphSetEdges) 
	{
		//get entry points in the graph
		//LinkedList<String> entryPoints = nodeStruct.keySet();//getEntryPoints();
		LinkedList<String> entryPoints = new LinkedList<String>();
		for(String node: nodeStruct.keySet())
			entryPoints.add(node);
		
		//for each entry point, we dump the subgraph into subGraphEdges structure. 
		//If the subgraph contains any node that is already in existing subgraph, we combine these two subgraphs
		for(String entryPoint: entryPoints)
		{
			LinkedHashMap<String, LinkedList<String>> subGraphEdges = new LinkedHashMap<String, LinkedList<String>>();
			
			LinkedHashMap<String, LinkedList<String>> nodeInSubGraph = new LinkedHashMap<String, LinkedList<String>>();
			LinkedList<String> queue = new LinkedList<String>();
			queue.add(entryPoint);
			
			nodeInSubGraph.put(entryPoint, nodeStruct.get(entryPoint));
			
			while(!queue.isEmpty())
			{
				String source = queue.remove();
				LinkedList<String> dests = edgeStruct.get(source);
				
				if(dests == null || dests.isEmpty())
					continue;
				
				for(String dest: dests)
				{
					if(!nodeInSubGraph.containsKey(dest))
					{
						queue.add(dest);
						nodeInSubGraph.put(dest, nodeStruct.get(dest));
					}
				}
				
				subGraphEdges.put(source, dests);
			}//end of while
			
			int subGraphIndex = hasSameNodeInExisting(subGraphSetNodes, nodeInSubGraph);
			
			//if we find new graph has same node with the existing graph then combine them.
			//else add new graph.
			if(subGraphIndex != -1)
			{
				combineSubGraphsEdges(subGraphSetEdges.get(subGraphIndex), subGraphEdges);
				combineSubGraphsNodes(subGraphSetNodes.get(subGraphIndex), nodeInSubGraph);
			}
			else
			{
				subGraphSetEdges.add(subGraphEdges);
				subGraphSetNodes.add(nodeInSubGraph);
			}
				
		}//end of entry point loop
	}

	//This function is to check whether a given subgraph is actually a part of existing subgraph
	private int hasSameNodeInExisting(LinkedList<LinkedHashMap<String, LinkedList<String>>> subGraphSetNodes, 
			LinkedHashMap<String, LinkedList<String>> nodeInSubGraph) 
	{
		int size = subGraphSetNodes.size();
		
		for(String node: nodeInSubGraph.keySet())
		{
			for(int i = 0; i < size; i++)
			{
				if(subGraphSetNodes.get(i).containsKey(node))
					return i;
			}
		}
		return -1;
	}
	
	private void combineSubGraphsNodes(
			LinkedHashMap<String, LinkedList<String>> existingSubGraphNodes,
			LinkedHashMap<String, LinkedList<String>> subGraphNodes) 
	{
		for(String node: subGraphNodes.keySet())
		{
			if(!existingSubGraphNodes.containsKey(node))
			{
				LinkedList<String> attr = subGraphNodes.get(node);
				existingSubGraphNodes.put(node, attr);
			}
		}
		
	}
	
	private void combineSubGraphsEdges(
			LinkedHashMap<String, LinkedList<String>> existingSubGraphEdges,
			LinkedHashMap<String, LinkedList<String>> subGraphEdges)
	{
		for(String node: subGraphEdges.keySet())
		{
			if(!existingSubGraphEdges.containsKey(node))
			{
				LinkedList<String> dests = subGraphEdges.get(node);
				existingSubGraphEdges.put(node, dests);
			}
			else
			{
				LinkedList<String> existingDests = existingSubGraphEdges.get(node);
				LinkedList<String> dests = subGraphEdges.get(node);
				for(String dest: dests)
				{
					if(!existingDests.contains(dest))
						existingDests.add(dest);
				}
			}
		}
		
	}

	//This function returns entry points (nodes without predecessor)
	//called by getAllConnectedGraphs()
	private LinkedList<String> getEntryPoints() 
	{
		LinkedList<String> entryPoints = new LinkedList<String>();
		
		for(String node: nodeStruct.keySet())
		{
			//if reversedEdgeStruct contains node, that means the node has at least one predecessor
			if(reversedEdgeStruct.containsKey(node))
				continue;
			else
			{
				entryPoints.add(node);
				//System.err.println("entry point: " + node);
			}
		}
		
		//System.err.println("Have " + entryPoints.size() + " entry points in total");
		return entryPoints;
	}

	// This function is to dump the combined graph to GXL format
	private void dumpDDGtoGXL(LinkedHashMap<String, LinkedList<String>> nodes,
			LinkedHashMap<String, LinkedList<String>> edges,
			String fileName) 
	{
		Log.init(fileName);
		Log.dumpln(fileName, "<?xml version=\"1.0\"?>");
		Log.dumpln(fileName, "<gxl>");
		
		String file = fileName.replace(DDG_GLOBAL_GXL_DIR, "");
		Log.dumpln(fileName, "<graph id=\"" + file + "\">");
		
		LinkedHashMap<String, Integer> nodeToIndex = new LinkedHashMap<String, Integer>();
		int index = 1;
		
		//dump nodes
		for(String node: nodes.keySet())
		{
			nodeToIndex.put(node, index);
			LinkedList<String> attr = nodes.get(node);
			dumpNode(index, attr, fileName);
			index++;
		}
		
		//dump edges
		for(String edge: edges.keySet())
		{
			LinkedList<String> dests = edges.get(edge);
			
			for(String dest: dests)
			{
				int sourceIndex = nodeToIndex.get(edge);
				int destIndex = nodeToIndex.get(dest);
				dumpEdge(sourceIndex, destIndex, fileName);
			}
		}
		
		Log.dumpln(fileName, "</graph>");
		Log.dumpln(fileName, "</gxl>");
	}
	

	// These two helper functions are to dump nodes and edges
	private void dumpNode(int index, LinkedList<String> attr, String fileName)
	{
		//dump node index
		Log.dumpln(fileName, "<node id=\"" + index + "\">");
		//dump attributes
		
		//gxl format file doesn't support '<' or '>' in the string
		String newattr0 = attr.get(0).replace('<', '(');
		newattr0 = newattr0.replace('>', ')');
		newattr0 = newattr0.replace("&", "");
		
		String newattr1 = attr.get(1).replace('<', '(');
		newattr1 = newattr1.replace('>', ')');
		newattr1 = newattr1.replace("&", "");
		
		String newattr2 = attr.get(2).replace('<', '(');
		newattr2 = newattr2.replace('>', ')');
		newattr2 = newattr2.replace("&", "");
		
		String newattr3 = attr.get(3).replace('<', '(');
		newattr3 = newattr3.replace('>', ')');
		newattr3 = newattr3.replace("&", "");
		
		String newattr4 = attr.get(4).replace('<', '(');
		newattr4 = newattr4.replace('>', ')');
		newattr4 = newattr4.replace("&", "");

		Log.dumpln(fileName, "<attr name=\"packageName\"><string>" + newattr0 + "</string></attr>");
		Log.dumpln(fileName, "<attr name=\"functionCategory\"><string>" + newattr1 + "</string></attr>");
		Log.dumpln(fileName, "<attr name=\"functionPrototype\"><string>" + newattr2 + "</string></attr>");
		Log.dumpln(fileName, "<attr name=\"entryPoints\"><string>" + newattr3 + "</string></attr>");
		Log.dumpln(fileName, "<attr name=\"parameters\"><string>" + newattr4 + "</string></attr>");
		
		Log.dumpln(fileName, "</node>");
	}
	
	private void dumpEdge(int sourceIndex, int destIndex, String fileName)
	{
		Log.dumpln(fileName, "<edge from=\"" + sourceIndex + "\" to=\"" + destIndex +"\">");
		Log.dumpln(fileName, "</edge>");
	}

	// Dump the graph to data structures. 
	// This function will be called twice by both backward and forward data flow analysis
	// so that two graphs could be combined
	public static void dumpDDGtoStructure(List<APIGraphNode> graph, boolean forwardAnalysis)
	{
		for(APIGraphNode node: graph)
		{
			String nodeSig = node.getHostMethod() + ": " + node.getStmt().toString();
			List<APIGraphNode> succNodes = node.getSuccessors();
			List<APIGraphNode> predNodes = node.getPredecessors();
			
			//fill the edge structure
			for(APIGraphNode succNode : succNodes)
			{
				String succ = succNode.getHostMethod() + ": " + succNode.getStmt().toString();
				
				if(edgeStruct.containsKey(nodeSig))
				{
					LinkedList<String> succs = edgeStruct.get(nodeSig);
					if(!succs.contains(succ))
					{
						succs.add(succ);
					}
				}
				else
				{
					LinkedList<String> succs = new LinkedList<String>();
					succs.add(succ);
					edgeStruct.put(nodeSig, succs);
				}
			}
			
			//fill the reversed edge structure
			for(APIGraphNode predNode : predNodes)
			{
				String pred = predNode.getHostMethod() + ": " + predNode.getStmt().toString();
				
				if(reversedEdgeStruct.containsKey(nodeSig))
				{
					LinkedList<String> preds = reversedEdgeStruct.get(nodeSig);
					if(!preds.contains(pred))
					{
						preds.add(pred);
					}
				}
				else
				{
					LinkedList<String> preds = new LinkedList<String>();
					preds.add(pred);
					reversedEdgeStruct.put(nodeSig, preds);
				}
			}
		}//end of edge loop
		
		for(APIGraphNode node: graph)
		{
			String nodeSig = node.getHostMethod() + ": " + node.getStmt().toString();
			
			if(nodeStruct.containsKey(nodeSig))
				continue;
			
			LinkedList<String> attr = new LinkedList<String>();
			
			SootMethod hostMethod = node.getHostMethod();
			Stmt statement = node.getStmt();
			
			//add package name
			attr.add(hostMethod.getDeclaringClass().getPackageName());
			
			
			if(statement.containsInvokeExpr())
			{
				String sig = statement.getInvokeExpr().getMethod().getSignature();
				//add function category
				if(SensitiveAPICategory.sensitiveAPICategories.containsKey(sig))
					attr.add(SensitiveAPICategory.sensitiveAPICategories.get(sig) + "#" + statement.getInvokeExpr().getMethod().getName());
				else
					attr.add(statement.getInvokeExpr().getMethod().getName());
				//add function prototype
				//attr.add(statement.getInvokeExpr().getMethod().getSignature());
				attr.add(statement.toString());
			}
			else
			{
				//add function category
				attr.add(" ");
				//add function prototype
				attr.add(statement.toString());
			}
			
			//add entry point
			List<SootMethod> entryMethods = new ArrayList<SootMethod>();
			GlobalForwardDataflowAnalysis.findEntryMethodsForMethodCall(node.getHostMethod(),entryMethods);
			SootMethod entryPoint;
			if(entryMethods.size() != 0)
				entryPoint = entryMethods.get(0);
			else
				entryPoint = hostMethod;
			
			attr.add(getEntryPointAttribute(entryPoint));
			
			//add parameters
			String paramsString = " ";
			if(forwardAnalysis)
			{
				if(statement.getTags().contains(GlobalForwardDataflowAnalysis.STRING_CONST_TAG))
				{
					paramsString = "CONST";
				}
			}
			else
			{
				if(statement.getTags().contains(GlobalBackwardDataflowAnalysis.STRING_CONST_TAG))
				{
					paramsString = "CONST";
				}
			}
			
			attr.add(paramsString);
			nodeStruct.put(nodeSig, attr);
						
		}//end of node loop
		
		//additional node loop is needed for CONST parameter propagation
		//TODO
		for(APIGraphNode node: graph)
		{
			String nodeSig = node.getHostMethod() + ": " + node.getStmt().toString();
			Stmt statement = node.getStmt();
			
			LinkedList<String> attrs = nodeStruct.get(nodeSig);
			
			//if the parameter field is already CONST, just break
			if(attrs.get(4).equals("CONST"))
				continue;
			
			if(ContainConstParameterAPIWithParameter(statement)
					&& HasConstPredessor(nodeSig))
				attrs.set(4, "CONST");
		}
		
		//Finally, delete all the java.lang.String::append
		for(APIGraphNode node: graph)
		{
			String nodeSig = node.getHostMethod() + ": " + node.getStmt().toString();
			Stmt statement = node.getStmt();
			
			if(statement.containsInvokeExpr()
					&& (nodeSig.contains("<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>")
						|| nodeSig.contains("<java.lang.String: java.lang.String replace(java.lang.CharSequence,java.lang.CharSequence)>")
						|| nodeSig.contains("<java.lang.String: boolean startsWith(java.lang.String)>")
						|| nodeSig.contains("<android.content.Intent: java.lang.String getAction()>")
						)
					)
			{
				nodeStruct.remove(nodeSig);
				RemoveFromEdgeStruct(nodeSig);
			}
			
			if(!statement.containsInvokeExpr())
			{
				nodeStruct.remove(nodeSig);
				RemoveFromEdgeStruct(nodeSig);
			}
		}
	}
	
	private static void RemoveFromEdgeStruct(String nodeSig) 
	{
		LinkedList<String> succs = edgeStruct.get(nodeSig);
		LinkedList<String> preds = reversedEdgeStruct.get(nodeSig);
		
		if(preds != null && !preds.isEmpty())
		{
			for(String pred : preds){
				
				LinkedList<String> predSuccs = edgeStruct.get(pred);
				if(predSuccs.contains(nodeSig))
					predSuccs.remove(nodeSig);
				
				if(succs == null || succs.isEmpty())
				{
					continue;
				}
				
				for(String succ: succs)
				{
					if(!predSuccs.contains(succ) && !succ.equals(nodeSig))
						predSuccs.add(succ);
				}
			}
		}
		
		if(succs != null && !succs.isEmpty())
		{
			for(String succ : succs){
				LinkedList<String> succPreds = reversedEdgeStruct.get(succ);
				succPreds.remove(nodeSig);
				if(succPreds.contains(nodeSig))
					succPreds.remove(nodeSig);
				
				if(preds == null || preds.isEmpty())
				{
					continue;
				}
				
				for(String pred: preds)
				{
					if(!succPreds.contains(pred) && !pred.equals(nodeSig))
						succPreds.add(pred);
				}
			}
		}
		
		edgeStruct.remove(nodeSig);
		reversedEdgeStruct.remove(nodeSig);

	}

	private static boolean HasConstPredessor(String nodeSig) 
	{
		LinkedList<String> preds = reversedEdgeStruct.get(nodeSig);
		if(preds  == null || preds.isEmpty())
			return false;
		
		LinkedList<String> allPreds = new LinkedList<String>();
		for(String p: preds)
			allPreds.add(p);
		
		while(!preds.isEmpty())
		{
			String source = preds.remove();
			
			LinkedList<String> attrs = nodeStruct.get(source);
			if(attrs.get(4).equals("CONST"))
			{
				return true;
			}
			
			LinkedList<String> predsList = reversedEdgeStruct.get(source);
			
			if(predsList == null || predsList.isEmpty())
				continue;
			
			for(String pred: predsList)
			{
				if(!allPreds.contains(pred))
				{
					allPreds.add(pred);
					preds.add(pred);
				}
			}
		}//end of while
		return false;
	}

	private static boolean ContainConstParameterAPIWithParameter(Stmt statement)
	{
		if(!statement.containsInvokeExpr())
			return false;
				
		if(!IsconstParameterAPI(statement))
			return false;
		else
			return true;
	}
	
	private static boolean IsconstParameterAPI(Stmt statement)
	{
		String apiSig = statement.getInvokeExpr().getMethod().getSignature();
		
		for(String api : MyConstants.constParameterAPIList)
		{
			if(apiSig.equals(api))
			{
				return true;
			}
		}
		return false;
	}
	
	// This helper function is to tell if the entry point is user interactive function based on the entry point list.
	private static String getEntryPointAttribute(SootMethod entryPoint) 
	{
		
		SootClass clazz = entryPoint.getDeclaringClass();
		while(clazz.hasSuperclass() && clazz.isApplicationClass())
		{					
			clazz = clazz.getSuperclass();
		}
		
		if(clazz.isApplicationClass())
		{
			return " ";
		}
		
		if(isUserInteractiveEntryPoint(entryPoint))
		{
			return "UserInteractiveEntryPoint";
		}
		
		return " ";
	}
	
	private static boolean isUserInteractiveEntryPoint(SootMethod function)
	{
		int size = MyConstants.userInteractiveEntryPoints.length;
		
		for(int i = 0; i < size; i++)
		{
			if(function.getName().contains(MyConstants.userInteractiveEntryPoints[i]))
			{
				return true;
			}
			
		}
		return false;
	}

	private void scanForSourcesAndSinks() {

		findSourcesTransformer = new FindSourcesTransformer();
		Transform transform1 = new Transform("jtp.FindSourcesTransformer",
				findSourcesTransformer);
		PackManager.v().getPack("jtp").add(transform1);

				
		List<String> sootArgs = new ArrayList<String>();
		
		sootArgs.add("-output-format");
		sootArgs.add("J");
		
		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());
				
		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);		

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}
		
		String[] soot_args = new String[sootArgs.size()];
		for(int i=0;i<sootArgs.size();i++){
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);
	}
	
	private void locateSinks() {

		flowSinkTransformer = new FlowSinkTransformer();
		Transform transform1 = new Transform("jtp.FlowSinkTransformer",
				flowSinkTransformer);
		PackManager.v().getPack("jtp").add(transform1);

		List<String> sootArgs = new ArrayList<String>();
		
		sootArgs.add("-output-format");
		sootArgs.add("J");
		
		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());
				
		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);	
		
		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}
		
		String[] soot_args = new String[sootArgs.size()];
		for(int i=0;i<sootArgs.size();i++){
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);
	}
	
	private void locateSources() {

		flowSourceTransformer = new FlowSourceTransformer();
		Transform transform1 = new Transform("jtp.FlowSourceTransformer",
				flowSourceTransformer);
		PackManager.v().getPack("jtp").add(transform1);

		List<String> sootArgs = new ArrayList<String>();
		
		sootArgs.add("-output-format");
		sootArgs.add("J");
		
		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());
				
		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);		

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}
		
		String[] soot_args = new String[sootArgs.size()];
		for(int i=0;i<sootArgs.size();i++){
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);
	}
	
	private void simpleOptimization(){
		List<String> sootArgs = new ArrayList<String>();
		
		sootArgs.add("-output-format");
		sootArgs.add("c");
		
		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());
		
		sootArgs.add("-output-dir");
		sootArgs.add(CLASSPATH);

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}
		
		sootArgs.add("-O");
		
		String[] soot_args = new String[sootArgs.size()];
		for(int i=0;i<sootArgs.size();i++){
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);
	}
	
	private void doGlobalBackwardDataflowAnalysis(){		
		//soot.options.Options.v().set_whole_program(true);
		
		soot.options.Options.v().set_keep_line_number(true);
		soot.options.Options.v().set_whole_program(true);
		PhaseOptions.v().setPhaseOption("tag.ln", "on");
		PhaseOptions.v().setPhaseOption("cg.spark","ignore-types:true");
		
		Scene.v().setSootClassPath(CLASSPATH + ":" + getLibs());
				
		
		LinkedHashMap<String, String> mClassToMethod = findUncalledOverridingMethodsTransformer.getClassToMethod();
		//LinkedHashMap<String, String> mClassToMethod = m_OnCreateTransformer.getClassToMethod();
		
		List<SootMethod> entry_points = new ArrayList<SootMethod>();
		
		Set<String> keySet = mClassToMethod.keySet();
		Iterator<String> keyIterator = keySet.iterator();
		while (keyIterator.hasNext()) {

			String mClass = keyIterator.next();
			String method = mClassToMethod.get(mClass);

			//System.out.println("building entry points:" + mClass + "|" + method);
			
			mClass = mClass.substring(0, mClass.indexOf("|"));
			
			SootClass main_soot_class = Scene.v().loadClassAndSupport(mClass);
			SootMethod sMethod = main_soot_class.getMethod(method);
			sMethod.setDeclaringClass(main_soot_class);

			System.out.println("entry point:" + method);

			entry_points.add(sMethod);
		}		
				
		//System.out.println("setting entry points: " + entry_points);
		Scene.v().setEntryPoints(entry_points);

		globalBackwardDataflowAnalysis = new GlobalBackwardDataflowAnalysis();
		Transform transform1 = new Transform("wjtp.GlobalBackwardDataflowAnalysis", globalBackwardDataflowAnalysis);
		
		PackManager.v().getPack("wjtp").add(transform1);
		
		List<String> sootArgs = new ArrayList<String>();
		
		sootArgs.add("-output-format");
		sootArgs.add("J");
		
		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());
				
		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);		

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}
		
		sootArgs.add("-w");
		sootArgs.add("-p");
		sootArgs.add("cg.spark");
		sootArgs.add("enabled");
		
		String[] soot_args = new String[sootArgs.size()];
		for(int i=0;i<sootArgs.size();i++){
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);
	}
	
	private void doGlobalForwardDataflowAnalysis(){
		
		//soot.options.Options.v().set_whole_program(true);
		
		///
		soot.options.Options.v().set_keep_line_number(true);
		soot.options.Options.v().set_whole_program(true);
		PhaseOptions.v().setPhaseOption("tag.ln", "on");
		PhaseOptions.v().setPhaseOption("cg.spark","ignore-types:true");
		///
		
		Scene.v().setSootClassPath(CLASSPATH + ":" + getLibs());
				
		
		LinkedHashMap<String, String> mClassToMethod = findUncalledOverridingMethodsTransformer.getClassToMethod();
		//LinkedHashMap<String, String> mClassToMethod = m_OnCreateTransformer.getClassToMethod();
		
		List<SootMethod> entry_points = new ArrayList<SootMethod>();
		
		Set<String> keySet = mClassToMethod.keySet();
		Iterator<String> keyIterator = keySet.iterator();
		while (keyIterator.hasNext()) {

			String mClass = keyIterator.next();
			String method = mClassToMethod.get(mClass);

			//System.out.println("building entry points:" + mClass + "|" + method);
			
			mClass = mClass.substring(0, mClass.indexOf("|"));
			
			SootClass main_soot_class = Scene.v().loadClassAndSupport(mClass);
			SootMethod sMethod = main_soot_class.getMethod(method);
			sMethod.setDeclaringClass(main_soot_class);

			System.out.println("entry point:" + method);

			entry_points.add(sMethod);
		}		
				
		//System.out.println("setting entry points: " + entry_points);
		Scene.v().setEntryPoints(entry_points);

		globalForwardDataflowAnalysis = new GlobalForwardDataflowAnalysis();
		Transform transform1 = new Transform("wjtp.GlobalForwardDataflowAnalysis", globalForwardDataflowAnalysis);
		
		PackManager.v().getPack("wjtp").add(transform1);
		
		List<String> sootArgs = new ArrayList<String>();
		
		sootArgs.add("-output-format");
		sootArgs.add("J");
		
		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());
				
		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);		

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}
		
		sootArgs.add("-w");
		sootArgs.add("-p");
		sootArgs.add("cg.spark");
		sootArgs.add("enabled");
		
		String[] soot_args = new String[sootArgs.size()];
		for(int i=0;i<sootArgs.size();i++){
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);
	}
	
	/*
	private void buildGlobalAPISubGraph(){

		soot.options.Options.v().set_whole_program(true);
		Scene.v().setSootClassPath(CLASSPATH + ":" + getLibs());
				
		
		LinkedHashMap<String, String> mClassToMethod = findUncalledOverridingMethodsTransformer.getClassToMethod();
		//LinkedHashMap<String, String> mClassToMethod = m_OnCreateTransformer.getClassToMethod();
		List<SootMethod> entry_points = new ArrayList<SootMethod>();
		
		Set<String> keySet = mClassToMethod.keySet();
		Iterator<String> keyIterator = keySet.iterator();
		while (keyIterator.hasNext()) {

			String mClass = keyIterator.next();
			
			String method = mClassToMethod.get(mClass);

			System.out.println("building entry points:" + mClass + "|" + method);
			
			mClass = mClass.substring(0, mClass.indexOf("|"));
			
			SootClass main_soot_class = Scene.v().loadClassAndSupport(mClass);
			SootMethod sMethod = main_soot_class.getMethod(method);
			sMethod.setDeclaringClass(main_soot_class);

			System.out.println("entry point:" + method);

			entry_points.add(sMethod);
		}		
		//System.out.println("setting entry points: " + entry_points);
		Scene.v().setEntryPoints(entry_points);

		globalAPISubGraphTransformer = new GlobalAPISubGraphTransformer();
		Transform transform1 = new Transform("wjtp.GlobalAPISubGraphTransformer", globalAPISubGraphTransformer);
		PackManager.v().getPack("wjtp").add(transform1);
		
		List<String> sootArgs = new ArrayList<String>();
		
		sootArgs.add("-output-format");
		sootArgs.add("J");
		
		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());
				
		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);		

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}
		
		String[] soot_args = new String[sootArgs.size()];
		for(int i=0;i<sootArgs.size();i++){
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);

	}
	
	private void recursionDetector(){

		soot.options.Options.v().set_whole_program(true);
		Scene.v().setSootClassPath(CLASSPATH + ":" + getLibs());				
		
		LinkedHashMap<String, String> mClassToMethod = findUncalledOverridingMethodsTransformer.getClassToMethod();
		
		List<SootMethod> entry_points = new ArrayList<SootMethod>();
		
		Set<String> keySet = mClassToMethod.keySet();
		Iterator<String> keyIterator = keySet.iterator();
		while (keyIterator.hasNext()) {

			String mClass = keyIterator.next();
			
			String method = mClassToMethod.get(mClass);

			System.out.println("building entry points:" + mClass + "|" + method);
			
			mClass = mClass.substring(0, mClass.indexOf("|"));
			
			SootClass main_soot_class = Scene.v().loadClassAndSupport(mClass);
			SootMethod sMethod = main_soot_class.getMethod(method);
			sMethod.setDeclaringClass(main_soot_class);

			System.out.println("entry point:" + method);

			entry_points.add(sMethod);
		}		
		
		Scene.v().setEntryPoints(entry_points);

		recursionDetectionTransformer = new RecursionDetectionTransformer();
		Transform transform1 = new Transform("wjtp.RecursionDetectionTransformer", recursionDetectionTransformer);
		PackManager.v().getPack("wjtp").add(transform1);
		
		List<String> sootArgs = new ArrayList<String>();
		
		sootArgs.add("-output-format");
		sootArgs.add("J");
		
		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());
				
		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);		

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}
		
		String[] soot_args = new String[sootArgs.size()];
		for(int i=0;i<sootArgs.size();i++){
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);

	}
	*/
		
	private void findUncalledOverridingMethods(){
		
		findUncalledOverridingMethodsTransformer = new FindUncalledOverridingMethodsTransformer(appUncalledMethods);
		Transform transform = new Transform("jtp.FindUncalledOverridingMethodsTransformer", findUncalledOverridingMethodsTransformer);
		PackManager.v().getPack("jtp").add(transform);
		
		List<String> sootArgs = new ArrayList<String>();
		
		sootArgs.add("-output-format");
		sootArgs.add("J");
		
		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());
		
		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}
		
		sootArgs.add("-O");
		
		String[] soot_args = new String[sootArgs.size()];
		for(int i=0;i<sootArgs.size();i++){
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);
	}
	
	private void findUncalledMethods(){
		
		findUncalledMethodsTransformer = new FindUncalledMethodsTransformer();
		Transform transform = new Transform("jtp.FindUncalledMethodsTransformer", findUncalledMethodsTransformer);
		PackManager.v().getPack("jtp").add(transform);
		
		List<String> sootArgs = new ArrayList<String>();
		
		sootArgs.add("-output-format");
		sootArgs.add("J");
		
		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());
		
		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}
		
		String[] soot_args = new String[sootArgs.size()];
		for(int i=0;i<sootArgs.size();i++){
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);
	}
	

	private void findEntryPoints() {

		findEntryPointsTransformer = new FindEntryPointsTransformer();
		Transform transform = new Transform("jtp.FindEntryPointsTransformer", findEntryPointsTransformer);
		PackManager.v().getPack("jtp").add(transform);

				
		List<String> sootArgs = new ArrayList<String>();
		
		sootArgs.add("-output-format");
		sootArgs.add("J");
		
		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());
		
		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}
		
		String[] soot_args = new String[sootArgs.size()];
		for(int i=0;i<sootArgs.size();i++){
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);
	}
	

	private void buildAPISubGraph() {
		
		Log.dumpln(LOG, "building API sub-graph...");

		apiSubGraphTransformer = new APISubGraphTransformer();
		Transform transform = new Transform("jtp.APISubGraphTransformer", apiSubGraphTransformer);
		PackManager.v().getPack("jtp").add(transform);
				
		List<String> sootArgs = new ArrayList<String>();
		
		sootArgs.add("-output-format");
		sootArgs.add("J");
		
		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());
		
		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}
		
		String[] soot_args = new String[sootArgs.size()];
		for(int i=0;i<sootArgs.size();i++){
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);
	}
	
	public void simpleAPILookup() {

		Log.dumpln(LOG, "looking up APIs...");

		APILookupTransformer apiLookupTransformer = new APILookupTransformer();
		Transform transform = new Transform("jtp.APILookupTransformer",	apiLookupTransformer);
		PackManager.v().getPack("jtp").add(transform);

		List<String> sootArgs = new ArrayList<String>();

		sootArgs.add("-output-format");
		sootArgs.add("J");

		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}

		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);

		String[] soot_args = new String[sootArgs.size()];
		for (int i = 0; i < sootArgs.size(); i++) {
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);

		/*
		LinkedHashMap<String, List<String>> methodToAPIs = apiLookupTransformer.getMethodToAPIs();

		Set<String> keySet = methodToAPIs.keySet();
		Iterator<String> iter = keySet.iterator();
		while (iter.hasNext()) {
			String method = iter.next();
			List<String> apis = methodToAPIs.get(method);
			
			Log.dumpln(LOG, method + " calls APIs: ");
			for (String api : apis) {
				
				Log.dumpln(LOG, api);
			}
			Log.dumpln(LOG);
		}
		*/
		System.out.println("Average API-Call Count (per Method): " + apiLookupTransformer.getAverageAPICallCount());
	}	
	
	private void findNaiveEntryPoints() {

		m_OnCreateTransformer = new OnCreateTransformer();
		Transform transform1 = new Transform("jtp.OnCreateTransform",
				m_OnCreateTransformer);
		PackManager.v().getPack("jtp").add(transform1);

				
		List<String> sootArgs = new ArrayList<String>();

		sootArgs.add("-output-format");
		sootArgs.add("J");

		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}

		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);

		String[] soot_args = new String[sootArgs.size()];
		for (int i = 0; i < sootArgs.size(); i++) {
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);
	}
	
	private void findFiles(String sDir, List<File> fileList){
		File[] faFiles = new File(sDir).listFiles();
		for(File file: faFiles){
			//if(file.getName().matches("^(.*?)")){
			if(file.getName().contains(".class")){
				//System.out.println(file.getAbsolutePath());
				fileList.add(file);
			}
			if(file.isDirectory()){
				findFiles(file.getAbsolutePath(), fileList);
			}
		}
	}
	
	private void findFilesExcept(String sDir, List<File> fileList, List<String> exceptions){
		File[] faFiles = new File(sDir).listFiles();
		for(File file: faFiles){
			//if(file.getName().matches("^(.*?)")){
			if(file.getName().contains(".class")){
				//System.err.println(file.getAbsolutePath());
				String absPath = file.getAbsolutePath();
				String relativePath = absPath.substring(CLASSPATH.length());
				if(!exceptions.contains(relativePath)){
					
					//System.err.println(relativePath);
					fileList.add(file);
				}else{
					//System.err.println(relativePath);
				}
			}
			if(file.isDirectory()){
				findFilesExcept(file.getAbsolutePath(), fileList, exceptions);
			}
		}
	}
	
	private void doPointsToAnalysis(){
		
		soot.options.Options.v().set_keep_line_number(true);
		soot.options.Options.v().set_whole_program(true);
		PhaseOptions.v().setPhaseOption("tag.ln", "on");
		PhaseOptions.v().setPhaseOption("cg.spark","ignore-types:true");
		/*
		PhaseOptions.v().setPhaseOption("jb", "use-original-names:true");
		PhaseOptions.v().setPhaseOption("bb.lp", "enabled:false");
		//PhaseOptions.v().setPhaseOption("bb.lp", "unsplit-original-locals:true");
		*/
		/*
		PhaseOptions.v().setPhaseOption("jb.a","enabled:false");
		PhaseOptions.v().setPhaseOption("jb.ule","enabled:false");
		PhaseOptions.v().setPhaseOption("jb.cp-ule","enabled:false");
		PhaseOptions.v().setPhaseOption("jb.ne","enabled:false");
		PhaseOptions.v().setPhaseOption("jb.uce","enabled:false");
		PhaseOptions.v().setPhaseOption("jj.a","enabled:false");
		PhaseOptions.v().setPhaseOption("jj.ule","enabled:false");
		PhaseOptions.v().setPhaseOption("jj.cp-ule","enabled:false");
		PhaseOptions.v().setPhaseOption("jj.ne","enabled:false");
		PhaseOptions.v().setPhaseOption("jj.uce","enabled:false");
		PhaseOptions.v().setPhaseOption("sop.cpf","enabled:false");
		PhaseOptions.v().setPhaseOption("jop.uce1","enabled:false");
		PhaseOptions.v().setPhaseOption("jop.ubf1","enabled:false");
		PhaseOptions.v().setPhaseOption("jop.uce2","enabled:false");
		PhaseOptions.v().setPhaseOption("jop.ubf2","enabled:false");
		PhaseOptions.v().setPhaseOption("jop.ule","enabled:false");
		PhaseOptions.v().setPhaseOption("gb.ule","enabled:false");
		
		//PhaseOptions.v().setPhaseOption("bb.lso","enabled:false");
		PhaseOptions.v().setPhaseOption("bb.ule","enabled:false");
		*/
		/*
		soot.options.Options.v().set_keep_line_number(true);
		soot.options.Options.v().set_whole_program(true);
		Scene.v().setSootClassPath(CLASSPATH + ":" + ANDROID);

		
		//soot.options.Options.v().setPhaseOption("cg","implicit-entry:false");
		soot.options.Options.v().setPhaseOption("cg.spark","enabled:true");
		//soot.options.Options.v().setPhaseOption("cg.spark","ignore-types:true");
		//soot.options.Options.v().setPhaseOption("cg.spark","field-based:false");
		//soot.options.Options.v().setPhaseOption("cg.spark","types-for-sites:false");
		//soot.options.Options.v().setPhaseOption("cg.spark","vta:true");	
		soot.options.Options.v().setPhaseOption("cg.spark","on-fly-cg:false");
		soot.options.Options.v().setPhaseOption("cg.spark","set-impl:hash");
		//soot.options.Options.v().setPhaseOption("cg.spark","double-set-old:hybrid");
		//soot.options.Options.v().setPhaseOption("cg.spark","double-set-new:hybrid");
		soot.options.Options.v().setPhaseOption("cg.spark","verbose:true");	
		soot.options.Options.v().setPhaseOption("cg.spark","on-fly-cg:true");
		soot.options.Options.v().setPhaseOption("cg.spark","propagator:worklist");
		soot.options.Options.v().setPhaseOption("cg.spark","dump-solution:true");
		*/

		//LinkedHashMap<String, String> mClassToMethod = findUncalledOverridingMethodsTransformer.getClassToMethod();
		
		/*
		LinkedHashMap<String, String> mClassToMethod = m_OnCreateTransformer.getClassToMethod();

		List<SootMethod> entry_points = new ArrayList<SootMethod>();

		Set<String> keySet = mClassToMethod.keySet();
		Iterator<String> keyIterator = keySet.iterator();
		while (keyIterator.hasNext()) {

			String mClass = keyIterator.next();
			String method = mClassToMethod.get(mClass);

			//System.out.println("building entry points:" + mClass + "|" + method);

			mClass = mClass.substring(0, mClass.indexOf("|"));

			SootClass main_soot_class = Scene.v().loadClassAndSupport(mClass);
			SootMethod sMethod = main_soot_class.getMethod(method);
			sMethod.setDeclaringClass(main_soot_class);

			//System.out.println("entry point:" + method);

			entry_points.add(sMethod);
		}		
		
		//System.out.println("setting entry points: " + entry_points);
		Scene.v().setEntryPoints(entry_points);
		*/
		
		/*
		List<SootMethod> entry_points = new ArrayList<SootMethod>();
		Scene.v().loadBasicClasses();
		SootClass main_soot_class =  Scene.v().loadClassAndSupport("Leakage");
		SootMethod sMethod = main_soot_class.getMethod("void main(java.lang.String[])");
		entry_points.add(sMethod);
		Scene.v().setEntryPoints(entry_points);
		*/
		
		pointsToAnalysisTransformer = new PointsToAnalysisTransformer();
		Transform transform1 = new Transform("wjtp.TestSceneTransformer", pointsToAnalysisTransformer);
		
		PackManager.v().getPack("wjtp").add(transform1);
		
		List<String> sootArgs = new ArrayList<String>();
		
		sootArgs.add("-output-format");
		sootArgs.add("J");
		
		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());
				
		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);		

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}
					
		sootArgs.add("-w");
		sootArgs.add("-p");
		sootArgs.add("cg.spark");
		sootArgs.add("enabled");		
		
		String[] soot_args = new String[sootArgs.size()];
		for(int i=0;i<sootArgs.size();i++){
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);
	}
	
	private void findPackages()
	{
		soot.options.Options.v().set_whole_program(true);
		//Scene.v().setSootClassPath(getClassPath() + ":" + getRtJars());
		Scene.v().setSootClassPath(getLibs() + ":" + CLASSPATH);
		/*
		List<String> main_classes = m_OnCreateTransformer.getClasses();
		List<SootMethod> entry_points = new ArrayList<SootMethod>();
		
		
		for (String main_class : main_classes) {
			SootClass main_soot_class = Scene.v().loadClassAndSupport(
					main_class);
			SootMethod method = main_soot_class.getMethodByName(MyConstants.mainEntry);
			method.setDeclaringClass(main_soot_class);

			System.out.println("entry point:" + method);

			entry_points.add(method);
		}
		*/
		//LinkedHashMap<String, String> mClassToMethod = m_OnCreateTransformer.getClassToMethod();
		LinkedHashMap<String, String> mClassToMethod = findUncalledOverridingMethodsTransformer.getClassToMethod();		
		
		List<SootMethod> entry_points = new ArrayList<SootMethod>();
		
		Set<String> keySet = mClassToMethod.keySet();
		Iterator<String> keyIterator = keySet.iterator();
		while (keyIterator.hasNext()) {

			String mClass = keyIterator.next();
			String method = mClassToMethod.get(mClass);

			System.out.println("building entry points:" + mClass + "|" + method);
			
			mClass = mClass.substring(0, mClass.indexOf("|"));
			
			try{
				SootClass main_soot_class = Scene.v().loadClassAndSupport(mClass);
				SootMethod sMethod = main_soot_class.getMethod(method);
				sMethod.setDeclaringClass(main_soot_class);
				
				System.out.println("entry point:" + method);

				entry_points.add(sMethod);
				
			}catch(Exception e){
				System.out.println("EXCEPTION is raised loading " + mClass);
				e.printStackTrace();
			}			
		}
		
		Scene.v().setEntryPoints(entry_points);

		
		pkgTransformer = new PackageNameTransformer();
		
		Transform transform1 = new Transform("wjtp.PackageNameTransformer", pkgTransformer);
		
		PackManager.v().getPack("wjtp").add(transform1);
		List<String> sootArgs = new ArrayList<String>();

		sootArgs.add("-output-format");
		sootArgs.add("J");

		sootArgs.add("-soot-class-path");
		sootArgs.add(CLASSPATH + ":" + getLibs());

		if(MyConstants.isTrickOn){
			loadClassExceptFromPackage(sootArgs);
		}else{
			sootArgs.add("-process-dir");
			sootArgs.add(CLASSPATH);
		}

		sootArgs.add("-output-dir");
		sootArgs.add(OUTPUT);

		String[] soot_args = new String[sootArgs.size()];
		for (int i = 0; i < sootArgs.size(); i++) {
			soot_args[i] = sootArgs.get(i);
		}

		soot.Main.main(soot_args);
	}
	/*
	public void addMain(){
		System.out.println("package names:" + pkgTransformer.getPackageNames());
				
		if(!(pkgTransformer.getPackageNames().isEmpty())){
			for(String s : pkgTransformer.getPackageNames()){
				createMainClass(s);
			}
		}	
	}
	
	
	private void createMainClass(String packageName){
		
		System.out.println("creating class in package " + packageName);		
		
		//Scene.v().loadClassAndSupport("java.lang.Object");
		Scene.v().loadClassAndSupport("android.app.Activity");
		//Scene.v().loadClassAndSupport("java.lang.String");
        
        String ptsMainClass = "";
        if(packageName.equals("")){
        	ptsMainClass = MyConstants.PTSMain;
        }else{
        	ptsMainClass = packageName + "." + MyConstants.PTSMain;
        }
        
        SootClass sClass = new SootClass(ptsMainClass, Modifier.PUBLIC);
     
        //sClass.setSuperclass(Scene.v().getSootClass("java.lang.Object"));
        sClass.setSuperclass(Scene.v().getSootClass("android.app.Activity"));
        
        String className = sClass.getName();
        Scene.v().addClass(sClass);
        

        //<init>
        {
        	SootMethod method = new SootMethod("<init>", new ArrayList(), VoidType.v(), Modifier.PUBLIC);
        	sClass.addMethod(method);

        	JimpleBody body = Jimple.v().newBody(method);
        	method.setActiveBody(body);

        	Chain units = body.getUnits();
        	Local ref0;

        	ref0 = Jimple.v().newLocal("r0", RefType.v(ptsMainClass));
        	body.getLocals().add(ref0);

        	units.add(Jimple.v().newIdentityStmt(ref0, Jimple.v().newThisRef(RefType.v(ptsMainClass))));

        	//SootMethod toCall = Scene.v().getMethod("<java.lang.Object: void <init>()>");
        	SootMethod toCall = Scene.v().getMethod("<android.app.Activity: void <init>()>");
        	units.add(Jimple.v().newInvokeStmt(Jimple.v().newSpecialInvokeExpr(ref0, toCall.makeRef())));

        	units.add(Jimple.v().newReturnVoidStmt());
        }   
        
        //main
        {
        	SootMethod method = new SootMethod("main", Arrays.asList(new Type[] {ArrayType.v(RefType.v("java.lang.String"), 1)}),
                    VoidType.v(), Modifier.PUBLIC | Modifier.STATIC);
        	sClass.addMethod(method);
        	
        	JimpleBody body = Jimple.v().newBody(method);
        	method.setActiveBody(body);
        	
        	Chain units = body.getUnits();
        	Local ref0;
        	
        	ref0 = Jimple.v().newLocal("r0", ArrayType.v(RefType.v("java.lang.String"), 1));
        	body.getLocals().add(ref0);
        	
        	units.add(Jimple.v().newIdentityStmt(ref0, Jimple.v().newParameterRef(ArrayType.v(RefType.v("java.lang.String"), 1), 0)));
        	
        	//synthetic new and call methods
            LinkedHashMap<String, String> mClassToMethod = findUncalledOverridingMethodsTransformer.getClassToMethod();    		
    		Set<String> keySet = mClassToMethod.keySet();
    		Iterator<String> keyIterator = keySet.iterator();
    		int count = 0;
    		while (keyIterator.hasNext()) {
    			String mClass = keyIterator.next();
    			String mMethod = mClassToMethod.get(mClass);    			
    			mClass = mClass.substring(0, mClass.indexOf("|"));
    			System.out.println("entry point: " + mClass + " | " + mMethod);
    			
    			System.out.println("load support for class: " + mClass);
    			SootClass main_soot_class = Scene.v().loadClassAndSupport(mClass);
    			SootMethod sMethod = main_soot_class.getMethod(mMethod);
    			sMethod.setDeclaringClass(main_soot_class);
    			
    			Local ref;
    			ref = Jimple.v().newLocal("ref_" + count, RefType.v(mClass));
    			body.getLocals().add(ref);
    			
    			units.add(Jimple.v().newAssignStmt(ref, new JNewExpr(RefType.v(mClass))));
    			
    			//SootMethod toCall = Scene.v().getMethod(mMethod);
    			SootMethod toCall = sMethod;
    			List<Type> paramTypes = toCall.getParameterTypes();
    			
    			List<Value> paramValues = new ArrayList<Value>();
    			int paramCount = 0;
    			for(Type t : paramTypes){
    				Local param;
    				param = Jimple.v().newLocal("param_" + paramCount, t);
    				body.getLocals().add(param);
    				
    				if(t instanceof RefLikeType){
    					if(t instanceof RefType){
    						
    						if(((RefType) t).getClassName().equals("android.content.Context")){
    							units.add(Jimple.v().newAssignStmt(param, new JNewExpr(RefType.v(ptsMainClass))));
    						}else{    						
    							units.add(Jimple.v().newAssignStmt(param, new JNewExpr((RefType)t)));
    						}
    					}else if(t instanceof ArrayType){
    						units.add(Jimple.v().newAssignStmt(param, new JNewArrayExpr((ArrayType)t, IntConstant.v(1))));
    					}else{
    						System.out.println("ERROR: type not handled - " + t.toString());
    					}
    				}else{
    					if(t instanceof PrimType){
    						if(t instanceof LongType){
    							units.add(Jimple.v().newAssignStmt(param, LongConstant.v(0)));
    						}else if(t instanceof DoubleType){
    							units.add(Jimple.v().newAssignStmt(param, DoubleConstant.v(0)));
    						}else if(t instanceof FloatType){
    							units.add(Jimple.v().newAssignStmt(param, FloatConstant.v(0)));
    						}else{
    							units.add(Jimple.v().newAssignStmt(param, IntConstant.v(0)));
    						}
    					}else{
    						System.out.println("ERROR: type not handled - " + t.toString());
    					}
    				}
    				
    				paramValues.add(param);
    				
    				paramCount++;
    			}
    			
    			if(toCall.isStatic()){
    				units.add(Jimple.v().newInvokeStmt(Jimple.v().newStaticInvokeExpr(toCall.makeRef(), paramValues)));
    			}else if(toCall.isConstructor()){
    				units.add(Jimple.v().newInvokeStmt(Jimple.v().newSpecialInvokeExpr(ref, toCall.makeRef(), paramValues)));
    			}else{
    				units.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(ref, toCall.makeRef(), paramValues)));
    			}
    			
    			count++;
    		}	       	
        	
        	
        	units.add(Jimple.v().newReturnVoidStmt());        	
        	
        }     
        
        try{	        
	        String fileName = className.replace('.', '/') + ".class";
	        
	        System.out.println("directory:" + CLASSPATH);
	        System.out.println("filename:" + fileName);
	        
	        OutputStream streamOut = new JasminOutputStream(
	                                    new FileOutputStream(CLASSPATH + fileName));
	        PrintWriter writerOut = new PrintWriter(
	                                    new OutputStreamWriter(streamOut));
	        JasminClass jasminClass = new soot.jimple.JasminClass(sClass);
	        jasminClass.print(writerOut);
	        writerOut.flush();
	        streamOut.close();
        }catch(Exception e){
        	System.out.println("Not doing anything");
        	System.out.println(e.getMessage());
        }
	}
	*/
	
	private void createMainClassDebugger(String packageName){
		
		System.out.println("creating class in package " + packageName);		
		
		//Scene.v().loadClassAndSupport("java.lang.Object");
		Scene.v().loadClassAndSupport("android.app.Activity");
		//Scene.v().loadClassAndSupport("java.lang.String");
        
		//synthetic new and call methods
        LinkedHashMap<String, String> mClassToMethod = findUncalledOverridingMethodsTransformer.getClassToMethod();    		
		Set<String> keySet = mClassToMethod.keySet();
		Iterator<String> keyIterator = keySet.iterator();
		int count = 0;
		while (keyIterator.hasNext()) {
			String mClass = keyIterator.next();
			String mMethod = mClassToMethod.get(mClass);    			
			mClass = mClass.substring(0, mClass.indexOf("|"));
			
			System.out.println("entry point: " + mClass + " | " + mMethod);			
			System.out.println("load support for class: " + mClass);
			
			SootClass main_soot_class = Scene.v().loadClassAndSupport(mClass);
			SootMethod sMethod = main_soot_class.getMethod(mMethod);
			sMethod.setDeclaringClass(main_soot_class);
						
			
			String ptsMainClass = "";
			if(packageName.equals("")){
				ptsMainClass = MyConstants.PTSMain + "_" + count;
			}else{
				ptsMainClass = packageName + "." + MyConstants.PTSMain + "_" + count;
			}
			
			System.out.println("[" + count + "] entry method: " + sMethod + " |Creating main class " + ptsMainClass + "...");
        
			SootClass sClass = new SootClass(ptsMainClass, Modifier.PUBLIC);
     
			//sClass.setSuperclass(Scene.v().getSootClass("java.lang.Object"));
			sClass.setSuperclass(Scene.v().getSootClass("android.app.Activity"));
        
			String className = sClass.getName();
        	Scene.v().addClass(sClass);
        

        	//<init>
        	{
        		SootMethod method = new SootMethod("<init>", new ArrayList(), VoidType.v(), Modifier.PUBLIC);
        		sClass.addMethod(method);

        		JimpleBody body = Jimple.v().newBody(method);
        		method.setActiveBody(body);

        		Chain units = body.getUnits();
        		Local ref0;

        		ref0 = Jimple.v().newLocal("r0", RefType.v(ptsMainClass));
        		body.getLocals().add(ref0);

        		units.add(Jimple.v().newIdentityStmt(ref0, Jimple.v().newThisRef(RefType.v(ptsMainClass))));

        		//SootMethod toCall = Scene.v().getMethod("<java.lang.Object: void <init>()>");
        		SootMethod toCall = Scene.v().getMethod("<android.app.Activity: void <init>()>");
        		units.add(Jimple.v().newInvokeStmt(Jimple.v().newSpecialInvokeExpr(ref0, toCall.makeRef())));

        		units.add(Jimple.v().newReturnVoidStmt());
        	}   
        
        	//main
        	{
        		SootMethod method = new SootMethod("main", Arrays.asList(new Type[] {ArrayType.v(RefType.v("java.lang.String"), 1)}),
        				VoidType.v(), Modifier.PUBLIC | Modifier.STATIC);
        		sClass.addMethod(method);
        	
        		JimpleBody body = Jimple.v().newBody(method);
        		method.setActiveBody(body);
        	
        		Chain units = body.getUnits();
        		Local ref0;
        	
        		ref0 = Jimple.v().newLocal("r0", ArrayType.v(RefType.v("java.lang.String"), 1));
        		body.getLocals().add(ref0);
        	
        		units.add(Jimple.v().newIdentityStmt(ref0, Jimple.v().newParameterRef(ArrayType.v(RefType.v("java.lang.String"), 1), 0)));    		
    			
    			Local ref;
    			ref = Jimple.v().newLocal("ref_" + count, RefType.v(mClass));
    			body.getLocals().add(ref);
    			
    			units.add(Jimple.v().newAssignStmt(ref, new JNewExpr(RefType.v(mClass))));
    			
    			//SootMethod toCall = Scene.v().getMethod(mMethod);
    			SootMethod toCall = sMethod;
    			List<Type> paramTypes = toCall.getParameterTypes();
    			
    			List<Value> paramValues = new ArrayList<Value>();
    			int paramCount = 0;
    			for(Type t : paramTypes){
    				Local param;
    				param = Jimple.v().newLocal("param_" + paramCount, t);
    				body.getLocals().add(param);
    				
    				if(t instanceof RefLikeType){
    					if(t instanceof RefType){
    						
    						if(((RefType) t).getClassName().equals("android.content.Context")){
    							units.add(Jimple.v().newAssignStmt(param, new JNewExpr(RefType.v(ptsMainClass))));
    						}else{    						
    							units.add(Jimple.v().newAssignStmt(param, new JNewExpr((RefType)t)));
    						}
    					}else if(t instanceof ArrayType){
    						units.add(Jimple.v().newAssignStmt(param, new JNewArrayExpr((ArrayType)t, IntConstant.v(1))));
    					}else{
    						System.out.println("ERROR: type not handled - " + t.toString());
    					}
    				}else{
    					if(t instanceof PrimType){
    						if(t instanceof LongType){
    							units.add(Jimple.v().newAssignStmt(param, LongConstant.v(0)));
    						}else if(t instanceof DoubleType){
    							units.add(Jimple.v().newAssignStmt(param, DoubleConstant.v(0)));
    						}else if(t instanceof FloatType){
    							units.add(Jimple.v().newAssignStmt(param, FloatConstant.v(0)));
    						}else{
    							units.add(Jimple.v().newAssignStmt(param, IntConstant.v(0)));
    						}
    					}else{
    						System.out.println("ERROR: type not handled - " + t.toString());
    					}
    				}
    				
    				paramValues.add(param);
    				
    				paramCount++;
    			}
    			
    			if(toCall.isStatic()){
    				units.add(Jimple.v().newInvokeStmt(Jimple.v().newStaticInvokeExpr(toCall.makeRef(), paramValues)));
    			}else if(toCall.isConstructor()){
    				units.add(Jimple.v().newInvokeStmt(Jimple.v().newSpecialInvokeExpr(ref, toCall.makeRef(), paramValues)));
    			}else{
    				units.add(Jimple.v().newInvokeStmt(Jimple.v().newVirtualInvokeExpr(ref, toCall.makeRef(), paramValues)));
    			}
    			   			
    			       	
        	
        	
    			units.add(Jimple.v().newReturnVoidStmt());
        	
    			System.out.println("[" + count + "] entry method: " + sMethod + " |Dumping created instructions...");
    			Iterator iter = units.iterator();
    			while(iter.hasNext()){
    				Stmt s = (Stmt)iter.next();
    				System.out.println(s);
    			}
        	}
        
        
	        
	        
	        
	        try{	        
		        String fileName = className.replace('.', '/') + ".class";
		        
		        System.out.println("directory:" + CLASSPATH);
		        System.out.println("filename:" + fileName);
		        
		        OutputStream streamOut = new JasminOutputStream(
		                                    new FileOutputStream(CLASSPATH + fileName));
		        PrintWriter writerOut = new PrintWriter(
		                                    new OutputStreamWriter(streamOut));
		        JasminClass jasminClass = new soot.jimple.JasminClass(sClass);
		        jasminClass.print(writerOut);
		        writerOut.flush();
		        streamOut.close();
	        }catch(Exception e){
	        	System.out.println("[" + count + "] entry method: " + sMethod + " |Error creating new class.");
	        	System.out.println(e.getMessage());
	        }
	        
	        count++;
		}
	}
	
	private void loadClassFromPackage(List<String> sootArgs){
		List<File> fileList = new ArrayList<File>();
		findFiles(CLASSPATH + MyConstants.PROCESS_PACKAGE, fileList);
		
		for(File file : fileList){
			String absoluteName = file.getAbsolutePath();
			String relativeName = absoluteName.substring(
					absoluteName.indexOf(CLASSPATH)+CLASSPATH.length(), absoluteName.length());
			String className = relativeName.substring(0, relativeName.indexOf(".class"));
			className = className.replace("/", ".");
			while(className.startsWith(".")){
				className = className.substring(1);
			}
			//System.out.println("clname:" + className);
			sootArgs.add(className);
		}
	
	}
	
	private void loadClassExceptFromPackage(List<String> sootArgs){
		List<File> fileList = new ArrayList<File>();
		/*
		List<String> exceptions = new ArrayList<String>();
		for(int i=0;i<MyConstants.EXCLUDE_PROCESS_PACKAGES.length;i++){
			exceptions.add(MyConstants.EXCLUDE_PROCESS_PACKAGES[i]);
		}
				
		findFilesExcept(CLASSPATH, fileList, exceptions);
		*/
		findFilesExcept(CLASSPATH, fileList, unloadedClasses);
		
		//System.out.println("Selectively loading classes:");
		
		for(File file : fileList){
			//System.out.println(file.getName());
			String absoluteName = file.getAbsolutePath();
			String relativeName = absoluteName.substring(
					absoluteName.indexOf(CLASSPATH)+CLASSPATH.length(), absoluteName.length());
			String className = relativeName.substring(0, relativeName.indexOf(".class"));
			className = className.replace("/", ".");
			while(className.startsWith(".")){
				className = className.substring(1);
			}
			//System.out.println("clname:" + className);
			sootArgs.add(className);
		}
	
	}
	
	public void unloadClasses() throws IOException, FileNotFoundException {

		// File file = new File("/home/android/mydroid/mytest/Test3.dex");
		File file = new File(DEX_FULLPATH);
		System.err.println(DEX_FULLPATH);
		FileInputStream is = new FileInputStream(file);

		long length = file.length();
		if (length > Integer.MAX_VALUE) {
			throw new IOException("File is too big");
		}

		byte[] bytes = new byte[(int) length];

		int offset = 0;
		int numRead = 0;
		// try{
		// numRead = is.read(bytes, offset, length-offset)
		// }
		while (offset < bytes.length
				&& (numRead = is.read(bytes, offset, (int) (length - offset))) >= 0) {
			offset += numRead;
		}

		if (offset < bytes.length) {
			throw new IOException("File was not completely read: " + file.getName());
		}

		is.close();

		DexFile df = new DexFile();
		df.parse(bytes);
		//df.traverse();
		//df.findMissingClasses();
		df.removeAllUndefinedClasses();
		List<String> removedClasses = DexFile.removedClasses;
		for(String removedClass : removedClasses){
			//System.out.println(removedClass);
			if(removedClass.startsWith("L")){
				removedClass = removedClass.substring(1);
				removedClass = removedClass.replace(";", ".class");
				//System.out.println(removedClass);
				unloadedClasses.add(removedClass);
			}else{
				System.err.println("Not a class: " + removedClass + "!");
			}
		}
	}
	
}

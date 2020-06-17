package mySoot;

import java.util.*;

import mySoot.SummaryPair;

public class AndroidFunctionSummary implements MyConstants{
	
	public AndroidFunctionSummary(){
		
	}
	
	public static LinkedHashMap<String, LinkedHashMap<Integer, List<Integer>>> summary = 
			new LinkedHashMap<String, LinkedHashMap<Integer, List<Integer>>>();
	
	
	public static void buildFunctionSummary(){
		
		String signature = null;
		Integer source = null;
		List<Integer> dests = null;
		LinkedHashMap<Integer, List<Integer>> stod = null;
		
		//<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>
		{
			signature = "<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);
			
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);
			
			summary.put(signature, stod);
		}
		
		//<java.lang.StringBuilder: void <init>(java.lang.String)>
		{
			signature = "<java.lang.StringBuilder: void <init>(java.lang.String)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);
			
			summary.put(signature, stod);
		}	
		
		//<java.lang.String: void <init>(java.lang.String)>
		{
			signature = "<java.lang.String: void <init>(java.lang.String)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);
			
			summary.put(signature, stod);
		}
		
		
		//<java.util.UUID: void <init>(long,long)>
		{
			signature = "<java.util.UUID: void <init>(long,long)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);
			
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);
			
			summary.put(signature, stod);
		}
		
				
		//<org.apache.http.client.entity.UrlEncodedFormEntity: void <init>(java.util.List,java.lang.String)>
		{		
			signature = "<org.apache.http.client.entity.UrlEncodedFormEntity: void <init>(java.util.List,java.lang.String)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);		
			
			summary.put(signature, stod);
		}		
		
		//<org.apache.http.client.methods.HttpPost: void <init>(java.lang.String)>
		{		
			signature = "<org.apache.http.client.methods.HttpPost: void <init>(java.lang.String)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);		
			
			summary.put(signature, stod);
		}		
		
		//<java.security.MessageDigest: void update(byte[])>
		{		
			signature = "<java.security.MessageDigest: void update(byte[])>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);		
			
			summary.put(signature, stod);
		}	
		
		//<java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>
		{		
			signature = "<java.lang.System: void arraycopy(java.lang.Object,int,java.lang.Object,int,int)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(2));		
			stod.put(source, dests);		
			
			summary.put(signature, stod);
		}
		
		//<java.lang.String: void <init>(byte[],java.lang.String)>
		{		
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);		
			
			signature = "<java.lang.String: void <init>(byte[],java.lang.String)>";			
			summary.put(signature, stod);
			
			signature = "<java.lang.String: void <init>(byte[])>";			
			summary.put(signature, stod);
		}
		
		//<android.widget.EditText: void setText(java.lang.CharSequence)>
		{		
			signature = "<android.widget.EditText: void setText(java.lang.CharSequence)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);		
			
			summary.put(signature, stod);
		}	
		
		//<android.widget.TextView: void setText(java.lang.CharSequence)>
		{		
			signature = "<android.widget.TextView: void setText(java.lang.CharSequence)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);		
			
			summary.put(signature, stod);
		}
		
		/*
		//<android.widget.Spinner: void setAdapter(android.widget.SpinnerAdapter)>
		{		
			signature = "<android.widget.Spinner: void setAdapter(android.widget.SpinnerAdapter)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);		
			
			summary.put(signature, stod);
		}
		
		//<android.widget.ArrayAdapter: void <init>(android.content.Context,int,java.util.List)>
		{		
			signature = "<android.widget.ArrayAdapter: void <init>(android.content.Context,int,java.util.List)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(2);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);		
			
			summary.put(signature, stod);
		}
		
		//<android.widget.Spinner: void setOnItemSelectedListener(android.widget.AdapterView$OnItemSelectedListener)>
		{		
			signature = "<android.widget.Spinner: void setOnItemSelectedListener(android.widget.AdapterView$OnItemSelectedListener)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);		
			
			summary.put(signature, stod);
		}	
		*/	
		
		//Lorg/xmlpull/v1/XmlSerializer;.setOutput
		{		
			signature = "<org.xmlpull.v1.XmlSerializer: void setOutput(java.io.OutputStream,java.lang.String)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(thisObject);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(0));		
			stod.put(source, dests);		
			
			summary.put(signature, stod);
		}
		
		
		//Lorg/xmlpull/v1/XmlSerializer;.attribute
		{
			signature = "<org.xmlpull.v1.XmlSerializer: org.xmlpull.v1.XmlSerializer attribute(java.lang.String,java.lang.String,java.lang.String)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(2);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));
			dests.add(new Integer(returnValue));
			stod.put(source, dests);		
			
			summary.put(signature, stod);
		}
		
		//Ljava/security/MessageDigest;.digest
		{		
			signature = "<java.security.MessageDigest: int digest(byte[],int,int)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(thisObject);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(0));		
			stod.put(source, dests);		
			
			summary.put(signature, stod);
		}
				
		
		//Ljava/util/Formatter;.format
		{		
			signature = "<java.util.Formatter: java.util.Formatter format(java.lang.String,java.lang.Object[])>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));
			dests.add(new Integer(returnValue));
			stod.put(source, dests);		
			
			summary.put(signature, stod);
		}
		
		/*
		//__________________________________________________________new ones
		//Ljava/util/Arrarys
		clazz = "Ljava/util/Arrays;";
		func = "fill";
		pair = new SummaryPair();
		pair.addDest("vE");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//java.util.Date
		clazz = "Ljava/util/Date;";
		func = "setDate";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Date
		clazz = "Ljava/util/Date;";
		func = "setHours";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Date
		clazz = "Ljava/util/Date;";
		func = "setMinutes";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Date
		clazz = "Ljava/util/Date;";
		func = "setSeconds";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Date
		clazz = "Ljava/util/Date;";
		func = "setYear";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Date
		clazz = "Ljava/util/Date;";
		func = "setTime";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.EnumMap<K,V>
		clazz = "Ljava/util/EnumMap;";
		func = "putAll";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.HashMap<K,V>; qian
		clazz = "Ljava/util/HashMap;";
		func = "putAll";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Hashtable;qian
		clazz = "Ljava/util/Hashtable;";
		func = "putAll";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.IdentityHashMap;qian
		clazz = "Ljava/util/IdentityHashMap;";
		func = "putAll";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.LinkedList<E>;qian
		clazz = "Ljava/util/LinkedList;";
		func = "addFirst";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.LinkedList<E>;qian
		clazz = "Ljava/util/LinkedList;";
		func = "addLast";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);

		
		//java.util.BitSet;qian
		clazz = "Ljava/util/BitSet;";
		func = "set";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.PriorityQueue;qian
		clazz = "Ljava/util/PriorityQueue;";
		func = "add";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.PriorityQueue;qian
		clazz = "Ljava/util/PriorityQueue;";
		func = "offer";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Properties;qian
		clazz = "Ljava/util/Properties;";
		func = "list";
		pair = new SummaryPair();
		pair.addDest("vE");
		pair.addSource("vD");
		summary.put(clazz + func, pair);
		
		//java.util.Properties;qian
		clazz = "Ljava/util/Properties;";
		func = "loadFromXML";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);

		//java.util.Properties;qian
		clazz = "Ljava/util/Properties;";
		func = "list";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Properties;qian
		clazz = "Ljava/util/Properties;";
		func = "save";
		pair = new SummaryPair();
		pair.addDest("vE");
		pair.addSource("vD");
		summary.put(clazz + func, pair);
		
		//java.util.Properties;qian
		clazz = "Ljava/util/Properties;";
		func = "storeToXML";
		pair = new SummaryPair();
		pair.addDest("vE");
		pair.addSource("vD");
		summary.put(clazz + func, pair);
		
		//java.util.Properties;qian
		clazz = "Ljava/util/Properties;";
		func = "store";
		pair = new SummaryPair();
		pair.addDest("vE");
		pair.addSource("vD");
		summary.put(clazz + func, pair);
		
		//java.util.SimpleTimeZone;qian
		clazz = "Ljava/util/SimpleTimeZone;";
		func = "setDSTSavings";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.SimpleTimeZone;qian
		clazz = "Ljava/util/SimpleTimeZone;";
		func = "setEndRule";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		pair.addSource("vF");
		pair.addSource("vG");
		summary.put(clazz + func, pair);
		
		//java.util.TimeZone;qian
		clazz = "Ljava/util/TimeZone;";
		func = "setRawOffset";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.TimeZone;qian
		clazz = "Ljava/util/TimeZone;";
		func = "setID";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.TreeSet;qian
		clazz = "Ljava/util/TreeSet;";
		func = "add";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.TreeSet;qian
		clazz = "Ljava/util/TreeSet;";
		func = "addAll";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Vector;qian
		clazz = "Ljava/util/Vector;";
		func = "addAll";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Vector;qian
		clazz = "Ljava/util/Vector;";
		func = "addElement";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Vector;qian
		clazz = "Ljava/util/Vector;";
		func = "copyInto";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Vector;qian
		clazz = "Ljava/util/Vector;";
		func = "insertElementAt";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Vector;qian
		clazz = "Ljava/util/Vector;";
		func = "returnAll";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Vector;qian
		clazz = "Ljava/util/Vector;";
		func = "set";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//java.util.Vector;qian
		clazz = "Ljava/util/Vector;";
		func = "setElementAt";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.Vector;qian
		clazz = "Ljava/util/Vector;";
		func = "setSize";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android.widget;qian
		clazz = "Landroid/widget/ImageView;";
		func = "setImageResource";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android.widget;qian
		clazz = "Landroid/widget/EditText;";
		func = "setText";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android.widget;qian
		clazz = "Landroid/os/Handler;";
		func = "sendMessage";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android.widget;qian
		clazz = "Landroid/os/Handler;";
		func = "sendEmptyMessageAtTime";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android.widget;qian
		clazz = "Landroid/os/Handler;";
		func = "sendMessageDelayed";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android.widget;qian
		clazz = "Landroid/os/Handler;";
		func = "sendEmptyMessage";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android.widget;qian
		clazz = "Landroid/widget/TextView;";
		func = "setPadding";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		pair.addSource("vF");
		pair.addSource("vG");
		pair.addSource("vA");
		summary.put(clazz + func, pair);
		
		//android.widget;qian
		clazz = "Landroid/widget/TextView;";
		func = "setBackgroundColor";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android.widget;qian
		clazz = "Landroid/webkit/WebSettings;";
		func = "setCacheMode";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.WeakHashMap;qian
		clazz = "Ljava/util/WeakHashMap;";
		func = "putAll";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android/view; qian
		clazz = "Landroid/view/View;";
		func = "setVisibility";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android/view/ViewGroup; qian
		clazz = "Landroid/view/ViewGroup;";
		func = "addView";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android.webkit; qian
		clazz = "Landroid/webkit/CookieManager;";
		func = "setCookie";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//java.util.GregorianCalendar; qian
		clazz = "Ljava/util/GregorianCalendar;";
		func = "setTime";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//java.util.GregorianCalendar; qian
		clazz = "Ljava/util/GregorianCalendar;";
		func = "setGregorianChange";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.GregorianCalendar; qian
		clazz = "Ljava/util/GregorianCalendar;";
		func = "setTimeZone";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.GregorianCalendar; qian
		clazz = "Ljava/util/GregorianCalendar;";
		func = "setTimeInMillis";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		*/
		
				
		
		/*
		//java.net.URLConnection;qian
		clazz = "Ljava/net/URLConnection;";
		func = "setRequestProperty";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//java.net.URLConnection;qian
		clazz = "Ljava/net/URLConnection;";
		func = "setUseCaches";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.net.URLConnection;qian
		clazz = "Ljava/net/URLConnection;";
		func = "setIfModifiedSince";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.net.URLConnection;qian
		clazz = "Ljava/net/URLConnection;";
		func = "setDefaultUseCaches";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.net.URLConnection;qian
		clazz = "Ljava/net/URLConnection;";
		func = "addRequestProperty";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//java.net.URLConnection;qian
		clazz = "Ljava/net/URLConnection;";
		func = "setDefaultRequestProperty";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//java.net.URLConnection;qian
		clazz = "Ljava/net/URLConnection;";
		func = "setContentHandlerFactory";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/os/Bundle;qian
		clazz = "Landroid/os/Bundle;";
		func = "putString";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/content/intent;qian
		clazz = "Landroid/content/intent;";
		func = "setType";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android/content/intent;qian
		clazz = "Landroid/content/intent;";
		func = "addFlags";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android/content/intent;qian
		clazz = "Landroid/content/intent;";
		func = "setPakage";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android/content/intent;qian
		clazz = "Landroid/content/intent;";
		func = "setSourceBounds";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android/content/intent;qian
		clazz = "Landroid/content/intent;";
		func = "setComponent";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.util.HashSet;qian
		clazz = "Ljava/util/HashSet;";
		func = "add";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java/lang/String;qian
		clazz = "Ljava/lang/String;";
		func = "replace";
		pair = new SummaryPair();
		pair.addDest("vF");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.lang.reflect.Field;qian
		clazz = "Ljava/lang/reflect/Field;";
		func = "set";
		pair = new SummaryPair();
		pair.addDest("vE");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//java.lang.reflect.Field;qian
		clazz = "Ljava/lang/reflect/Field;";
		func = "setBoolean";
		pair = new SummaryPair();
		pair.addDest("vE");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//java.lang.reflect.Field;qian
		clazz = "Ljava/lang/reflect/Field;";
		func = "setByte";
		pair = new SummaryPair();
		pair.addDest("vE");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//java.lang.reflect.Field;qian
		clazz = "Ljava/lang/reflect/Field;";
		func = "setFloat";
		pair = new SummaryPair();
		pair.addDest("vE");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//java.lang.reflect.Field;qian
		clazz = "Ljava/lang/reflect/Field;";
		func = "setInt";
		pair = new SummaryPair();
		pair.addDest("vE");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//java.lang.reflect.Field;qian
		clazz = "Ljava/lang/reflect/Field;";
		func = "setString";
		pair = new SummaryPair();
		pair.addDest("vE");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//java.lang.reflect.Field;qian
		clazz = "Ljava/lang/reflect/Field;";
		func = "setChar";
		pair = new SummaryPair();
		pair.addDest("vE");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//Landroid/widget/TextView;qian
		clazz = "Landroid/widget/TextView;";
		func = "setText";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//Landroid/os/Message;qian
		clazz = "Landroid/os/Message;";
		func = "setData";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//Landroid/os/Message;qian
		clazz = "Landroid/os/Message;";
		func = "setTarget";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//Landroid/widget/TextView;qian
		clazz = "Landroid/widget/TextView;";
		func = "setHint";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//Landroid/widget/TextView;qian
		clazz = "Landroid/widget/TextView;";
		func = "setInputType";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		
		//Landroid/widget/TextView;qian
		clazz = "Landroid/widget/TextView;";
		func = "setImeOptions";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//Landroid/widget/TextView;qian
		clazz = "Landroid/widget/TextView;";
		func = "setImeActionLabel";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//Landroid/widget/TextView;qian
		clazz = "Landroid/widget/TextView;";
		func = "setOnEditorActionListener";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//java.lang.reflect.Field;qian
		clazz = "Ljava/lang/reflect/Field;";
		func = "setDouble";
		pair = new SummaryPair();
		pair.addDest("vE");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/android/AlertDialog;qian
		clazz = "Landroid/android/AlertDialog;";
		func = "setMessage";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//android/os/Bundle;qian
		clazz = "Landroid/os/Bundle;";
		func = "putParcelable";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/os/Bundle;qian
		clazz = "Landroid/os/Bundle;";
		func = "putParcelableArray";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/os/Bundle;qian
		clazz = "Landroid/os/Bundle;";
		func = "putParcelableArrayList";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/os/Bundle;qian
		clazz = "Landroid/os/Bundle;";
		func = "putStringArrayList";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/os/Bundle;qian
		clazz = "Landroid/os/Bundle;";
		func = "putCharSequenceArrayList";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/os/Bundle;qian
		clazz = "Landroid/os/Bundle;";
		func = "putSerializable";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/os/Bundle;qian
		clazz = "Landroid/os/Bundle;";
		func = "putByteArray";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/os/Bundle;qian
		clazz = "Landroid/os/Bundle;";
		func = "putShortArray";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/os/Bundle;qian
		clazz = "Landroid/os/Bundle;";
		func = "putLongArray";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/os/Bundle;qian
		clazz = "Landroid/os/Bundle;";
		func = "putDoubleArray";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/os/Bundle;qian
		clazz = "Landroid/os/Bundle;";
		func = "putBundle";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/os/Bundle;qian
		clazz = "Landroid/os/Bundle;";
		func = "putIBinder";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//android/os/Bundle;qian
		clazz = "Landroid/os/Bundle;";
		func = "putBooleanArray";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vF");
		summary.put(clazz + func, pair);
		
		//Ljava/io/CharArrayWriter;qian
		clazz = "Ljava/io/CharArrayWriter;";
		func = "write";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//Ljava/io/CharArrayWriter;qian
		clazz = "Ljava/io/CharArrayWriter;";
		func = "append";
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		*/
		
		//Ljava/net/URL;.<init>
		{		
			signature = "<java.net.URL: void <init>(java.lang.String)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));		
			stod.put(source, dests);		
					
			summary.put(signature, stod);
		}
		
		
		
		//Ljava/util/HashMap;.put;
		{		
			signature = "<java.util.HashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
			
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
	
		
		//Ljava/util/LinkedHashMap;.put;
		{		
			signature = "<java.util.LinkedHashMap: java.lang.Object put(java.lang.Object,java.lang.Object)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
			
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		//Ljava/util/Map;.put
		{		
			signature = "<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
			
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}	
		
		//Ljava/net/HttpURLConnection;.addRequestProperty
		{		
			signature = "<java.net.HttpURLConnection: void addRequestProperty(java.lang.String,java.lang.String)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
			
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}	
		
		//Ljava/util/List;.addAll
		{		
			signature = "<java.util.List: boolean addAll(java.util.Collection)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}	
		
		//Ljava/util/List;.add
		{		
			signature = "<java.util.List: boolean add(java.lang.Object)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		//Ljava/util/LinkedList;.add
		{		
			signature = "<java.util.LinkedList: boolean add(java.lang.Object)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}		
				
		//Ljava/util/Vector;.add
		{		
			signature = "<java.util.Vector: boolean add(java.lang.Object)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		//Ljava/util/ArrayList;.add
		{		
			signature = "<java.util.ArrayList: boolean add(java.lang.Object)>";							
			stod = new LinkedHashMap<Integer, List<Integer>>();
							
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
							
			summary.put(signature, stod);
		}
		
		//Lorg/apache/http/client/methods/HttpGet;.<init>
		{		
			signature = "<org.apache.http.client.methods.HttpGet: void <init>(java.lang.String)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		
		//Lorg/apache/http/message/BasicNameValuePair;.<init>
		{		
			signature = "<org.apache.http.message.BasicNameValuePair: void <init>(java.lang.String,java.lang.String)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}

		
		//Lorg/apache/http/client/entity/UrlEncodedFormEntity;.<init>
		{		
			signature = "<org.apache.http.client.entity.UrlEncodedFormEntity: void <init>(java.util.List)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}

		//<org.apache.http.client.methods.HttpEntityEnclosingRequestBase: void setEntity(org.apache.http.HttpEntity)>
		{		
			signature = "<org.apache.http.client.methods.HttpEntityEnclosingRequestBase: void setEntity(org.apache.http.HttpEntity)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}		

		//Lorg/apache/http/client/methods/HttpPost;.setEntity
		{		
			signature = "<org.apache.http.client.methods.HttpPost: void setEntity(org.apache.http.HttpEntity)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		
		//Lorg/apache/http/entity/FileEntity;.<init>
		{		
			signature = "<org.apache.http.entity.FileEntity: void <init>(java.io.File,java.lang.String)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		//Lorg/apache/http/entity/ByteArrayEntity;.<init>
		{		
			signature = "<org.apache.http.entity.ByteArrayEntity: void <init>(byte[])>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}		

		//Landroid/content/ContentValues;.put
		{		
			//Byte
			signature = "<android.content.ContentValues: void put(java.lang.String,java.lang.Byte)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
			
			//Integer
			signature = "<android.content.ContentValues: void put(java.lang.String,java.lang.Integer)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
			
			//Float
			signature = "<android.content.ContentValues: void put(java.lang.String,java.lang.Float)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
			
			//Short
			signature = "<android.content.ContentValues: void put(java.lang.String,java.lang.Short)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
			
			//byte[]
			signature = "<android.content.ContentValues: void put(java.lang.String,byte[])>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
			
			//String
			signature = "<android.content.ContentValues: void put(java.lang.String,java.lang.String)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
			
			//Double
			signature = "<android.content.ContentValues: void put(java.lang.String,java.lang.Double)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
			
			//Long
			signature = "<android.content.ContentValues: void put(java.lang.String,java.lang.Long)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
			
			//Boolean
			signature = "<android.content.ContentValues: void put(java.lang.String,java.lang.Boolean)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		

/*		//Landroid/content/ContentResolver;.insert
		//contentProvider should be the propagating target, not correct
		clazz = "Landroid/content/ContentResolver;";
		func = "insert";
		targets = new Vector<String>();
		targets.add("vD");
		summary.put(clazz + func, targets);*/
		
		//Ljava/io/InputStream;.read
		{
			//byte[]
			signature = "<java.io.InputStream: int read(byte[])>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(thisObject);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(0));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
			
			//byte[],int,int
			signature = "<java.io.InputStream: int read(byte[],int,int)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(thisObject);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(0));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		//<java.io.BufferedInputStream: int read(byte[],int,int)>
		{
			//byte[]
			signature = "<java.io.BufferedInputStream: int read(byte[])>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(thisObject);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(0));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
			
			//byte[],int,int
			signature = "<java.io.BufferedInputStream: int read(byte[],int,int)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(thisObject);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(0));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		
		/*
		//Ljava/io/DataOutputStream ;qian
		clazz = "Ljava/io/DataOutputStream;";
		func = "writeInt";
		//targets = new Vector<String>();
		//targets.add("vE");
		//summary.put(clazz + func, targets);
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//Ljava/io/DataOutputStream ;qian
		clazz = "Ljava/io/DataOutputStream;";
		func = "writeShort";
		//targets = new Vector<String>();
		//targets.add("vE");
		//summary.put(clazz + func, targets);
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//Ljava/io/DataOutputStream ;qian
		clazz = "Ljava/io/DataOutputStream;";
		func = "writeByte";
		//targets = new Vector<String>();
		//targets.add("vE");
		//summary.put(clazz + func, targets);
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		
		//Ljava/io/DataOutputStream ;qian
		clazz = "Ljava/io/DataOutputStream;";
		func = "write";
		//targets = new Vector<String>();
		//targets.add("vE");
		//summary.put(clazz + func, targets);
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//Ljava/io/FileOutputStream;qian
		clazz = "Ljava/io/FileOutputStream;";
		func = "write";
		//targets = new Vector<String>();
		//targets.add("vE");
		//summary.put(clazz + func, targets);
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//Ljava/io/DataOutputStream ;qian
		clazz = "Ljava/io/DataOutputStream;";
		func = "writeByte";
		//targets = new Vector<String>();
		//targets.add("vE");
		//summary.put(clazz + func, targets);
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//Ljava/lang/reflect/Method;qian
		clazz = "Ljava/lang/reflect/Method;";
		func = "setAccessible";
		//targets = new Vector<String>();
		//targets.add("vE");
		//summary.put(clazz + func, targets);
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
*/
		
		//Ljava/io/ByteArrayOutputStream;.write
		{
			//byte[]
			signature = "<java.io.ByteArrayOutputStream: void write(byte[],int,int)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);			
			
		}		
		
		/*
		//Ljava/net/HttpURLConnection;.setDoOutput
		{
			signature = "<java.net.HttpURLConnection: void setDoOutput(boolean)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);			
			
		}
		*/
		
		/*
		
		//Ljava/net/HttpURLConnection;.setDoInput
		clazz = "Ljava/net/HttpURLConnection;";
		func = "setDoInput";
		//targets = new Vector<String>();
		//targets.add("vD");
		//summary.put(clazz + func, targets);
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//Ljava/net/HttpURLConnection;.setUseCaches
		clazz = "Ljava/net/HttpURLConnection;";
		func = "setUseCaches";
		//targets = new Vector<String>();
		//targets.add("vD");
		//summary.put(clazz + func, targets);
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//Ljava/net/HttpURLConnection;.setInstanceFollowRedirects
		clazz = "Ljava/net/HttpURLConnection;";
		func = "setInstanceFollowRedirects";
		//targets = new Vector<String>();
		//targets.add("vD");
		//summary.put(clazz + func, targets);
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		*/
		
		//Ljava/net/HttpURLConnection;.setRequestProperty
		{
			signature = "<java.net.HttpURLConnection: void setRequestProperty(java.lang.String,java.lang.String)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);			
			
		}
		
		/*
		//Ljava/net/HttpURLConnection;.setConnectTimeout
		clazz = "Ljava/net/HttpURLConnection;";
		func = "setConnectTimeout";
		//targets = new Vector<String>();
		//targets.add("vD");
		//summary.put(clazz + func, targets);
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		
		//Ljava/net/HttpURLConnection;.setReadTimeout
		clazz = "Ljava/net/HttpURLConnection;";
		func = "setReadTimeout";
		//targets = new Vector<String>();
		//targets.add("vD");
		//summary.put(clazz + func, targets);
		pair = new SummaryPair();
		pair.addDest("vD");
		pair.addSource("vE");
		summary.put(clazz + func, pair);
		*/
		
		//Ljava/net/HttpURLConnection;.setRequestMethod
		{
			signature = "<java.net.HttpURLConnection: void setRequestMethod(java.lang.String)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);			
			
		}
				
		
		//Ljava/io/ByteArrayInputStream;.read
		{
			signature = "<java.io.ByteArrayInputStream: int read(byte[],int,int)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(thisObject);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(0));			
			stod.put(source, dests);
					
			summary.put(signature, stod);			
			
		}
		
		
		//Ljava/io/OutputStream;.write
		{
			//byte[],int,int
			signature = "<java.io.OutputStream: void write(byte[],int,int)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
			
			//byte[]
			signature = "<java.io.OutputStream: void write(byte[])>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
			
		}
		
		
		//Ljava/lang/StringBuffer;.append
		{
			//char[],int,int
			{
				signature = "<java.lang.StringBuffer: java.lang.StringBuffer append(char[],int,int)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//double
			{
				signature = "<java.lang.StringBuffer: java.lang.StringBuffer append(double)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//boolean
			{
				signature = "<java.lang.StringBuffer: java.lang.StringBuffer append(boolean)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//long
			{
				signature = "<java.lang.StringBuffer: java.lang.StringBuffer append(long)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//float
			{
				signature = "<java.lang.StringBuffer: java.lang.StringBuffer append(float)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//char[]
			{
				signature = "<java.lang.StringBuffer: java.lang.StringBuffer append(char[])>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//int
			{
				signature = "<java.lang.StringBuffer: java.lang.StringBuffer append(int)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//java.lang.StringBuffer
			{
				signature = "<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.StringBuffer)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//java.lang.CharSequence
			{
				signature = "<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.CharSequence)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//char
			{
				signature = "<java.lang.StringBuffer: java.lang.StringBuffer append(char)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//java.lang.String
			{
				signature = "<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//CharSequence,int,int
			{
				signature = "<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.CharSequence,int,int)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//java.lang.Object
			{
				signature = "<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
		}
		
		
		//Ljava/lang/StringBuilder;.append
		{
			//char[],int,int
			{
				signature = "<java.lang.StringBuilder: java.lang.StringBuilder append(char[],int,int)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//double
			{
				signature = "<java.lang.StringBuilder: java.lang.StringBuilder append(double)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//boolean
			{
				signature = "<java.lang.StringBuilder: java.lang.StringBuilder append(boolean)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//long
			{
				signature = "<java.lang.StringBuilder: java.lang.StringBuilder append(long)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//float
			{
				signature = "<java.lang.StringBuilder: java.lang.StringBuilder append(float)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//char[]
			{
				signature = "<java.lang.StringBuilder: java.lang.StringBuilder append(char[])>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//int
			{
				signature = "<java.lang.StringBuilder: java.lang.StringBuilder append(int)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//java.lang.StringBuffer
			{
				signature = "<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.StringBuffer)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//java.lang.CharSequence
			{
				signature = "<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//char
			{
				signature = "<java.lang.StringBuilder: java.lang.StringBuilder append(char)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//java.lang.String
			{
				signature = "<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));
				
				stod.put(source, dests);
						
				summary.put(signature, stod);
				
				
			}
			
			
			
			//CharSequence,int,int
			{
				signature = "<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.CharSequence,int,int)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
			//java.lang.Object
			{
				signature = "<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>";
				
				stod = new LinkedHashMap<Integer, List<Integer>>();
						
				source = new Integer(0);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(thisObject));
				dests.add(new Integer(returnValue));
				stod.put(source, dests);
				
				source = new Integer(thisObject);
				dests = new ArrayList<Integer>();
				dests.add(new Integer(returnValue));				
				stod.put(source, dests);
						
				summary.put(signature, stod);
			}
			
		}
				
		
		
		//Ljava/io/DataOutputStream;.write
		{
			//byte[],int,int
			signature = "<java.io.DataOutputStream: void write(byte[],int,int)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
							
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
							
			summary.put(signature, stod);
					
			//byte[]
			signature = "<java.io.DataOutputStream: void write(byte[])>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
							
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
							
			summary.put(signature, stod);
					
		}
		
		
		//<java.io.DataOutputStream: void writeInt(int)>
		{
			signature = "<java.io.DataOutputStream: void writeInt(int)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
							
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
							
			summary.put(signature, stod);
		}
		
		//<java.io.DataOutputStream: void writeShort(int)>
		{
			signature = "<java.io.DataOutputStream: void writeShort(int)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
							
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
							
			summary.put(signature, stod);
		}
		
		//<java.io.DataOutputStream: void writeLong(long)>
		{
			signature = "<java.io.DataOutputStream: void writeLong(long)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
							
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
							
			summary.put(signature, stod);
		}
		
		//<java.io.DataOutputStream: void writeUTF(java.lang.String)>
		{
			signature = "<java.io.DataOutputStream: void writeUTF(java.lang.String)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
							
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
							
			summary.put(signature, stod);
		}
		
		//<java.io.DataOutputStream: void writeBoolean(boolean)>
		{
			signature = "<java.io.DataOutputStream: void writeBoolean(boolean)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
							
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
							
			summary.put(signature, stod);
		}

		//<java.io.DataOutputStream: void writeByte(int)>
		{
			signature = "<java.io.DataOutputStream: void writeByte(int)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
							
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
							
			summary.put(signature, stod);
		}
		
		//Ljava/io/DataOutputStream;.writeBytes
		{		
			signature = "<java.io.DataOutputStream: void writeBytes(java.lang.String)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		//<java.io.DataOutputStream: void writeChar(int)>
		{
			signature = "<java.io.DataOutputStream: void writeChar(int)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
							
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
							
			summary.put(signature, stod);
		}
		
		//<java.io.DataOutputStream: void writeChars(String)>
		{
			signature = "<java.io.DataOutputStream: void writeChars(String)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
							
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
							
			summary.put(signature, stod);
		}
		
		//<java.io.DataOutputStream: void writeDouble(double)>
		{
			signature = "<java.io.DataOutputStream: void writeDouble(double)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
							
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
							
			summary.put(signature, stod);
		}
		
		//<java.io.DataOutputStream: void writeFloat(float)>
		{
			signature = "<java.io.DataOutputStream: void writeFloat(float)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
							
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
							
			summary.put(signature, stod);
		}
		
		
		
		//Ljava/io/DataInputStream;.read
		{		
			signature = "<java.io.DataInputStream: int read(byte[])>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(thisObject);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(0));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
			
			signature = "<java.io.DataInputStream: int read(byte[],int,int)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(thisObject);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(0));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		
		//Landroid/content/SharedPreferences$Editor;.putString
		//android.content.SharedPreferences.Editor
		{		
			signature = "<android.content.SharedPreferences.Editor: android.content.SharedPreferences.Editor putString(java.lang.String,java.lang.String)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		//Landroid/content/SharedPreferences$Editor;.putInt
		{		
			signature = "<android.content.SharedPreferences.Editor: android.content.SharedPreferences.Editor putInt(java.lang.String,int)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		
		//Landroid/content/SharedPreferences$Editor;.putLong
		{		
			signature = "<android.content.SharedPreferences.Editor: android.content.SharedPreferences.Editor putLong(java.lang.String,long)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		
		//Landroid/content/SharedPreferences$Editor;.putFloat
		{		
			signature = "<android.content.SharedPreferences.Editor: android.content.SharedPreferences.Editor putFloat(java.lang.String,float)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		//<android.content.SharedPreferences$Editor: android.content.SharedPreferences$Editor putFloat(java.lang.String,float)>
		{
			signature = "<android.content.SharedPreferences$Editor: android.content.SharedPreferences$Editor putFloat(java.lang.String,float)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);			
		}
		
		
		//Landroid/content/SharedPreferences$Editor;.putBoolean
		{		
			signature = "<android.content.SharedPreferences.Editor: android.content.SharedPreferences.Editor putBoolean(java.lang.String,boolean)>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		
		//Ljava/io/ByteArrayInputStream;.<init>
		{		
			signature = "<java.io.ByteArrayInputStream: void <init>(byte[])>";
					
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
			
			signature = "<java.io.ByteArrayInputStream: void <init>(byte[],int,int)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
				
		
		//Lorg/json/JSONObject;.put
		{		
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(1);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));
			dests.add(new Integer(returnValue));	
			stod.put(source, dests);
			
			signature = "<org.json.JSONObject: org.json.JSONObject put(java.lang.String,int)>";
			summary.put(signature, stod);
			
			signature = "<org.json.JSONObject: org.json.JSONObject put(java.lang.String,long)>";
			summary.put(signature, stod);
			
			signature = "<org.json.JSONObject: org.json.JSONObject put(java.lang.String,java.lang.Object)>";
			summary.put(signature, stod);
			
			signature = "<org.json.JSONObject: org.json.JSONObject put(java.lang.String,boolean)>";
			summary.put(signature, stod);
			
			signature = "<org.json.JSONObject: org.json.JSONObject put(java.lang.String,double)>";
			summary.put(signature, stod);
		}
		
		//Lorg/json/JSONArray;.put
		{						
			stod = new LinkedHashMap<Integer, List<Integer>>();
					
			source = new Integer(0);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(thisObject));
			dests.add(new Integer(returnValue));
			stod.put(source, dests);
					
			signature = "<org.json.JSONArray: org.json.JSONArray put(boolean)>";
			summary.put(signature, stod);
			
			signature = "<org.json.JSONArray: org.json.JSONArray put(int)>";
			summary.put(signature, stod);
			
			signature = "<org.json.JSONArray: org.json.JSONArray put(long)>";
			summary.put(signature, stod);
			
			signature = "<org.json.JSONArray: org.json.JSONArray put(double)>";
			summary.put(signature, stod);
			
			signature = "<org.json.JSONArray: org.json.JSONArray put(java.lang.Object)>";
			summary.put(signature, stod);
		}
		
		/*
		//<java.io.DataOutputStream: void <init>(java.io.OutputStream)>
		{
			signature = "<java.io.DataOutputStream: void <init>(java.io.OutputStream)>";
			
			stod = new LinkedHashMap<Integer, List<Integer>>();
			
			source = new Integer(thisObject);
			dests = new ArrayList<Integer>();
			dests.add(new Integer(0));			
			stod.put(source, dests);
					
			summary.put(signature, stod);
		}
		*/		
		
	}
	
	public static LinkedHashMap<Integer, List<Integer>> lookupFunctionSummary(String signature){
		
		if(summary.containsKey(signature)){
			return summary.get(signature);
		}else{
			return null;
		}
	}
	
	
}

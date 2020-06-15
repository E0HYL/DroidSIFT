package mySoot;

import java.util.LinkedHashMap;

public interface MyConstants {
	
	//additional libraries
	public static final String LIBDIR = "/home/muzhang/workspace/sootTest/test/";
	
	//public static final String GOOGLEMAP = "com.google.android.maps_dex2jar.jar";
	//public static final String FRAMEWORK = "framework_dex2jar.jar";
	public static final String JAVA = "/usr/lib/jvm/java-6-openjdk/jre/lib/rt.jar";
	public static final String MXPARSER = "org.apache.servicemix.bundles.xstream-1.2.2-1.0-m2.jar";
	
	public static final String ORG_APACHE_COMMONS_LOGGING = "commons-logging-1.1.1.jar";
	public static final String ORG_APACHE_COMMONS_CODEC = "commons-codec-1.6.jar";
	public static final String ORG_APACHE_HTTP_CLIENT = "httpclient-4.2.1.jar";
	public static final String ORG_APACHE_HTTP_CORE = "httpcore-4.3.jar";
	
	public static final String JODA_TIME = "joda-time-2.2.jar";
	public static final String JODA_CONVERT = "joda-convert-1.1.jar";
	public static final String XML_PARSER_APIS = "xmlParserAPIs-2.6.2.jar";
	public static final String XML_APIS = "xml-apis-1.3.04.jar";
	public static final String JAVA_AWT = "rt.jar";
	public static final String JSR305 = "jsr305-1.3.9.jar";
	public static final String SLF4J_API = "slf4j-api-1.7.5.jar";
	public static final String LOG4J = "log4j-1.2.17.jar";
	public static final String AMAZON_MAPS = "amazonmaps-1.0.2.jar";
	public static final String AMAZON_DEVICE_MESSAGING = "amazon-device-messaging-1.0.1.jar";
	public static final String SIGNPOST_CORE = "signpost-core-1.2.1.2.jar";
	public static final String SIGNPOST_COMMONSHTTP = "signpost-commonshttp4-1.2.1.2.jar";
	public static final String LIB_PHONE_NUMBER = "libphonenumber-5.9.jar";
	public static final String JAVAX_SERVLET = "javax.servlet-5.1.11";
	public static final String ROME = "rome-0.8.jar";
	public static final String JDOM = "jdom-1.0.jar";
	public static final String AD_SDK = "AD_SDK.jar";
	
	
	//public static final String ANDROID = "android.jar";
	//public static final String ANDROID_14 = "android-14.jar";
	
	public static final String ANDROID_19 = "android-19.jar";//4.4
	public static final String ANDROID_18 = "android-18.jar";//4.3
	public static final String ANDROID_17 = "android-17.jar";//4.2 
	public static final String ANDROID_16 = "android-16.jar";//4.1 jelly bean
	public static final String ANDROID_15 = "android-15.jar";//4.0 ice cream sandwich
	public static final String ANDROID_10 = "android-10.jar";//2.3.3 gingerbread
	public static final String ANDROID_8 = "android-8.jar";//2.2 froyo
	public static final String ANDROID_7 = "android-7.jar";//2.1 eclair
	public static final String ANDROID_4 = "android-4.jar";//1.6 donut
	public static final String ANDROID_3 = "android-3.jar";//1.5 cupcake
	
	public static final String GOOGLE_MAPS_17 = "maps-17.jar";
	public static final String GOOGLE_MAPS_16 = "maps-16.jar";
	public static final String GOOGLE_MAPS_15 = "maps-15.jar";
	public static final String GOOGLE_MAPS_10 = "maps-10.jar";
	public static final String GOOGLE_MAPS_8 = "maps-8.jar";
	public static final String GOOGLE_MAPS_7 = "maps-7.jar";
	public static final String GOOGLE_MAPS_4 = "maps-4.jar";
	public static final String GOOGLE_MAPS_3 = "maps-3.jar";
	
	public static final String GOOGLE_ANALYTICS = "libGoogleAnalytics.jar";
	public static final String GOOGLE_ANALYTICS_V2 = "libGoogleAnalyticsV2.jar";
	public static final String GOOGLE_ADMOB_ADS = "GoogleAdMobAdsSdk-4.0.4.jar";
	
	public static final boolean ALLOW_PHANTOM_REFS = true;
	
		
	public static final String FILENAME = "synthetic";

	public static final String CLASSPATH = "/home/muzhang/LEAKAGE_SAMPLES/" + FILENAME + "/";	
	public static final String PROCESS_DIR = CLASSPATH + "com/";	
	public static final String OUTPUT = "output" + "_" + FILENAME;	
	
	//for re-writing
	public static String boolWrapper = "BoolWrapper";
	public static String ServiceReply = "ServiceReply";
	public static String application = "MyApp";
	public static String tempLocal = "tmp";
	public static String dialogListener = "MyListener";
	public static String BCReceiver = "MyBCReceiver";
	public static String onMultiChoiceClickListener = "MyOnMultiChoiceClickListener";
	public static String showDialogTemp = "ShowDialogTemp";
	public static String queryTemp = "queryTemp";
	public static String toastTemp = "ToastTemp";
	public static String PTSMain = "PTSMain";
	
	//for analysis. conform to parameter index
	public static int thisObject = -1;
	public static int returnValue = -2;
	public static int noArgument = -3;
	
	//possible entry points. deprecated
	public static String mainEntry = "main";
	public static String onCreateEntry = "onCreate";
	public static String threadEntry = "run";
	public static String asyncTaskEntry = "doInBackground";
	
	public static String[] mainEntryPoints = new String[]{"main", "onCreate", "run"};
	
	public static String[] leakSources = new String[]{
		"<android.telephony.TelephonyManager: java.lang.String getDeviceId()>",
		"<android.location.LocationManager: android.location.Location getLastKnownLocation(java.lang.String)>",
		"<android.content.ContentResolver: android.database.Cursor query(android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>",
		"<android.telephony.TelephonyManager: java.lang.String getLine1Number()>"
		};
	
	//This is the combination of SINKS and SOURCESs
	public static String[] SENSITIVEAPICALLS = new String[]{
		"<android.telephony.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>",
		//"<java.io.OutputStream: void write(byte[],int,int)>",
		//"<java.io.OutputStream: void write(byte[])>",	
		"<android.location.LocationManager: android.location.Location getLastKnownLocation(java.lang.String)>",
		"<android.telephony.TelephonyManager: java.lang.String getDeviceId()>",
		"<android.location.Location: double getLatitude()>",
		"<android.location.Location: double getLongitude()>"
		/*
		"<android.widget.TextView: java.lang.CharSequence getText()>",
		"<android.widget.EditText: android.text.Editable getText()>",
		"<android.content.ContentResolver: android.database.Cursor query(android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>",
		
		"<android.app.ActivityManager: java.util.List getRunningTasks(int)>",
		"<android.telephony.TelephonyManager: java.lang.String getLine1Number()>",
		"<android.location.Location: double getLatitude()>",
		"<android.location.Location: double getLongitude()>",
		"<android.content.Intent: android.os.Bundle getExtras()>",
		"<android.content.Intent: android.net.Uri getData()>",
		"<android.os.Bundle: java.lang.String getString(java.lang.String)>",
		"<android.os.Bundle: int getInt(java.lang.String)>",
		"<android.os.Bundle: android.os.Bundle getExtras()>",
		"<android.content.Intent: java.lang.String getStringExtra(java.lang.String)>",
		"<android.content.Intent: android.os.Parcelable getParcelableExtra(java.lang.String)>",
		"<android.os.Message: java.lang.Object obj>",
		
		"<java.io.DataOutputStream: void write(byte[],int,int)>",
		"<java.io.FilterOutputStream: void write(byte[])>",
		"<org.apache.http.client.HttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>",
		"<org.apache.http.client.HttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest,org.apache.http.protocol.HttpContext)>",
		
		"<android.webkit.WebView: void loadUrl(java.lang.String)>",
		"<java.net.URL: java.net.URLConnection openConnection()>",
		
		"<android.database.sqlite.SQLiteDatabase: android.database.Cursor rawQuery(java.lang.String,java.lang.String[])>",
		
		//query9
		//android/database/sqlite/SQLiteDatabase;.query:(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
		"<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(boolean,java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>",
		
		//query8
		//Landroid/database/sqlite/SQLiteDatabase;.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
		"<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>",
		
		//query7
		//Landroid/database/sqlite/SQLiteDatabase;.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
		"<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>",
		
		//Landroid/database/sqlite/SQLiteQueryBuilder;.query:(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
		"<android.database.sqlite.SQLiteQueryBuilder: android.database.Cursor query(android.database.sqlite.SQLiteDatabase,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>",		
		
		"<org.apache.http.impl.client.AbstractHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>",
		"<org.apache.http.impl.client.DefaultHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>",
		*/
	};
	
	
	public static String[] SOURCES = new String[]{
		//"<android.widget.TextView: java.lang.CharSequence getText()>",
		//"<android.widget.EditText: android.text.Editable getText()>",
		//"<android.content.ContentResolver: android.database.Cursor query(android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>",
		"<android.telephony.TelephonyManager: java.lang.String getDeviceId()>",
		"<android.location.LocationManager: android.location.Location getLastKnownLocation(java.lang.String)>",
		//"<android.app.ActivityManager: java.util.List getRunningTasks(int)>",
		"<android.telephony.TelephonyManager: java.lang.String getLine1Number()>",
		"<android.location.Location: double getLatitude()>",
		"<android.location.Location: double getLongitude()>",
		//"<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.location.LocationListener,android.os.Looper)>",		
		//"<android.content.Intent: android.os.Bundle getExtras()>",
		//"<android.content.Intent: android.net.Uri getData()>",
		//"<android.os.Bundle: java.lang.String getString(java.lang.String)>",
		//"<android.os.Bundle: int getInt(java.lang.String)>",
		//"<android.os.Bundle: android.os.Bundle getExtras()>",
		//"<android.content.Intent: java.lang.String getStringExtra(java.lang.String)>",
		//"<android.content.Intent: android.os.Parcelable getParcelableExtra(java.lang.String)>",
		//"<android.os.Message: java.lang.Object obj>",
		"<android.media.AudioRecord: int read(byte[],int,int)>",
		"<android.media.AudioRecord: int read(short[],int,int)>",
		"<android.media.AudioRecord: int read(java.nio.ByteBuffer,int)>",
		"<android.hardware.Camera.PictureCallback: void onPictureTaken(byte[],android.hardware.Camera)>",
	};
	
	public static String[] SINKS = new String[]{
		"<java.io.OutputStream: void write(byte[],int,int)>",
		"java.io.RandomAccessFile: void write(byte[])",
		"<java.io.FileOutputStream: void write(byte[],int,int)>",
		"<java.io.FileOutputStream: void write(byte[])>",
		"<java.io.OutputStream: void write(byte[])>",
		//"<java.io.DataOutputStream: void write(byte[],int,int)>",
		"<java.io.FilterOutputStream: void write(byte[])>",
		"<java.io.FileOutputStream: void <init>(java.lang.String)>", //trace backward for file path
		"<android.media.MediaRecorder: void setOutputFile(java.lang.String)>",  //trace backward for file path
		"<org.apache.http.client.HttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>",
		"<org.apache.http.client.HttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest,org.apache.http.protocol.HttpContext)>",
		
		"<android.webkit.WebView: void loadUrl(java.lang.String)>",
		//"<java.net.URL: java.net.URLConnection openConnection()>",
		
		"<android.telephony.SmsManager: void sendDataMessage(java.lang.String,java.lang.String,short,byte[],android.app.PendingIntent,android.app.PendingIntent)>",
		"<android.telephony.gsm.SmsManager: void sendDataMessage(java.lang.String,java.lang.String,short,byte[],android.app.PendingIntent,android.app.PendingIntent)>",
		"<android.telephony.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>",
		"<android.telephony.gsm.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>",
		//"<android.database.sqlite.SQLiteDatabase: android.database.Cursor rawQuery(java.lang.String,java.lang.String[])>",
		
		//query9
		//android/database/sqlite/SQLiteDatabase;.query:(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
		//"<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(boolean,java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>",
		
		//query8
		//Landroid/database/sqlite/SQLiteDatabase;.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
		//"<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>",
		
		//query7
		//Landroid/database/sqlite/SQLiteDatabase;.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
		//"<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>",
		
		//Landroid/database/sqlite/SQLiteQueryBuilder;.query:(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
		//"<android.database.sqlite.SQLiteQueryBuilder: android.database.Cursor query(android.database.sqlite.SQLiteDatabase,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>",		
		
		//"<org.apache.http.impl.client.AbstractHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>",
		//"<org.apache.http.impl.client.DefaultHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>",
	};
	
	//public static String leakSource = "<android.telephony.TelephonyManager: java.lang.String getDeviceId()>";
	//public static String leakSource = "<android.location.LocationManager: android.location.Location getLastKnownLocation(java.lang.String)>";
	//public static String leakSource = "<android.content.Intent: android.net.Uri getData()>";
	//public static String leakSource = "<android.content.ContentResolver: android.database.Cursor query(android.net.Uri,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String)>";
	//public static String leakSource = "<android.app.ActivityManager: java.util.List getRunningTasks(int)>";
	//public static String leakSource = "<android.telephony.TelephonyManager: java.lang.String getLine1Number()>";
	//public static String leakSource = "<android.widget.TextView: java.lang.CharSequence getText()>";
	//public static String leakSource = "<android.location.Location: double getLatitude()>";
	
	/*
	public static String[] leakSink = new String[]{
		"<java.io.OutputStream: void write(byte[],int,int)>",
		"<java.io.OutputStream: void write(byte[])>",
		//"<java.io.DataOutputStream: void write(byte[],int,int)>",
		"<java.io.FilterOutputStream: void write(byte[])>",
		"<org.apache.http.client.HttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>",
		"<org.apache.http.client.HttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest,org.apache.http.protocol.HttpContext)>",
		"<org.apache.http.impl.client.DefaultHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>",
		"<org.apache.http.impl.client.AbstractHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>",
		"<android.webkit.WebView: void loadUrl(java.lang.String)>",
		"<java.net.URL: java.net.URLConnection openConnection()>"
	};	
	*/
	public static String[] leakSink = new String[]{
		"<android.telephony.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>"
	};
	
	//to target specific package
	public static final boolean isTrickOn = true;
	public static final String PROCESS_PACKAGE = "com/android/";	
	
	/*
	public static String[] EXCLUDE_PROCESS_PACKAGES = new String[]{
		"cn",
		"adwhirl",
		"admob",
		"mobclix",
		"phonegap",
		"jackpal"
	};
	*/
		
	public static String[] EXCLUDE_PROCESS_PACKAGES = new String[]{
		"com/adwhirl/AdWhirlLayout.class",
		"com/adwhirl/AdWhirlLayout$AdWhirlInterface.class",
		"com/adwhirl/AdWhirlLayout$HandleAdRunnable.class",
		"com/adwhirl/AdWhirlLayout$ViewAdRunnable.class",
		"com/adwhirl/AdWhirlLayout$InitRunnable.class",
		"com/adwhirl/AdWhirlLayout$PingUrlRunnable.class",
		"com/adwhirl/AdWhirlLayout$RotateAdRunnable.class",
		"com/adwhirl/adapters/QuattroAdapter.class",
		"com/adwhirl/adapters/MillennialAdapter.class",
		"com/adwhirl/adapters/ZestAdzAdapter.class",
		"com/adwhirl/adapters/GreystripeAdapter.class",
		"com/adwhirl/adapters/AdSenseAdapter$ExtendedAdSenseSpec.class",
		"com/adwhirl/adapters/AdSenseAdapter.class",
		"com/phonegap/DroidGap.class",
		"com/phonegap/DroidGap$GapClient$GapCancelDialog.class",
		"com/phonegap/DroidGap$GapClient$GapOKDialog.class",
		"com/phonegap/DroidGap$GapViewClient.class",
		"com/phonegap/DroidGap$GapClient.class",
		"com/phonegap/DroidGap$TInputStream.class",
		"com/phonegap/DroidGap$TranslateInputStream.class",
		"com/phonegap/DroidGap$TranslateOutputStream.class",
		"com/phonegap/DroidGap$1.class",
		"com/adwhirl/adapters/AdWhirlAdapter.class",
		"com/adwhirl/adapters/CustomAdapter.class",
		"com/adwhirl/adapters/CustomAdapter$FetchCustomRunnable.class",
		"com/adwhirl/adapters/CustomAdapter$DisplayCustomRunnable.class",
		"com/adwhirl/adapters/EventAdapter.class",
		"com/adwhirl/adapters/GenericAdapter.class",
		"com/adwhirl/adapters/AdMobAdapter.class",
		"cn/bluesky/fingerbowling/FingerBowling.class",
		"com/phonegap/CameraLauncher.class",
		"com/phonegap/PhoneGap.class",
	};
	
	//switches and options
	public static boolean instrument = true;
	public static boolean optimize = true;
	public static boolean DEBUG_INFO = false;
	public static boolean COUNT_LOC = false;	
	public static int DFA_DEPTH = 7;
	public static boolean CONSIDER_REDEFINE = true;
	public static boolean OVERWRITE_CONFIG = false;
	
	//for debugging
	public static final boolean TO_TAINT_INSTANCE_FIELD = true;
	public static final boolean TO_TAINT_STATIC_FIELD = true;
	public static final boolean TO_ENFORCE_CONTROL = false;
	public static final boolean MU_TEST = false;
	
	public static final boolean TO_CONSIDER_LIMIT = true;
	public static final int MAX_NODES_CONSIDERED = 300;
	public static final int MAX_APINODES_CONSIDERED = 200;
	
	//features
	public static final int NUM_FEATURES = 4;
	
	public static final int ATTR_PREDECESSOR_IS_PERMISSION_DEPENDENT = 0;
	public static final int ATTR_ENTRY_POINT_IS_IN_BACKGROUND = 1;
	public static final int ATTR_PARAMETER_IS_CONSTANT = 2;
	public static final int ATTR_IS_MALICIOUS = 3;
	
	/*
	//constants for security labels
	public static final int SL_SENDSMS_USER_TO_API 			= 0x00000001;
	public static final int SL_SENDSMS_CONTACTS_TO_API 		= 0x00000002;
	public static final int SL_SENDSMS_HARDCODE_TO_API 		= 0x00000003;
	public static final int SL_SENDSMS_IO_TO_API 			= 0x00000004;
	public static final int SL_SENDSMS_INTENT_TO_API 		= 0x00000005;
	
	public static final int SL_CALLPHONE_USER_TO_API		= 0x00000010;
	public static final int SL_CALLPHONE_CONTACTS_TO_API 	= 0x00000020;
	public static final int SL_CALLPHONE_HARDCODE_TO_API 	= 0x00000030;
	public static final int SL_CALLPHONE_IO_TO_API 			= 0x00000040;
	public static final int SL_CALLPHONE_INTENT_TO_API 		= 0x00000050;
	
	public static final int SL_READCONTACTS_API_TO_IO		= 0x00000100;
	public static final int SL_READCONTACTS_API_TO_SMS	 	= 0x00000200;
	public static final int SL_READCONTACTS_API_TO_PHONE 	= 0x00000300;
	
	
	//labels of data origins
	public static final int SL_FW_FROM_USER				= 0xffffffff;
	public static final int SL_FW_FROM_CONTACTS			= 0xfffffffe;
	public static final int SL_FW_FROM_HARDCODE			= 0xfffffffd;
	public static final int SL_FW_FROM_NETWORK			= 0xfffffffc;
	public static final int SL_FW_FROM_FILE				= 0xfffffffb;
	public static final int SL_FW_FROM_INTENT			= 0xfffffffa;
	*/
	
	public static String[] constParameterAPIList = new String[]
	{
		"<android.location.LocationManager: boolean sendExtraCommand(java.lang.String,java.lang.String,android.os.Bundle)>",
        "<android.widget.VideoView: void setVideoPath(java.lang.String)>",
        "<android.media.MediaRecorder: void setOutputFile(java.lang.String)>",
        "<android.telephony.gsm.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>",
        "<android.telephony.SmsManager: void sendMultipartTextMessage(java.lang.String,java.lang.String,java.util.ArrayList,java.util.ArrayList,java.util.ArrayList)>",
        "<android.telephony.gsm.SmsManager: void sendDataMessage(java.lang.String,java.lang.String,short,byte[],android.app.PendingIntent,android.app.PendingIntent)>",
        "<android.telephony.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>",
        "<android.telephony.gsm.SmsManager: void sendMultipartTextMessage(java.lang.String,java.lang.String,java.util.ArrayList,java.util.ArrayList,java.util.ArrayList)>",
        "<android.telephony.SmsManager: void sendDataMessage(java.lang.String,java.lang.String,short,byte[],android.app.PendingIntent,android.app.PendingIntent)>",
        "<android.telephony.SmsMessage: android.telephony.SmsMessage createFromPdu(byte[])>",
        "<android.webkit.WebView: void loadUrl(java.lang.String)>",
        "<java.lang.ClassLoader: java.lang.Class loadClass(java.lang.String)>",
        "<dalvik.system.DexClassLoader: java.lang.Class loadClass(java.lang.String)>",
        "<dalvik.system.DexClassLoader: java.lang.Class loadClass(java.lang.String,boolean)>",
        "<java.io.OutputStream: void write(byte[],int,int)>",
        "<java.io.OutputStream: void write(byte[])>",
        "<java.io.FileOutputStream: void write(byte[],int,int)>",
        "<java.io.FileOutputStream: void write(byte[])>",
        "<java.io.DataOutputStream: void write(byte[],int,int)>",
        "<java.io.FilterOutputStream: void write(byte[])>",
        "<java.io.DataOutputStream: void writeBytes(java.lang.String)>",
        "<java.io.File: boolean delete()>",
		"<java.io.File: boolean exists()>",
		"<android.app.ActivityManager: void restartPackage(java.lang.String)>",
		"<android.app.ActivityManager: void killBackgroundProcesses(java.lang.String)>",
		"<java.net.URL: java.io.InputStream openStream()>",
		"<java.net.URL: java.net.URLConnection openConnection()>",
	};
	
	//list of sensitive APIs
	//replaced by SensitiveAPICategory class
	public static String[] sensitiveAPIList = new String[]{
		
		//cell phone info query
		"<android.telephony.TelephonyManager: java.lang.String getSubscriberId()>",
		"<android.telephony.TelephonyManager: java.lang.String getDeviceSoftwareVersion()>",
		"<android.telephony.TelephonyManager: java.lang.String getLine1Number()>",
		"<android.telephony.TelephonyManager: java.lang.String getSimSerialNumber()>",
		"<android.telephony.TelephonyManager: java.lang.String getVoiceMailAlphaTag()>",
		"<android.telephony.TelephonyManager: java.lang.String getVoiceMailNumber()>",
		"<android.telephony.TelephonyManager: java.lang.String getDeviceId()>",
		"<android.telephony.TelephonyManager: java.util.List getNeighboringCellInfo()>",
		"<android.telephony.TelephonyManager: java.lang.String getNetworkOperator()>",

		
		//cell phone tasks query and manipulation
		"<android.app.ActivityManager: java.util.List getRecentTasks(int,int)>",
		"<android.app.ActivityManager: java.util.List getRunningTasks(int)>",
		"<android.app.ActivityManager: java.util.List getRunningTasks(int,int,android.app.IThumbnailReceiver)>",
//		"<android.app.ActivityManager: java.util.List getRunningServices(int)>",
		"<android.app.ActivityManager: void restartPackage(java.lang.String)>",
		"<android.app.ActivityManager: void killBackgroundProcesses(java.lang.String)>",
		"<android.os.Process: int myPid()>",
//		"<android.os.Process: void killProcess(int)>",
		"<android.app.ActivityManager: void getMemoryInfo(android.app.ActivityManager$MemoryInfo)>",
		
		
		//application 
		"<android.content.pm.PackageManager: android.content.pm.ApplicationInfo getApplicationInfo(java.lang.String,int)>",
		"<android.content.pm.PackageManager: java.util.List getInstalledPackages(int)>",

		
		//wifi info query and manipulation
		"<android.net.wifi.WifiManager: java.util.List getScanResults()>",
		"<android.net.wifi.WifiManager: android.net.DhcpInfo getDhcpInfo()>",
		"<android.net.wifi.WifiManager: boolean pingSupplicant()>",
		"<android.net.wifi.WifiManager: boolean isWifiEnabled()>",
		"<android.net.wifi.WifiManager: android.net.wifi.WifiInfo getConnectionInfo()>",
		"<android.net.wifi.WifiManager: int getWifiState()>",
		"<android.net.wifi.WifiManager: java.util.List getConfiguredNetworks()>",
		"<android.net.wifi.WifiManager: void setCountryCode(java.lang.String,boolean)>",
		
		
		//network info query and manipulation
		"<android.net.ConnectivityManager: android.net.NetworkInfo getNetworkInfo(int)>",
		"<android.net.ConnectivityManager: boolean isActiveNetworkMetered()>",
		"<android.net.ConnectivityManager: android.net.NetworkInfo getActiveNetworkInfo()>",
		"<android.net.ConnectivityManager: android.net.NetworkInfo[] getAllNetworkInfo()>",
		"<android.net.NetworkInfo: java.lang.String getExtraInfo()>",
		"<android.net.NetworkInfo: java.lang.String getTypeName()>",
		"<android.net.NetworkInfo: boolean isConnected()>",
		"<android.net.NetworkInfo: android.net.NetworkInfo$State getState()>",
		"<android.net.ConnectivityManager: int startUsingNetworkFeature(int,java.lang.String)>",
		"<android.net.ConnectivityManager: int stopUsingNetworkFeature(int,java.lang.String)>",
		
		
		//calls info query
		"<android.provider.CallLog$Calls: java.lang.String getLastOutgoingCall(android.content.Context)>",
		
		
		//location info query
		"<android.location.LocationManager: boolean isProviderEnabled(java.lang.String)>",
		"<android.location.LocationManager: boolean sendExtraCommand(java.lang.String,java.lang.String,android.os.Bundle)>",
		"<android.location.Location: double getLatitude()>",
		"<android.location.Location: double getLongitude()>",
		"<android.location.Location: double getAltitude()>",
		"<android.telephony.TelephonyManager: android.telephony.CellLocation getCellLocation()>",
		"<android.location.LocationManager: java.util.List getProviders(boolean)>",
		"<android.location.LocationManager: java.util.List getProviders(android.location.Criteria,boolean)>",
		"<android.location.LocationManager: android.location.LocationProvider getProvider(java.lang.String)>",
		"<android.location.LocationManager: java.lang.String getBestProvider(android.location.Criteria,boolean)>",
		"<android.location.LocationManager: android.location.Location getLastKnownLocation(java.lang.String)>",
		"<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.location.LocationListener)>",
		"<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.location.LocationListener,Looper looper)>",
		
		
		//content provider query
		"<android.provider.Browser: android.database.Cursor getAllVisitedUrls(android.content.ContentResolver)>",
		"<android.provider.Browser: java.lang.String[] getVisitedHistory(android.content.ContentResolver)>",
		"<android.provider.Browser: android.database.Cursor getAllBookmarks(android.content.ContentResolver)>",
		"<android.provider.CalendarContract$Instances: android.database.Cursor query(android.content.ContentResolver,java.lang.String[],long,long)>",
		"<android.provider.CalendarContract$EventDays: android.database.Cursor query(android.content.ContentResolver,int,int,java.lang.String[])>",
		"<android.provider.CalendarContract$Instances: android.database.Cursor query(android.content.ContentResolver,java.lang.String[],long,long,java.lang.String)>",
		"<android.provider.CalendarContract$Attendees: android.database.Cursor query(android.content.ContentResolver,long,java.lang.String[])>",
		"<android.provider.CalendarContract$Reminders: android.database.Cursor query(android.content.ContentResolver,long,java.lang.String[])>",
		"<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>",
		"<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>",
		"<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(boolean,java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>",
		"<android.database.sqlite.SQLiteQueryBuilder: android.database.Cursor query(android.database.sqlite.SQLiteDatabase,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>",
		"<android.database.sqlite.SQLiteDatabase: android.database.Cursor rawQuery(java.lang.String,java.lang.String[])>",
		"<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>",
		"<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>",
		"<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(boolean,java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>",
		"<android.database.sqlite.SQLiteQueryBuilder: android.database.Cursor query(android.database.sqlite.SQLiteDatabase,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>",
		"<android.database.sqlite.SQLiteDatabase: android.database.Cursor rawQuery(java.lang.String,java.lang.String[])>",

		
		//android account manager query and manipulation
		"<android.accounts.AccountManager: java.lang.String getPassword(android.accounts.Account)>",
		"<android.accounts.AccountManager: java.lang.String peekAuthToken(android.accounts.Account,java.lang.String)>",
		"<android.accounts.AccountManager: java.lang.String getUserData(android.accounts.Account,java.lang.String)>",
		"<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,android.os.Bundle,boolean,android.accounts.AccountManagerCallback,android.os.Handler)>",
		"<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,boolean,android.accounts.AccountManagerCallback,android.os.Handler)>",
		"<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthTokenByFeatures(java.lang.String,java.lang.String,java.lang.String[],android.app.Activity,android.os.Bundle,android.os.Bundle,android.accounts.AccountManagerCallback,android.os.Handler)>",
		"<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAccountsByTypeAndFeatures(java.lang.String,java.lang.String[],android.accounts.AccountManagerCallback,android.os.Handler)>",
		"<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>",
		"<android.accounts.AccountManager: android.accounts.Account[] getAccountsByType(java.lang.String)>",
		"<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthTokenLabel(java.lang.String,java.lang.String,android.accounts.AccountManagerCallback,android.os.Handler)>",
		"<android.accounts.AccountManager: android.accounts.Account[] getAccounts()>",
		"<android.accounts.AccountManager: void setUserData(android.accounts.Account,java.lang.String,java.lang.String)>",
		"<android.accounts.AccountManager: void setPassword(android.accounts.Account,java.lang.String)>",
		"<android.accounts.AccountManager: boolean addAccountExplicitly(android.accounts.Account,java.lang.String,android.os.Bundle)>",
		"<android.accounts.AccountManager: void setAuthToken(android.accounts.Account,java.lang.String,java.lang.String)>",
		"<android.accounts.AccountManager: android.accounts.AccountManagerFuture confirmCredentials(android.accounts.Account,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>",
		"<android.accounts.AccountManager: android.accounts.AccountManagerFuture editProperties(java.lang.String,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>",
		"<android.accounts.AccountManager: android.accounts.AccountManagerFuture addAccount(java.lang.String,java.lang.String,java.lang.String[],android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>",
		"<android.accounts.AccountManager: android.accounts.AccountManagerFuture removeAccount(android.accounts.Account,android.accounts.AccountManagerCallback,android.os.Handler)>",
		"<android.accounts.AccountManager: android.accounts.AccountManagerFuture updateCredentials(android.accounts.Account,java.lang.String,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>",
		"<android.accounts.AccountManager: android.accounts.AccountManagerFuture hasFeatures(android.accounts.Account,java.lang.String[],android.accounts.AccountManagerCallback,android.os.Handler)>",
		"<android.accounts.AccountManager: java.lang.String blockingGetAuthToken(android.accounts.Account,java.lang.String,boolean)>",
		

		//media manipulation
		"<android.media.AudioRecord: int read(byte[],int,int)>",
		"<android.media.AudioRecord: int read(short[],int,int)>",
		"<android.media.AudioRecord: int read(java.nio.ByteBuffer,int)>",
		"<android.widget.VideoView: void setVideoURI(android.net.Uri,java.util.Map)>",
		"<android.media.Ringtone: void setUri(android.net.Uri)>",
		"<android.media.AsyncPlayer: void play(android.content.Context,android.net.Uri,boolean,int)>",
		"<android.widget.VideoView: void setVideoPath(java.lang.String)>",
		"<android.widget.VideoView: void setVideoURI(android.net.Uri)>",
		"<android.media.MediaRecorder: void setOutputFile(java.lang.String)>",
		
		
		//textview
		"<android.widget.TextView: java.lang.CharSequence getText()>",
		"<android.widget.EditText: android.text.Editable getText()>",
		
		
		//Cipher
		"<javax.crypto.Cipher: javax.crypto.Cipher getInstance(java.lang.String)>",
		"<javax.crypto.Cipher: javax.crypto.Cipher getInstance(java.lang.String,java.lang.String)>",
		"<javax.crypto.Cipher: javax.crypto.Cipher getInstance(java.lang.String,java.security.Provider)>",
		
		
		//Contacts query and manipulation
		"<android.provider.Contacts$People: void markAsContacted(android.content.ContentResolver,long)>",
		"<android.provider.Contacts$ContactMethods: void addPostalLocation(android.content.Context,long,double,double)>",
		"<android.widget.QuickContactBadge: void assignContactFromPhone(java.lang.String,boolean)>",
		"<android.provider.Contacts$People: android.database.Cursor queryGroups(android.content.ContentResolver,long)>",
		"<android.provider.Contacts$People: android.net.Uri createPersonInMyContactsGroup(android.content.ContentResolver,android.content.ContentValues)>",
		"<android.provider.Contacts$People: android.net.Uri addToGroup(android.content.ContentResolver,long,java.lang.String)>",
		"<android.provider.Contacts$People: android.net.Uri addToMyContactsGroup(android.content.ContentResolver,long)>",
		"<android.provider.Contacts$Settings: void setSetting(android.content.ContentResolver,java.lang.String,java.lang.String,java.lang.String)>",
		"<android.provider.ContactsContract$Contacts: void markAsContacted(android.content.ContentResolver,long)>",
		"<android.widget.QuickContactBadge: void assignContactFromEmail(java.lang.String,boolean)>",
		"<android.provider.Contacts$People: android.net.Uri addToGroup(android.content.ContentResolver,long,long)>",
		
		
		//Text Message manipulation
		"<android.telephony.gsm.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>",
		"<android.telephony.SmsManager: void sendMultipartTextMessage(java.lang.String,java.lang.String,java.util.ArrayList,java.util.ArrayList,java.util.ArrayList)>",
		"<android.telephony.gsm.SmsManager: void sendDataMessage(java.lang.String,java.lang.String,short,byte[],android.app.PendingIntent,android.app.PendingIntent)>",
		"<android.telephony.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>",
		"<android.telephony.gsm.SmsManager: void sendMultipartTextMessage(java.lang.String,java.lang.String,java.util.ArrayList,java.util.ArrayList,java.util.ArrayList)>",
		"<android.telephony.SmsManager: void sendDataMessage(java.lang.String,java.lang.String,short,byte[],android.app.PendingIntent,android.app.PendingIntent)>",
		"<android.telephony.SmsMessage: android.telephony.SmsMessage createFromPdu(byte[])>",
		"<android.provider.Telephony.Sms$Intents: android.telephony.SmsMessage[] getMessagesFromIntent(android.content.Intent)>",
		"<android.telephony.SmsMessage: java.lang.String getMessageBody()>",
		
		
		//Browser records manipulation
		"<android.provider.Browser: void deleteFromHistory(android.content.ContentResolver,java.lang.String)>",
		"<android.provider.Browser: void addSearchUrl(android.content.ContentResolver,java.lang.String)>",
		"<android.provider.Browser: void updateVisitedHistory(android.content.ContentResolver,java.lang.String,boolean)>",
		"<android.provider.Browser: void clearSearches(android.content.ContentResolver)>",
		"<android.provider.Browser: void clearHistory(android.content.ContentResolver)>",
		"<android.provider.Browser: void deleteHistoryTimeFrame(android.content.ContentResolver,long,long)>",
		
		//Misc
		"<android.webkit.WebView: void loadUrl(java.lang.String)>",
		"<android.media.RingtoneManager: void setActualDefaultRingtoneUri(android.content.Context,int,android.net.Uri)>",
		"<android.app.NotificationManager: void notify(java.lang.String,int,android.app.Notification)>",
		"<org.w3c.dom.Document: org.w3c.dom.Element getDocumentElement()>",
		"<org.w3c.dom.Element: org.w3c.dom.NodeList getElementsByTagName(java.lang.String)>",
		"<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>",
		
		
		//System settings
		"<android.provider.Settings$System: android.net.Uri getUriFor(java.lang.String)>",
		"<android.provider.Settings$Secure: boolean putString(android.content.ContentResolver,java.lang.String,java.lang.String)>",
		"<android.provider.Settings$Secure: boolean putLong(android.content.ContentResolver,java.lang.String,long)>",
		"<android.provider.Settings$System: boolean putLong(android.content.ContentResolver,java.lang.String,long)>",
		"<android.provider.Settings$Secure: boolean putInt(android.content.ContentResolver,java.lang.String,int)>",
		"<android.provider.Settings$Secure: boolean putFloat(android.content.ContentResolver,java.lang.String,float)>",
		"<android.provider.Settings$System: boolean putInt(android.content.ContentResolver,java.lang.String,int)>",
		"<android.provider.Settings$Secure: android.net.Uri getUriFor(java.lang.String)>",
		"<android.provider.Settings$System: boolean putFloat(android.content.ContentResolver,java.lang.String,float)>",
		"<android.provider.Settings$System: boolean putString(android.content.ContentResolver,java.lang.String,java.lang.String)>",
		"<android.provider.Settings$System: boolean putConfiguration(android.content.ContentResolver,android.content.res.Configuration)>",
		
		
		//Calendar
		"<android.provider.CalendarContract$CalendarAlerts: android.net.Uri insert(android.content.ContentResolver,long,long,long,long,int)>",

		
		//Dynamic loading
		"<java.lang.ClassLoader: java.lang.Class loadClass(java.lang.String)>",
		"<dalvik.system.DexClassLoader: java.lang.Class loadClass(java.lang.String)>",
		"<dalvik.system.DexClassLoader: java.lang.Class loadClass(java.lang.String,boolean)>",
		"<dalvik.system.DexClassLoader: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.ClassLoader)>",
		"<android.content.Context: android.content.Context createPackageContext(java.lang.String,int)>",
		"<java.lang.Runtime: java.lang.Process exec(java.lang.String)>",
		"<java.lang.Runtime: java.lang.Process exec(java.lang.String[],java.lang.String[])>",
		"<java.lang.Runtime: java.lang.Process exec(java.lang.String,java.lang.String[],java.io.File)>",
		"<java.lang.Runtime: java.lang.Process exec(java.lang.String[],java.lang.String[],java.io.File)>",
		"<java.lang.Runtime: java.lang.Process exec(java.lang.String,java.lang.String[])>",
		"<java.lang.Runtime: java.lang.Process exec(java.lang.String[])>",
		
		
		//Reflection
		"<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>",
				
		
		//File and network IO
		"<org.apache.http.impl.client.DefaultHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>",
		"<org.apache.http.impl.client.AbstractHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>",
		"<org.apache.http.client.HttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>",
		"<org.apache.http.client.HttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest,org.apache.http.protocol.HttpContext)>",
		"<org.apache.http.impl.client.DefaultHttpClient: void <init>(int)>",
		"<java.net.DatagramSocket: void <init>(int)>",
		"<android.content.Context: java.io.File getFilesDir()>",
		"<java.io.File: java.io.File[] listFiles()>",
		"<java.io.File: boolean mkdir()>",
		"<java.io.File: boolean delete()>",
		"<java.io.File: boolean exists()>",
		"<java.io.File: void <init>(java.lang.String,java.lang.String)>",
		"<java.io.File: void <init>(java.io.File,java.lang.String>",
		"<java.io.OutputStream: void write(byte[],int,int)>",
		"<java.io.OutputStream: void write(byte[])>",
		"<java.io.FileOutputStream: void write(byte[],int,int)>",
		"<java.io.FileOutputStream: void <init>(java.lang.String)>",
		"<java.io.FileOutputStream: void write(byte[])>",
		"<java.io.DataOutputStream: void write(byte[],int,int)>",
		"<java.io.FilterOutputStream: void write(byte[])>",
		"<java.io.DataOutputStream: void writeBytes(java.lang.String)>",
		"<java.net.HttpURLConnection: void setRequestMethod(java.lang.String)>",
		"<java.net.HttpURLConnection: java.io.OutputStream getOutputStream()>",
		"<java.net.Socket: java.io.OutputStream getOutputStream()>",
		"<java.net.ServerSocket: void bind(java.net.SocketAddress)>",
		"<java.net.URL: java.io.InputStream openStream()>",
		"<java.net.URL: java.net.URLConnection openConnection()>",
		"<java.net.Socket: void <init>(int)>",
		"<java.net.MulticastSocket: void <init>(int)>",
		"<java.net.HttpURLConnection: void <init>(int)>",
		"<java.net.ServerSocket: void <init>(int)>",
		"<java.net.URL: java.lang.Object getContent()>",
		"<java.net.Socket: java.io.InputStream getInputStream()>",
		"<java.net.URLConnection: java.io.InputStream getInputStream()>",
		"<android.content.Context: java.io.FileOutputStream openFileOutput(java.lang.String,int)>",

	};
	
	public static String[] userInteractiveEntryPoints = new String[]
	{
		"onDrag",
		"onClick",
		"onTouch",
		"onGenericMotion",
		"onKey",
		"onLongClick",
		"onHover",
		"onFocusChange",
		"onSystemUiVisibilityChange",
		"onMenuItemClick",
		"onVisibilityChanged",

		"onBackPressed",
		"onContextItemSelected",
		"onContextMenuClosed",
		"onKeyDown",
		"onKeyLongPress",
		"onKeyUp",
		"onMenuOpened",
		"onMenuItemSelected",
		"onNavigateUp",
		"onNavigateUpFromChild",
		"onOptionsItemSelected",
		"onOptionsMenuClosed",
		"onSearchRequested",
		"onTouchEvent",
		"onTrackballEvent",
		"onUserInteraction",

		"onPress",
		"onRelease",
		"swipeDown",
		"swipeLeft",
		"swipeRight",
		"swipeUp",
	};
	
	//ded paper
	public static String[] AdLibs = new String[]{
		"com.admob.android.ads.",
		"com.google.ads.",
		"com.flurry.android.",
		"com.qwapi.adclient.android.",
		"com.google.android.apps.analytics.",
		"com.adwhirl.",
		"com.mobclix.android.sdk.",
		"com.millennialmedia.android.",
		"com.zestadz.android.",
		"com.admarvel.android.ads.",
		"com.estsoft.adlocal.",
		"com.adfonic.android.",
		"com.vdroid.ads.",
		"com.greystripe.android.sdk.",
		"com.medialets.",
		"com.wooboo.adlib_android.",
		"com.adserver.adview.",
		"com.tapjoy.",
		"com.inmobi.androidsdk.",
		"com.apegroup.ad.",
		"com.casee.adsdk.",
		"com.webtrends.mobile.",
		"com.smaato.SOMA.",
		"android.support.v4.app.",
	};
}

package mySoot.util;

import mySoot.MyConstants;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

public class AndroidSourceSinkSummary{

	public static LinkedHashMap<String, List<Integer>> sourceSummary = new LinkedHashMap<String, List<Integer>>();
	public static LinkedHashMap<String, List<Integer>> callbackSourceSummary = new LinkedHashMap<String, List<Integer>>();
	public static LinkedHashMap<String, List<Integer>> callbackSourceSubSummary = new LinkedHashMap<String, List<Integer>>();
	public static LinkedHashMap<String, String> callbackSourceSubSignatureMap = new LinkedHashMap<String, String>();
	public static LinkedHashMap<String, List<Integer>> sinkSummary = new LinkedHashMap<String, List<Integer>>();
	
	public static List<String> SOURCES = new ArrayList<String>();
	public static List<String> SINKS = new ArrayList<String>();
		
	private static Integer ret = new Integer(MyConstants.returnValue);
	private static Integer thiz = new Integer(MyConstants.thisObject);
	private static Integer param0 = new Integer(0);
	private static Integer param1 = new Integer(1);
	private static Integer param2 = new Integer(2);
	private static Integer param3 = new Integer(3);
	private static Integer param4 = new Integer(4);
	private static Integer param5 = new Integer(5);
	private static Integer param6 = new Integer(6);
	private static Integer param7 = new Integer(7);
	private static Integer param8 = new Integer(8);
	private static Integer all = new Integer(-1);
	
	public static void buildSourceAndSinkSummary(){
		
		if(MyConstants.MU_TEST){
			buildTestSourceSummary();
		}else{
			buildSourceSummary();
		}
		
		if(MyConstants.MU_TEST){
			buildTestCallbackSourceSummary();
		}else{
			buildCallbackSourceSummary();
		}		
		
		if(MyConstants.MU_TEST){
			buildTestSinkSummary();
		}else{
			buildSinkSummary();
		}
		
		buildSourceSinkList();
	}
	
	public static boolean isSource(String signature){
		if(sourceSummary.containsKey(signature)){
			return true;
		}
		
		if(callbackSourceSubSummary.containsKey(signature)){
			return true;
		}
		
		return false;
	}
	
	public static boolean isSink(String signature){
		if(sinkSummary.containsKey(signature)){
			return true;
		}
		return false;
	}
	
	public static boolean isCallbackSource(String signature){
		if(callbackSourceSubSummary.containsKey(signature)){
			return true;
		}
		return false;
	}
	
	public static boolean isNonCallbackSource(String signature){
		if(sourceSummary.containsKey(signature)){
			return true;
		}
		return false;
	}
	
	public static void buildSourceSinkList(){
		SOURCES.addAll(sourceSummary.keySet());
		SOURCES.addAll(callbackSourceSubSummary.keySet());
		SINKS.addAll(sinkSummary.keySet());
	}
	
	public static void buildSourceSummary(){		
		List<Integer> sourceIndexes = null;
		
		//android.permission.READ_PHONE_STATE
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.telephony.TelephonyManager: java.lang.String getSubscriberId()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.telephony.TelephonyManager: java.lang.String getDeviceSoftwareVersion()>", sourceIndexes);

		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.telephony.TelephonyManager: java.lang.String getLine1Number()>", sourceIndexes);

		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.telephony.TelephonyManager: java.lang.String getSimSerialNumber()>", sourceIndexes);

		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.telephony.TelephonyManager: java.lang.String getVoiceMailAlphaTag()>", sourceIndexes);	
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.telephony.TelephonyManager: java.lang.String getVoiceMailNumber()>", sourceIndexes);	
				
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.telephony.TelephonyManager: java.lang.String getDeviceId()>", sourceIndexes);
		
		//android.permission.GET_TASKS
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.app.ActivityManager: java.util.List getRecentTasks(int,int)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.app.ActivityManager: java.util.List getRunningTasks(int)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.app.ActivityManager: java.util.List getRunningTasks(int,int,android.app.IThumbnailReceiver)>", sourceIndexes);
		
		//android.permission.ACCESS_WIFI_STATE
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.wifi.WifiManager: java.util.List getScanResults()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.wifi.WifiManager: android.net.DhcpInfo getDhcpInfo()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.wifi.WifiManager: boolean pingSupplicant()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.wifi.WifiManager: boolean isWifiEnabled()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.wifi.WifiManager: android.net.wifi.WifiInfo getConnectionInfo()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.wifi.WifiManager: int getWifiState()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.wifi.WifiManager: java.util.List getConfiguredNetworks()>", sourceIndexes);
		
		//com.android.voicemail.permission.ADD_VOICEMAIL, android.permission.READ_CALL_LOG
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.provider.CallLog$Calls: java.lang.String getLastOutgoingCall(android.content.Context)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.provider.CallLog$Calls: java.lang.String getLastOutgoingCall(android.content.Context)>", sourceIndexes);
		
		//android.permission.ACCESS_COARSE_LOCATION, android.permission.ACCESS_FINE_LOCATION
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.location.LocationManager: java.util.List getProviders(android.location.Criteria,boolean)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.location.LocationManager: android.location.LocationProvider getProvider(java.lang.String)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.location.LocationManager: java.lang.String getBestProvider(android.location.Criteria,boolean)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.location.LocationManager: android.location.Location getLastKnownLocation(java.lang.String)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.telephony.TelephonyManager: java.util.List getNeighboringCellInfo()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.telephony.TelephonyManager: android.telephony.CellLocation getCellLocation()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.location.LocationManager: java.util.List getProviders(boolean)>", sourceIndexes);
		
		//com.android.browser.permission.READ_HISTORY_BOOKMARKS, com.android.browser.permission.WRITE_HISTORY_BOOKMARKS
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.provider.Browser: android.database.Cursor getAllVisitedUrls(android.content.ContentResolver)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.provider.Browser: java.lang.String[] getVisitedHistory(android.content.ContentResolver)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.provider.Browser: android.database.Cursor getAllBookmarks(android.content.ContentResolver)>", sourceIndexes);
		
		//android.permission.READ_CALENDAR
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.provider.CalendarContract$Instances: android.database.Cursor query(android.content.ContentResolver,java.lang.String[],long,long)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.provider.CalendarContract$Instances: android.database.Cursor query(android.content.ContentResolver,java.lang.String[],long,long)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.provider.CalendarContract$EventDays: android.database.Cursor query(android.content.ContentResolver,int,int,java.lang.String[])>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.provider.CalendarContract$Instances: android.database.Cursor query(android.content.ContentResolver,java.lang.String[],long,long,java.lang.String)>", sourceIndexes);
	
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.provider.CalendarContract$Attendees: android.database.Cursor query(android.content.ContentResolver,long,java.lang.String[])>", sourceIndexes);
	
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.provider.CalendarContract$Reminders: android.database.Cursor query(android.content.ContentResolver,long,java.lang.String[])>", sourceIndexes);
		
		//android.permission.AUTHENTICATE_ACCOUNTS
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.accounts.AccountManager: java.lang.String getPassword(android.accounts.Account)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.accounts.AccountManager: java.lang.String peekAuthToken(android.accounts.Account,java.lang.String)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.accounts.AccountManager: java.lang.String getUserData(android.accounts.Account,java.lang.String)>", sourceIndexes);
		
		//android.permission.INTERNET
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<java.net.URL: java.lang.Object getContent()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<java.net.URLConnection: java.io.InputStream getInputStream()>", sourceIndexes);
		
		//android.permission.ACCESS_NETWORK_STATE
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.ConnectivityManager: android.net.NetworkInfo getNetworkInfo(int)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.ConnectivityManager: boolean isActiveNetworkMetered()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.ConnectivityManager: android.net.NetworkInfo getActiveNetworkInfo()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.ConnectivityManager: android.net.NetworkInfo[] getAllNetworkInfo()>", sourceIndexes);
		
		//android.permission.GET_ACCOUNTS
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,android.os.Bundle,boolean,android.accounts.AccountManagerCallback,android.os.Handler)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,boolean,android.accounts.AccountManagerCallback,android.os.Handler)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthTokenByFeatures(java.lang.String,java.lang.String,java.lang.String[],android.app.Activity,android.os.Bundle,android.os.Bundle,android.accounts.AccountManagerCallback,android.os.Handler)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAccountsByTypeAndFeatures(java.lang.String,java.lang.String[],android.accounts.AccountManagerCallback,android.os.Handler)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.accounts.AccountManager: android.accounts.Account[] getAccountsByType(java.lang.String)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthTokenLabel(java.lang.String,java.lang.String,android.accounts.AccountManagerCallback,android.os.Handler)>", sourceIndexes);
	
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.accounts.AccountManager: android.accounts.Account[] getAccounts()>", sourceIndexes);
	
		//android.permission.RECORD_AUDIO
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(param0);
		sourceSummary.put("<android.media.AudioRecord: int read(byte[],int,int)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(param0);
		sourceSummary.put("<android.media.AudioRecord: int read(short[],int,int)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(param0);
		sourceSummary.put("<android.media.AudioRecord: int read(java.nio.ByteBuffer,int)>", sourceIndexes);
		
		//android.permission.RECEIVE_SMS
		//onReceive() -> intent.getExtras() -> bundle.get("pdus")
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.telephony.SmsMessage: android.telephony.SmsMessage createFromPdu(byte[])>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.provider.Telephony.Sms$Intents: android.telephony.SmsMessage[] getMessagesFromIntent(android.content.Intent)>", sourceIndexes);
		
		//query
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>", sourceIndexes);
	
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>", sourceIndexes);
	
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(boolean,java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>", sourceIndexes);
	
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.database.sqlite.SQLiteQueryBuilder: android.database.Cursor query(android.database.sqlite.SQLiteDatabase,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>", sourceIndexes);
	
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor rawQuery(java.lang.String,java.lang.String[])>", sourceIndexes);
		
		//UI
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.widget.TextView: java.lang.CharSequence getText()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.widget.EditText: android.text.Editable getText()>", sourceIndexes);
		
		//DroidAPIMiner
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.content.Context: java.io.File getFilesDir()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.content.pm.PackageManager: android.content.pm.ApplicationInfo getApplicationInfo(java.lang.String,int)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		//List<ActivityManager.RunningServiceInfo>
		sourceSummary.put("<android.app.ActivityManager: java.util.List getRunningServices(int)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.app.ActivityManager: void getMemoryInfo(android.app.ActivityManager$MemoryInfo)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.content.pm.PackageManager: java.util.List getInstalledPackages(int)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.telephony.TelephonyManager: java.lang.String getNetworkOperator()>", sourceIndexes);

		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.NetworkInfo: java.lang.String getExtraInfo()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.NetworkInfo: java.lang.String getTypeName()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.NetworkInfo: boolean isConnected()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.net.NetworkInfo: android.net.NetworkInfo$State getState()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<java.net.Socket: java.io.InputStream getInputStream()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.os.Process: int myPid()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<java.io.File: java.io.File[] listFiles()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<org.w3c.dom.Document: org.w3c.dom.Element getDocumentElement()>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<org.w3c.dom.Element: org.w3c.dom.NodeList getElementsByTagName(java.lang.String)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>", sourceIndexes);
		
		//DREBIN
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<javax.crypto.Cipher: javax.crypto.Cipher getInstance(java.lang.String)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<javax.crypto.Cipher: javax.crypto.Cipher getInstance(java.lang.String,java.lang.String)>", sourceIndexes);
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<javax.crypto.Cipher: javax.crypto.Cipher getInstance(java.lang.String,java.security.Provider)>", sourceIndexes);
		
		//reflection
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>", sourceIndexes);
	}
	
	public static void buildTestCallbackSourceSummary(){	
		/*
		List<Integer> sourceIndexes = null;
		//android.permission.CAMERA
		//<android.hardware.Camera: android.hardware.Camera open()>
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(param0);
		callbackSourceSummary.put("<android.hardware.Camera$PictureCallback: void onPictureTaken(byte[],android.hardware.Camera)>", sourceIndexes);
		callbackSourceSubSummary.put("void onPictureTaken(byte[],android.hardware.Camera)", sourceIndexes);
		callbackSourceSubSignatureMap.put("void onPictureTaken(byte[],android.hardware.Camera)", 
				"android.hardware.Camera$PictureCallback");
				*/
	}
	
	public static void buildTestSourceSummary(){
		/*
		List<Integer> sourceIndexes = null;
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(ret);
		sourceSummary.put("<android.telephony.TelephonyManager: java.lang.String getDeviceId()>", sourceIndexes);
		*/
	}	
	
	public static void buildCallbackSourceSummary(){		
		List<Integer> sourceIndexes = null;
		
		//android.permission.ACCESS_COARSE_LOCATION, android.permission.ACCESS_FINE_LOCATION
		/*
		<android.location.LocationManager: void requestLocationUpdates(long,float,android.location.Criteria,android.location.LocationListener,android.os.Looper)>
		<android.location.LocationManager: void requestSingleUpdate(android.location.Criteria,android.app.PendingIntent)>
		<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.location.LocationListener)>
		<android.location.LocationManager: void requestLocationUpdates(long,float,android.location.Criteria,android.app.PendingIntent)>
		<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.app.PendingIntent)>
		<android.location.LocationManager: void requestSingleUpdate(java.lang.String,android.location.LocationListener,android.os.Looper)>
		<android.location.LocationManager: void requestSingleUpdate(android.location.Criteria,android.location.LocationListener,android.os.Looper)>
		<android.location.LocationManager: void requestSingleUpdate(java.lang.String,android.app.PendingIntent)>
		<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.location.LocationListener,android.os.Looper)>
		 */
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(param0);
		callbackSourceSummary.put("<android.location.LocationListener: void onLocationChanged(android.location.Location)>", sourceIndexes);
		callbackSourceSubSummary.put("void onLocationChanged(android.location.Location)", sourceIndexes);
		callbackSourceSubSignatureMap.put("void onLocationChanged(android.location.Location)", 
				"android.location.LocationListener");
		
		//android.permission.CAMERA
		//<android.hardware.Camera: android.hardware.Camera open()>
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(param0);
		callbackSourceSummary.put("<android.hardware.Camera$PictureCallback: void onPictureTaken(byte[],android.hardware.Camera)>", sourceIndexes);
		callbackSourceSubSummary.put("void onPictureTaken(byte[],android.hardware.Camera)", sourceIndexes);
		callbackSourceSubSignatureMap.put("void onPictureTaken(byte[],android.hardware.Camera)", 
				"android.hardware.Camera$PictureCallback");
				//"<android.hardware.Camera.PictureCallback: void onPictureTaken(byte[],android.hardware.Camera)>");
		
		//android.permission.READ_PHONE_STATE
		//<android.telephony.TelephonyManager: void listen(android.telephony.PhoneStateListener,int)>
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(param0);
		sourceIndexes.add(param1);
		callbackSourceSummary.put("<android.telephony.PhoneStateListener: void onCallStateChanged(int,java.lang.String)>", sourceIndexes);
		callbackSourceSubSummary.put("void onCallStateChanged(int,java.lang.String)", sourceIndexes);
		callbackSourceSubSignatureMap.put("void onCallStateChanged(int,java.lang.String)", 
				"android.telephony.PhoneStateListener");
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(param0);
		callbackSourceSummary.put("<android.telephony.PhoneStateListener: void onCellInfoChanged(java.util.List)>", sourceIndexes);
		callbackSourceSubSummary.put("void onCellInfoChanged(java.util.List)", sourceIndexes);
		callbackSourceSubSignatureMap.put("void onCellInfoChanged(java.util.List)", 
				"android.telephony.PhoneStateListener");
		
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(param0);
		callbackSourceSummary.put("<android.telephony.PhoneStateListener: void onCellLocationChanged(android.telephony.CellLocation)>", sourceIndexes);
		callbackSourceSubSummary.put("void onCellLocationChanged(android.telephony.CellLocation)", sourceIndexes);
		callbackSourceSubSignatureMap.put("void onCellLocationChanged(android.telephony.CellLocation)", 
				"android.telephony.PhoneStateListener");
		
		//android.permission.GET_ACCOUNTS
		//<android.accounts.AccountManager: void addOnAccountsUpdatedListener(android.accounts.OnAccountsUpdateListener,android.os.Handler,boolean)>
		sourceIndexes = new ArrayList<Integer>();
		sourceIndexes.add(param0);
		callbackSourceSummary.put("<android.accounts.OnAccountsUpdateListener: void onAccountsUpdated(android.accounts.Account[])>", sourceIndexes);
		callbackSourceSubSummary.put("void onAccountsUpdated(android.accounts.Account[])", sourceIndexes);
		callbackSourceSubSignatureMap.put("void onAccountsUpdated(android.accounts.Account[])", 
				"android.accounts.OnAccountsUpdateListener");
	}
	
	public static void buildTestSinkSummary(){
		List<Integer> sinkIndexes = null;
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.telephony.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>", sinkIndexes);
	
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<java.lang.Runtime: java.lang.Process exec(java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<java.lang.Runtime: java.lang.Process exec(java.lang.String)>", sinkIndexes);
		
		//Network
		//android.permission.INTERNET
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.net.ServerSocket: void bind(java.net.SocketAddress)>", sinkIndexes);

		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkSummary.put("<java.net.URL: java.io.InputStream openStream()>", sinkIndexes);

		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkSummary.put("<java.net.URL: java.net.URLConnection openConnection()>", sinkIndexes);

		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.net.Socket: void <init>(int)>", sinkIndexes);

		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.net.MulticastSocket: void <init>(int)>", sinkIndexes);

		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.net.HttpURLConnection: void <init>(int)>", sinkIndexes);

		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.net.ServerSocket: void <init>(int)>", sinkIndexes);

		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<org.apache.http.impl.client.DefaultHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>", sinkIndexes);

		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<org.apache.http.impl.client.AbstractHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>", sinkIndexes);

		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<org.apache.http.client.HttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>", sinkIndexes);		

		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<org.apache.http.client.HttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest,org.apache.http.protocol.HttpContext)>", sinkIndexes);

		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<org.apache.http.impl.client.DefaultHttpClient: void <init>(int)>", sinkIndexes);

		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.net.DatagramSocket: void <init>(int)>", sinkIndexes);

		//<android.webkit.WebView: void <init>(android.content.Context)>
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<android.webkit.WebView: void loadUrl(java.lang.String)>", sinkIndexes);
		
		//I/O		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.OutputStream: void write(byte[],int,int)>", sinkIndexes);
				
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.OutputStream: void write(byte[])>", sinkIndexes);
				
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.FileOutputStream: void write(byte[],int,int)>", sinkIndexes);
				
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.FileOutputStream: void <init>(java.lang.String)>", sinkIndexes);
				
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.FileOutputStream: void write(byte[])>", sinkIndexes);
				
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.DataOutputStream: void write(byte[],int,int)>", sinkIndexes);
				
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.FilterOutputStream: void write(byte[])>", sinkIndexes);
	}
	
	public static void buildSinkSummary(){
		List<Integer> sinkIndexes = null;
		
		//android.permission.CHANGE_WIFI_STATE, android.permission.ACCESS_WIFI_STATE, android.permission.CHANGE_NETWORK_STATE, android.permission.ACCESS_NETWORK_STATE
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param1);
		sinkSummary.put("<android.net.ConnectivityManager: int startUsingNetworkFeature(int,java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param1);
		sinkSummary.put("<android.net.ConnectivityManager: int stopUsingNetworkFeature(int,java.lang.String)>", sinkIndexes);
		
		//android.permission.READ_CONTACTS, android.permission.WRITE_CONTACTS
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param1);
		sinkSummary.put("<android.provider.Contacts$People: void markAsContacted(android.content.ContentResolver,long)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkIndexes.add(param3);
		sinkSummary.put("<android.provider.Contacts$ContactMethods: void addPostalLocation(android.content.Context,long,double,double)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<android.widget.QuickContactBadge: void assignContactFromPhone(java.lang.String,boolean)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param1);
		sinkSummary.put("<android.provider.Contacts$People: android.database.Cursor queryGroups(android.content.ContentResolver,long)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param1);
		sinkSummary.put("<android.provider.Contacts$People: android.net.Uri createPersonInMyContactsGroup(android.content.ContentResolver,android.content.ContentValues)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.provider.Contacts$People: android.net.Uri addToGroup(android.content.ContentResolver,long,java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param1);
		sinkSummary.put("<android.provider.Contacts$People: android.net.Uri addToMyContactsGroup(android.content.ContentResolver,long)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkIndexes.add(param3);
		sinkSummary.put("<android.provider.Contacts$Settings: void setSetting(android.content.ContentResolver,java.lang.String,java.lang.String,java.lang.String)>", sinkIndexes);
				
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param1);
		sinkSummary.put("<android.provider.ContactsContract$Contacts: void markAsContacted(android.content.ContentResolver,long)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<android.widget.QuickContactBadge: void assignContactFromEmail(java.lang.String,boolean)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.provider.Contacts$People: android.net.Uri addToGroup(android.content.ContentResolver,long,long)>", sinkIndexes);
		
		//android.permission.SEND_SMS
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.telephony.gsm.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.telephony.SmsManager: void sendMultipartTextMessage(java.lang.String,java.lang.String,java.util.ArrayList,java.util.ArrayList,java.util.ArrayList)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkIndexes.add(param3);
		sinkSummary.put("<android.telephony.gsm.SmsManager: void sendDataMessage(java.lang.String,java.lang.String,short,byte[],android.app.PendingIntent,android.app.PendingIntent)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.telephony.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.telephony.gsm.SmsManager: void sendMultipartTextMessage(java.lang.String,java.lang.String,java.util.ArrayList,java.util.ArrayList,java.util.ArrayList)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkIndexes.add(param3);
		sinkSummary.put("<android.telephony.SmsManager: void sendDataMessage(java.lang.String,java.lang.String,short,byte[],android.app.PendingIntent,android.app.PendingIntent)>", sinkIndexes);
		
		//android.permission.VIBRATE
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.app.NotificationManager: void notify(java.lang.String,int,android.app.Notification)>", sinkIndexes);
		
		//android.permission.RESTART_PACKAGES, android.permission.KILL_BACKGROUND_PROCESSES
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.app.ActivityManager: void restartPackage(java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.app.ActivityManager: void killBackgroundProcesses(java.lang.String)>", sinkIndexes);
		
		//android.permission.ACCESS_COARSE_LOCATION, android.permission.ACCESS_FINE_LOCATION
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.location.LocationManager: boolean isProviderEnabled(java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.location.LocationManager: boolean sendExtraCommand(java.lang.String,java.lang.String,android.os.Bundle)>", sinkIndexes);
		
		//com.android.browser.permission.READ_HISTORY_BOOKMARKS, com.android.browser.permission.WRITE_HISTORY_BOOKMARKS
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param1);
		sinkSummary.put("<android.provider.Browser: void deleteFromHistory(android.content.ContentResolver,java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkSummary.put("<android.provider.Browser: void addSearchUrl(android.content.ContentResolver,java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkSummary.put("<android.provider.Browser: void updateVisitedHistory(android.content.ContentResolver,java.lang.String,boolean)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.provider.Browser: void clearSearches(android.content.ContentResolver)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.provider.Browser: void clearHistory(android.content.ContentResolver)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.provider.Browser: void deleteHistoryTimeFrame(android.content.ContentResolver,long,long)>", sinkIndexes);
		
		//android.permission.WRITE_SETTINGS
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.media.RingtoneManager: void setActualDefaultRingtoneUri(android.content.Context,int,android.net.Uri)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.provider.Settings$System: android.net.Uri getUriFor(java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.net.wifi.WifiManager: void setCountryCode(java.lang.String,boolean)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.provider.Settings$Secure: boolean putString(android.content.ContentResolver,java.lang.String,java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.provider.Settings$Secure: boolean putLong(android.content.ContentResolver,java.lang.String,long)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.provider.Settings$System: boolean putLong(android.content.ContentResolver,java.lang.String,long)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.provider.Settings$Secure: boolean putInt(android.content.ContentResolver,java.lang.String,int)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.provider.Settings$Secure: boolean putFloat(android.content.ContentResolver,java.lang.String,float)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.provider.Settings$System: boolean putInt(android.content.ContentResolver,java.lang.String,int)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.provider.Settings$Secure: android.net.Uri getUriFor(java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.provider.Settings$System: boolean putFloat(android.content.ContentResolver,java.lang.String,float)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.provider.Settings$System: boolean putString(android.content.ContentResolver,java.lang.String,java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkSummary.put("<android.provider.Settings$System: boolean putConfiguration(android.content.ContentResolver,android.content.res.Configuration)>", sinkIndexes);
		
		//android.permission.READ_CALENDAR
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkIndexes.add(param3);
		sinkIndexes.add(param4);
		sinkIndexes.add(param5);
		sinkSummary.put("<android.provider.CalendarContract$CalendarAlerts: android.net.Uri insert(android.content.ContentResolver,long,long,long,long,int)>", sinkIndexes);
		
		//android.permission.AUTHENTICATE_ACCOUNTS
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.accounts.AccountManager: void setUserData(android.accounts.Account,java.lang.String,java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkSummary.put("<android.accounts.AccountManager: void setPassword(android.accounts.Account,java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.accounts.AccountManager: boolean addAccountExplicitly(android.accounts.Account,java.lang.String,android.os.Bundle)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.accounts.AccountManager: void setAuthToken(android.accounts.Account,java.lang.String,java.lang.String)>", sinkIndexes);
		
		//android.permission.INTERNET
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.net.ServerSocket: void bind(java.net.SocketAddress)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkSummary.put("<java.net.URL: java.io.InputStream openStream()>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkSummary.put("<java.net.URL: java.net.URLConnection openConnection()>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.net.Socket: void <init>(int)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.net.MulticastSocket: void <init>(int)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.net.HttpURLConnection: void <init>(int)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.net.ServerSocket: void <init>(int)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<org.apache.http.impl.client.DefaultHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<org.apache.http.impl.client.AbstractHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>", sinkIndexes);
			
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<org.apache.http.client.HttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>", sinkIndexes);		
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<org.apache.http.client.HttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest,org.apache.http.protocol.HttpContext)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<org.apache.http.impl.client.DefaultHttpClient: void <init>(int)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.net.DatagramSocket: void <init>(int)>", sinkIndexes);
		
		//<android.webkit.WebView: void <init>(android.content.Context)>
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<android.webkit.WebView: void loadUrl(java.lang.String)>", sinkIndexes);
		
		//android.permission.GET_ACCOUNTS
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture confirmCredentials(android.accounts.Account,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkSummary.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture editProperties(java.lang.String,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>", sinkIndexes);
				
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkIndexes.add(param3);
		sinkIndexes.add(param4);
		sinkSummary.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture addAccount(java.lang.String,java.lang.String,java.lang.String[],android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture removeAccount(android.accounts.Account,android.accounts.AccountManagerCallback,android.os.Handler)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkIndexes.add(param3);
		sinkSummary.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture updateCredentials(android.accounts.Account,java.lang.String,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkSummary.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture hasFeatures(android.accounts.Account,java.lang.String[],android.accounts.AccountManagerCallback,android.os.Handler)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<android.accounts.AccountManager: java.lang.String blockingGetAuthToken(android.accounts.Account,java.lang.String,boolean)>", sinkIndexes);
		
		//android.permission.WAKE_LOCK
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkSummary.put("<android.widget.VideoView: void setVideoURI(android.net.Uri,java.util.Map)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.media.Ringtone: void setUri(android.net.Uri)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkIndexes.add(param3);
		sinkSummary.put("<android.media.AsyncPlayer: void play(android.content.Context,android.net.Uri,boolean,int)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.widget.VideoView: void setVideoPath(java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.widget.VideoView: void setVideoURI(android.net.Uri)>", sinkIndexes);
		
		//android.permission.RECORD_AUDIO
		//<android.media.AudioRecord: void <init>(int,int,int,int,int)>
		//<android.media.MediaRecorder: void setAudioSource(int)>
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.media.MediaRecorder: void setOutputFile(java.lang.String)>", sinkIndexes);
		
		//I/O		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.OutputStream: void write(byte[],int,int)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.OutputStream: void write(byte[])>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.FileOutputStream: void write(byte[],int,int)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.FileOutputStream: void <init>(java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.FileOutputStream: void write(byte[])>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.DataOutputStream: void write(byte[],int,int)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.FilterOutputStream: void write(byte[])>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.io.DataOutputStream: void writeBytes(java.lang.String)>", sinkIndexes);
		
		//query
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(all);
		sinkSummary.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>", sinkIndexes);
	
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(all);
		sinkSummary.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>", sinkIndexes);
	
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(all);
		sinkSummary.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(boolean,java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>", sinkIndexes);
	
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(all);
		sinkSummary.put("<android.database.sqlite.SQLiteQueryBuilder: android.database.Cursor query(android.database.sqlite.SQLiteDatabase,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>", sinkIndexes);
	
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(all);
		sinkSummary.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor rawQuery(java.lang.String,java.lang.String[])>", sinkIndexes);
	
		//DroidAPIMiner
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.content.Context: java.io.FileOutputStream openFileOutput(java.lang.String,int)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<java.lang.ClassLoader: java.lang.Class loadClass(java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<dalvik.system.DexClassLoader: java.lang.Class loadClass(java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<dalvik.system.DexClassLoader: java.lang.Class loadClass(java.lang.String,boolean)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkIndexes.add(param3);
		sinkSummary.put("<dalvik.system.DexClassLoader: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.ClassLoader)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.content.Context: android.content.Context createPackageContext(java.lang.String,int)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<java.lang.Runtime: java.lang.Process exec(java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkSummary.put("<java.lang.Runtime: java.lang.Process exec(java.lang.String[],java.lang.String[])>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<java.lang.Runtime: java.lang.Process exec(java.lang.String,java.lang.String[],java.io.File)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkIndexes.add(param2);
		sinkSummary.put("<java.lang.Runtime: java.lang.Process exec(java.lang.String[],java.lang.String[],java.io.File)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkSummary.put("<java.lang.Runtime: java.lang.Process exec(java.lang.String,java.lang.String[])>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<java.lang.Runtime: java.lang.Process exec(java.lang.String[])>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkIndexes.add(param0);
		sinkSummary.put("<java.net.HttpURLConnection: void setRequestMethod(java.lang.String)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkSummary.put("<java.net.HttpURLConnection: java.io.OutputStream getOutputStream()>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkSummary.put("<java.net.Socket: java.io.OutputStream getOutputStream()>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkSummary.put("<android.os.Process: void killProcess(int)>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkSummary.put("<java.io.File: boolean mkdir()>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkSummary.put("<java.io.File: boolean delete()>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(thiz);
		sinkSummary.put("<java.io.File: boolean exists()>", sinkIndexes);
		
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkSummary.put("<java.io.File: void <init>(java.lang.String,java.lang.String)>", sinkIndexes);
		
		//reflection
		sinkIndexes = new ArrayList<Integer>();
		sinkIndexes.add(param0);
		sinkIndexes.add(param1);
		sinkSummary.put("<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>", sinkIndexes);
	
	}
}

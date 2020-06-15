package mySoot;

import java.util.LinkedHashMap;

public class SensitiveAPICategory {
	public static LinkedHashMap<String, String> sensitiveAPICategories = new LinkedHashMap<String, String>();
	
	public static void init()
	{
		//cell phone info query
		sensitiveAPICategories.put("<android.telephony.TelephonyManager: java.lang.String getSubscriberId()>", "cell phone info query");
		sensitiveAPICategories.put("<android.telephony.TelephonyManager: java.lang.String getDeviceSoftwareVersion()>", "cell phone info query");
		sensitiveAPICategories.put("<android.telephony.TelephonyManager: java.lang.String getLine1Number()>", "cell phone info query");
		sensitiveAPICategories.put("<android.telephony.TelephonyManager: java.lang.String getSimSerialNumber()>", "cell phone info query");
		sensitiveAPICategories.put("<android.telephony.TelephonyManager: java.lang.String getVoiceMailAlphaTag()>", "cell phone info query");
		sensitiveAPICategories.put("<android.telephony.TelephonyManager: java.lang.String getVoiceMailNumber()>", "cell phone info query");
		sensitiveAPICategories.put("<android.telephony.TelephonyManager: java.lang.String getDeviceId()>", "cell phone info query");
		sensitiveAPICategories.put("<android.telephony.TelephonyManager: java.util.List getNeighboringCellInfo()>", "cell phone info query");
		sensitiveAPICategories.put("<android.telephony.TelephonyManager: java.lang.String getNetworkOperator()>", "cell phone info query");


		//cell phone tasks query and manipulation
		sensitiveAPICategories.put("<android.app.ActivityManager: java.util.List getRecentTasks(int,int)>", "cell phone tasks query and manipulation");
		sensitiveAPICategories.put("<android.app.ActivityManager: java.util.List getRunningTasks(int)>", "cell phone tasks query and manipulation");
		sensitiveAPICategories.put("<android.app.ActivityManager: java.util.List getRunningTasks(int,int,android.app.IThumbnailReceiver)>", "cell phone tasks query and manipulation");
		sensitiveAPICategories.put("<android.app.ActivityManager: java.util.List getRunningServices(int)>", "cell phone tasks query and manipulation");
		sensitiveAPICategories.put("<android.app.ActivityManager: void restartPackage(java.lang.String)>", "cell phone tasks query and manipulation");
		sensitiveAPICategories.put("<android.app.ActivityManager: void killBackgroundProcesses(java.lang.String)>", "cell phone tasks query and manipulation");
		sensitiveAPICategories.put("<android.os.Process: int myPid()>", "cell phone tasks query and manipulation");
		sensitiveAPICategories.put("<android.os.Process: void killProcess(int)>", "cell phone tasks query and manipulation");
		sensitiveAPICategories.put("<android.app.ActivityManager: void getMemoryInfo(android.app.ActivityManager$MemoryInfo)>", "cell phone tasks query and manipulation");


		//application 
		sensitiveAPICategories.put("<android.content.pm.PackageManager: android.content.pm.ApplicationInfo getApplicationInfo(java.lang.String,int)>", "application ");
		sensitiveAPICategories.put("<android.content.pm.PackageManager: java.util.List getInstalledPackages(int)>", "application ");


		//wifi info query and manipulation
		sensitiveAPICategories.put("<android.net.wifi.WifiManager: java.util.List getScanResults()>", "wifi info query and manipulation");
		sensitiveAPICategories.put("<android.net.wifi.WifiManager: android.net.DhcpInfo getDhcpInfo()>", "wifi info query and manipulation");
		sensitiveAPICategories.put("<android.net.wifi.WifiManager: boolean pingSupplicant()>", "wifi info query and manipulation");
		sensitiveAPICategories.put("<android.net.wifi.WifiManager: boolean isWifiEnabled()>", "wifi info query and manipulation");
		sensitiveAPICategories.put("<android.net.wifi.WifiManager: android.net.wifi.WifiInfo getConnectionInfo()>", "wifi info query and manipulation");
		sensitiveAPICategories.put("<android.net.wifi.WifiManager: int getWifiState()>", "wifi info query and manipulation");
		sensitiveAPICategories.put("<android.net.wifi.WifiManager: java.util.List getConfiguredNetworks()>", "wifi info query and manipulation");
		sensitiveAPICategories.put("<android.net.wifi.WifiManager: void setCountryCode(java.lang.String,boolean)>", "wifi info query and manipulation");


		//network info query and manipulation
		sensitiveAPICategories.put("<android.net.ConnectivityManager: android.net.NetworkInfo getNetworkInfo(int)>", "network info query and manipulation");
		sensitiveAPICategories.put("<android.net.ConnectivityManager: boolean isActiveNetworkMetered()>", "network info query and manipulation");
		sensitiveAPICategories.put("<android.net.ConnectivityManager: android.net.NetworkInfo getActiveNetworkInfo()>", "network info query and manipulation");
		sensitiveAPICategories.put("<android.net.ConnectivityManager: android.net.NetworkInfo[] getAllNetworkInfo()>", "network info query and manipulation");
		sensitiveAPICategories.put("<android.net.NetworkInfo: java.lang.String getExtraInfo()>", "network info query and manipulation");
		sensitiveAPICategories.put("<android.net.NetworkInfo: java.lang.String getTypeName()>", "network info query and manipulation");
		sensitiveAPICategories.put("<android.net.NetworkInfo: boolean isConnected()>", "network info query and manipulation");
		sensitiveAPICategories.put("<android.net.NetworkInfo: android.net.NetworkInfo$State getState()>", "network info query and manipulation");
		sensitiveAPICategories.put("<android.net.ConnectivityManager: int startUsingNetworkFeature(int,java.lang.String)>", "network info query and manipulation");
		sensitiveAPICategories.put("<android.net.ConnectivityManager: int stopUsingNetworkFeature(int,java.lang.String)>", "network info query and manipulation");


		//calls info query
		sensitiveAPICategories.put("<android.provider.CallLog$Calls: java.lang.String getLastOutgoingCall(android.content.Context)>", "calls info query");


		//location info query
		sensitiveAPICategories.put("<android.location.LocationManager: boolean isProviderEnabled(java.lang.String)>", "location info query");
		sensitiveAPICategories.put("<android.location.LocationManager: boolean sendExtraCommand(java.lang.String,java.lang.String,android.os.Bundle)>", "location info query");
		sensitiveAPICategories.put("<android.location.Location: double getLatitude()>", "location info query");
		sensitiveAPICategories.put("<android.location.Location: double getLongitude()>", "location info query");
		sensitiveAPICategories.put("<android.location.Location: double getAltitude()>", "location info query");
		sensitiveAPICategories.put("<android.telephony.TelephonyManager: android.telephony.CellLocation getCellLocation()>", "location info query");
		sensitiveAPICategories.put("<android.location.LocationManager: java.util.List getProviders(boolean)>", "location info query");
		sensitiveAPICategories.put("<android.location.LocationManager: java.util.List getProviders(android.location.Criteria,boolean)>", "location info query");
		sensitiveAPICategories.put("<android.location.LocationManager: android.location.LocationProvider getProvider(java.lang.String)>", "location info query");
		sensitiveAPICategories.put("<android.location.LocationManager: java.lang.String getBestProvider(android.location.Criteria,boolean)>", "location info query");
		sensitiveAPICategories.put("<android.location.LocationManager: android.location.Location getLastKnownLocation(java.lang.String)>", "location info query");
		sensitiveAPICategories.put("<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.location.LocationListener)>", "location info query");
		sensitiveAPICategories.put("<android.location.LocationManager: void requestLocationUpdates(java.lang.String,long,float,android.location.LocationListener,Looper looper)>", "location info query");


		//content provider query
		sensitiveAPICategories.put("<android.provider.Browser: android.database.Cursor getAllVisitedUrls(android.content.ContentResolver)>", "content provider query");
		sensitiveAPICategories.put("<android.provider.Browser: java.lang.String[] getVisitedHistory(android.content.ContentResolver)>", "content provider query");
		sensitiveAPICategories.put("<android.provider.Browser: android.database.Cursor getAllBookmarks(android.content.ContentResolver)>", "content provider query");
		sensitiveAPICategories.put("<android.provider.CalendarContract$Instances: android.database.Cursor query(android.content.ContentResolver,java.lang.String[],long,long)>", "content provider query");
		sensitiveAPICategories.put("<android.provider.CalendarContract$EventDays: android.database.Cursor query(android.content.ContentResolver,int,int,java.lang.String[])>", "content provider query");
		sensitiveAPICategories.put("<android.provider.CalendarContract$Instances: android.database.Cursor query(android.content.ContentResolver,java.lang.String[],long,long,java.lang.String)>", "content provider query");
		sensitiveAPICategories.put("<android.provider.CalendarContract$Attendees: android.database.Cursor query(android.content.ContentResolver,long,java.lang.String[])>", "content provider query");
		sensitiveAPICategories.put("<android.provider.CalendarContract$Reminders: android.database.Cursor query(android.content.ContentResolver,long,java.lang.String[])>", "content provider query");
		sensitiveAPICategories.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>", "content provider query");
		sensitiveAPICategories.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>", "content provider query");
		sensitiveAPICategories.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(boolean,java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>", "content provider query");
		sensitiveAPICategories.put("<android.database.sqlite.SQLiteQueryBuilder: android.database.Cursor query(android.database.sqlite.SQLiteDatabase,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>", "content provider query");
		sensitiveAPICategories.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor rawQuery(java.lang.String,java.lang.String[])>", "content provider query");
		sensitiveAPICategories.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>", "content provider query");
		sensitiveAPICategories.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>", "content provider query");
		sensitiveAPICategories.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor query(boolean,java.lang.String,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String,java.lang.String)>", "content provider query");
		sensitiveAPICategories.put("<android.database.sqlite.SQLiteQueryBuilder: android.database.Cursor query(android.database.sqlite.SQLiteDatabase,java.lang.String[],java.lang.String,java.lang.String[],java.lang.String,java.lang.String,java.lang.String)>", "content provider query");
		sensitiveAPICategories.put("<android.database.sqlite.SQLiteDatabase: android.database.Cursor rawQuery(java.lang.String,java.lang.String[])>", "content provider query");


		//android account manager query and manipulation
		sensitiveAPICategories.put("<android.accounts.AccountManager: java.lang.String getPassword(android.accounts.Account)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: java.lang.String peekAuthToken(android.accounts.Account,java.lang.String)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: java.lang.String getUserData(android.accounts.Account,java.lang.String)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,android.os.Bundle,boolean,android.accounts.AccountManagerCallback,android.os.Handler)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,boolean,android.accounts.AccountManagerCallback,android.os.Handler)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthTokenByFeatures(java.lang.String,java.lang.String,java.lang.String[],android.app.Activity,android.os.Bundle,android.os.Bundle,android.accounts.AccountManagerCallback,android.os.Handler)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAccountsByTypeAndFeatures(java.lang.String,java.lang.String[],android.accounts.AccountManagerCallback,android.os.Handler)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthToken(android.accounts.Account,java.lang.String,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: android.accounts.Account[] getAccountsByType(java.lang.String)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture getAuthTokenLabel(java.lang.String,java.lang.String,android.accounts.AccountManagerCallback,android.os.Handler)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: android.accounts.Account[] getAccounts()>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: void setUserData(android.accounts.Account,java.lang.String,java.lang.String)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: void setPassword(android.accounts.Account,java.lang.String)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: boolean addAccountExplicitly(android.accounts.Account,java.lang.String,android.os.Bundle)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: void setAuthToken(android.accounts.Account,java.lang.String,java.lang.String)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture confirmCredentials(android.accounts.Account,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture editProperties(java.lang.String,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture addAccount(java.lang.String,java.lang.String,java.lang.String[],android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture removeAccount(android.accounts.Account,android.accounts.AccountManagerCallback,android.os.Handler)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture updateCredentials(android.accounts.Account,java.lang.String,android.os.Bundle,android.app.Activity,android.accounts.AccountManagerCallback,android.os.Handler)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: android.accounts.AccountManagerFuture hasFeatures(android.accounts.Account,java.lang.String[],android.accounts.AccountManagerCallback,android.os.Handler)>", "android account manager query and manipulation");
		sensitiveAPICategories.put("<android.accounts.AccountManager: java.lang.String blockingGetAuthToken(android.accounts.Account,java.lang.String,boolean)>", "android account manager query and manipulation");


		//media manipulation
		sensitiveAPICategories.put("<android.media.AudioRecord: int read(byte[],int,int)>", "media manipulation");
		sensitiveAPICategories.put("<android.media.AudioRecord: int read(short[],int,int)>", "media manipulation");
		sensitiveAPICategories.put("<android.media.AudioRecord: int read(java.nio.ByteBuffer,int)>", "media manipulation");
		sensitiveAPICategories.put("<android.widget.VideoView: void setVideoURI(android.net.Uri,java.util.Map)>", "media manipulation");
		sensitiveAPICategories.put("<android.media.Ringtone: void setUri(android.net.Uri)>", "media manipulation");
		sensitiveAPICategories.put("<android.media.AsyncPlayer: void play(android.content.Context,android.net.Uri,boolean,int)>", "media manipulation");
		sensitiveAPICategories.put("<android.widget.VideoView: void setVideoPath(java.lang.String)>", "media manipulation");
		sensitiveAPICategories.put("<android.widget.VideoView: void setVideoURI(android.net.Uri)>", "media manipulation");
		sensitiveAPICategories.put("<android.media.MediaRecorder: void setOutputFile(java.lang.String)>", "media manipulation");


		//textview
		sensitiveAPICategories.put("<android.widget.TextView: java.lang.CharSequence getText()>", "textview");
		sensitiveAPICategories.put("<android.widget.EditText: android.text.Editable getText()>", "textview");


		//Cipher
		sensitiveAPICategories.put("<javax.crypto.Cipher: javax.crypto.Cipher getInstance(java.lang.String)>", "Cipher");
		sensitiveAPICategories.put("<javax.crypto.Cipher: javax.crypto.Cipher getInstance(java.lang.String,java.lang.String)>", "Cipher");
		sensitiveAPICategories.put("<javax.crypto.Cipher: javax.crypto.Cipher getInstance(java.lang.String,java.security.Provider)>", "Cipher");


		//Contacts query and manipulation
		sensitiveAPICategories.put("<android.provider.Contacts$People: void markAsContacted(android.content.ContentResolver,long)>", "Contacts query and manipulation");
		sensitiveAPICategories.put("<android.provider.Contacts$ContactMethods: void addPostalLocation(android.content.Context,long,double,double)>", "Contacts query and manipulation");
		sensitiveAPICategories.put("<android.widget.QuickContactBadge: void assignContactFromPhone(java.lang.String,boolean)>", "Contacts query and manipulation");
		sensitiveAPICategories.put("<android.provider.Contacts$People: android.database.Cursor queryGroups(android.content.ContentResolver,long)>", "Contacts query and manipulation");
		sensitiveAPICategories.put("<android.provider.Contacts$People: android.net.Uri createPersonInMyContactsGroup(android.content.ContentResolver,android.content.ContentValues)>", "Contacts query and manipulation");
		sensitiveAPICategories.put("<android.provider.Contacts$People: android.net.Uri addToGroup(android.content.ContentResolver,long,java.lang.String)>", "Contacts query and manipulation");
		sensitiveAPICategories.put("<android.provider.Contacts$People: android.net.Uri addToMyContactsGroup(android.content.ContentResolver,long)>", "Contacts query and manipulation");
		sensitiveAPICategories.put("<android.provider.Contacts$Settings: void setSetting(android.content.ContentResolver,java.lang.String,java.lang.String,java.lang.String)>", "Contacts query and manipulation");
		sensitiveAPICategories.put("<android.provider.ContactsContract$Contacts: void markAsContacted(android.content.ContentResolver,long)>", "Contacts query and manipulation");
		sensitiveAPICategories.put("<android.widget.QuickContactBadge: void assignContactFromEmail(java.lang.String,boolean)>", "Contacts query and manipulation");
		sensitiveAPICategories.put("<android.provider.Contacts$People: android.net.Uri addToGroup(android.content.ContentResolver,long,long)>", "Contacts query and manipulation");


		//Text Message manipulation
		sensitiveAPICategories.put("<android.telephony.gsm.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>", "Text Message manipulation");
		sensitiveAPICategories.put("<android.telephony.SmsManager: void sendMultipartTextMessage(java.lang.String,java.lang.String,java.util.ArrayList,java.util.ArrayList,java.util.ArrayList)>", "Text Message manipulation");
		sensitiveAPICategories.put("<android.telephony.gsm.SmsManager: void sendDataMessage(java.lang.String,java.lang.String,short,byte[],android.app.PendingIntent,android.app.PendingIntent)>", "Text Message manipulation");
		sensitiveAPICategories.put("<android.telephony.SmsManager: void sendTextMessage(java.lang.String,java.lang.String,java.lang.String,android.app.PendingIntent,android.app.PendingIntent)>", "Text Message manipulation");
		sensitiveAPICategories.put("<android.telephony.gsm.SmsManager: void sendMultipartTextMessage(java.lang.String,java.lang.String,java.util.ArrayList,java.util.ArrayList,java.util.ArrayList)>", "Text Message manipulation");
		sensitiveAPICategories.put("<android.telephony.SmsManager: void sendDataMessage(java.lang.String,java.lang.String,short,byte[],android.app.PendingIntent,android.app.PendingIntent)>", "Text Message manipulation");
		sensitiveAPICategories.put("<android.telephony.SmsMessage: android.telephony.SmsMessage createFromPdu(byte[])>", "Text Message manipulation");
		sensitiveAPICategories.put("<android.provider.Telephony.Sms$Intents: android.telephony.SmsMessage[] getMessagesFromIntent(android.content.Intent)>", "Text Message manipulation");
		sensitiveAPICategories.put("<android.telephony.SmsMessage: java.lang.String getMessageBody()>", "Text Message manipulation");


		//Browser records manipulation
		sensitiveAPICategories.put("<android.provider.Browser: void deleteFromHistory(android.content.ContentResolver,java.lang.String)>", "Browser records manipulation");
		sensitiveAPICategories.put("<android.provider.Browser: void addSearchUrl(android.content.ContentResolver,java.lang.String)>", "Browser records manipulation");
		sensitiveAPICategories.put("<android.provider.Browser: void updateVisitedHistory(android.content.ContentResolver,java.lang.String,boolean)>", "Browser records manipulation");
		sensitiveAPICategories.put("<android.provider.Browser: void clearSearches(android.content.ContentResolver)>", "Browser records manipulation");
		sensitiveAPICategories.put("<android.provider.Browser: void clearHistory(android.content.ContentResolver)>", "Browser records manipulation");
		sensitiveAPICategories.put("<android.provider.Browser: void deleteHistoryTimeFrame(android.content.ContentResolver,long,long)>", "Browser records manipulation");


		//Misc
		sensitiveAPICategories.put("<android.webkit.WebView: void loadUrl(java.lang.String)>", "Misc");
		sensitiveAPICategories.put("<android.media.RingtoneManager: void setActualDefaultRingtoneUri(android.content.Context,int,android.net.Uri)>", "Misc");
		sensitiveAPICategories.put("<android.app.NotificationManager: void notify(java.lang.String,int,android.app.Notification)>", "Misc");
		sensitiveAPICategories.put("<org.w3c.dom.Document: org.w3c.dom.Element getDocumentElement()>", "Misc");
		sensitiveAPICategories.put("<org.w3c.dom.Element: org.w3c.dom.NodeList getElementsByTagName(java.lang.String)>", "Misc");
		sensitiveAPICategories.put("<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>", "Misc");


		//System settings
		sensitiveAPICategories.put("<android.provider.Settings$System: android.net.Uri getUriFor(java.lang.String)>", "System settings");
		sensitiveAPICategories.put("<android.provider.Settings$Secure: boolean putString(android.content.ContentResolver,java.lang.String,java.lang.String)>", "System settings");
		sensitiveAPICategories.put("<android.provider.Settings$Secure: boolean putLong(android.content.ContentResolver,java.lang.String,long)>", "System settings");
		sensitiveAPICategories.put("<android.provider.Settings$System: boolean putLong(android.content.ContentResolver,java.lang.String,long)>", "System settings");
		sensitiveAPICategories.put("<android.provider.Settings$Secure: boolean putInt(android.content.ContentResolver,java.lang.String,int)>", "System settings");
		sensitiveAPICategories.put("<android.provider.Settings$Secure: boolean putFloat(android.content.ContentResolver,java.lang.String,float)>", "System settings");
		sensitiveAPICategories.put("<android.provider.Settings$System: boolean putInt(android.content.ContentResolver,java.lang.String,int)>", "System settings");
		sensitiveAPICategories.put("<android.provider.Settings$Secure: android.net.Uri getUriFor(java.lang.String)>", "System settings");
		sensitiveAPICategories.put("<android.provider.Settings$System: boolean putFloat(android.content.ContentResolver,java.lang.String,float)>", "System settings");
		sensitiveAPICategories.put("<android.provider.Settings$System: boolean putString(android.content.ContentResolver,java.lang.String,java.lang.String)>", "System settings");
		sensitiveAPICategories.put("<android.provider.Settings$System: boolean putConfiguration(android.content.ContentResolver,android.content.res.Configuration)>", "System settings");


		//Calendar
		sensitiveAPICategories.put("<android.provider.CalendarContract$CalendarAlerts: android.net.Uri insert(android.content.ContentResolver,long,long,long,long,int)>", "Calendar");


		//Dynamic loading
		sensitiveAPICategories.put("<java.lang.ClassLoader: java.lang.Class loadClass(java.lang.String)>", "Dynamic loading");
		sensitiveAPICategories.put("<dalvik.system.DexClassLoader: java.lang.Class loadClass(java.lang.String)>", "Dynamic loading");
		sensitiveAPICategories.put("<dalvik.system.DexClassLoader: java.lang.Class loadClass(java.lang.String,boolean)>", "Dynamic loading");
		sensitiveAPICategories.put("<dalvik.system.DexClassLoader: void <init>(java.lang.String,java.lang.String,java.lang.String,java.lang.ClassLoader)>", "Dynamic loading");
		sensitiveAPICategories.put("<android.content.Context: android.content.Context createPackageContext(java.lang.String,int)>", "Dynamic loading");
		sensitiveAPICategories.put("<java.lang.Runtime: java.lang.Process exec(java.lang.String)>", "Dynamic loading");
		sensitiveAPICategories.put("<java.lang.Runtime: java.lang.Process exec(java.lang.String[],java.lang.String[])>", "Dynamic loading");
		sensitiveAPICategories.put("<java.lang.Runtime: java.lang.Process exec(java.lang.String,java.lang.String[],java.io.File)>", "Dynamic loading");
		sensitiveAPICategories.put("<java.lang.Runtime: java.lang.Process exec(java.lang.String[],java.lang.String[],java.io.File)>", "Dynamic loading");
		sensitiveAPICategories.put("<java.lang.Runtime: java.lang.Process exec(java.lang.String,java.lang.String[])>", "Dynamic loading");
		sensitiveAPICategories.put("<java.lang.Runtime: java.lang.Process exec(java.lang.String[])>", "Dynamic loading");


		//Reflection
		sensitiveAPICategories.put("<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>", "Reflection");


		//File and network IO
		sensitiveAPICategories.put("<org.apache.http.impl.client.DefaultHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>", "File and network IO");
		sensitiveAPICategories.put("<org.apache.http.impl.client.AbstractHttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>", "File and network IO");
		sensitiveAPICategories.put("<org.apache.http.client.HttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest)>", "File and network IO");
		sensitiveAPICategories.put("<org.apache.http.client.HttpClient: org.apache.http.HttpResponse execute(org.apache.http.client.methods.HttpUriRequest,org.apache.http.protocol.HttpContext)>", "File and network IO");
		sensitiveAPICategories.put("<org.apache.http.impl.client.DefaultHttpClient: void <init>(int)>", "File and network IO");
		sensitiveAPICategories.put("<java.net.DatagramSocket: void <init>(int)>", "File and network IO");
		sensitiveAPICategories.put("<android.content.Context: java.io.File getFilesDir()>", "File and network IO");
		sensitiveAPICategories.put("<java.io.File: java.lang.String getPath()>", "File and network IO");
		sensitiveAPICategories.put("<android.os.Environment: java.io.File getExternalStorageDirectory()>", "File and network IO");
		sensitiveAPICategories.put("<java.io.File: java.io.File[] listFiles()>", "File and network IO");
		sensitiveAPICategories.put("<java.io.File: java.lang.String getAbsolutePath()>", "File and network IO");
		sensitiveAPICategories.put("<java.io.File: boolean mkdir()>", "File and network IO");
		sensitiveAPICategories.put("<java.io.File: boolean mkdirs()>", "File and network IO");
		sensitiveAPICategories.put("<java.io.File: boolean delete()>", "File and network IO");
		sensitiveAPICategories.put("<java.io.File: boolean exists()>", "File and network IO");
		sensitiveAPICategories.put("<java.io.File: void <init>(java.lang.String,java.lang.String)>", "File and network IO");
		sensitiveAPICategories.put("<java.io.File: void <init>(java.io.File,java.lang.String>", "File and network IO");
		sensitiveAPICategories.put("<java.io.OutputStream: void write(byte[],int,int)>", "File and network IO");
		sensitiveAPICategories.put("<java.io.OutputStream: void write(byte[])>", "File and network IO");
		sensitiveAPICategories.put("<java.io.FileOutputStream: void write(byte[],int,int)>", "File and network IO");
		sensitiveAPICategories.put("<java.io.FileOutputStream: void <init>(java.lang.String)>", "File and network IO");
		sensitiveAPICategories.put("<java.io.FileOutputStream: void write(byte[])>", "File and network IO");
		sensitiveAPICategories.put("<java.io.DataOutputStream: void write(byte[],int,int)>", "File and network IO");
		sensitiveAPICategories.put("<java.io.FilterOutputStream: void write(byte[])>", "File and network IO");
		sensitiveAPICategories.put("<java.io.DataOutputStream: void writeBytes(java.lang.String)>", "File and network IO");
		sensitiveAPICategories.put("<java.net.HttpURLConnection: void setRequestMethod(java.lang.String)>", "File and network IO");
		sensitiveAPICategories.put("<java.net.HttpURLConnection: java.io.OutputStream getOutputStream()>", "File and network IO");
		sensitiveAPICategories.put("<java.net.Socket: java.io.OutputStream getOutputStream()>", "File and network IO");
		sensitiveAPICategories.put("<java.net.ServerSocket: void bind(java.net.SocketAddress)>", "File and network IO");
		sensitiveAPICategories.put("<java.net.URL: java.io.InputStream openStream()>", "File and network IO");
		sensitiveAPICategories.put("<java.net.URL: java.net.URLConnection openConnection()>", "File and network IO");
		sensitiveAPICategories.put("<java.net.Socket: void <init>(int)>", "File and network IO");
		sensitiveAPICategories.put("<java.net.MulticastSocket: void <init>(int)>", "File and network IO");
		sensitiveAPICategories.put("<java.net.HttpURLConnection: void <init>(int)>", "File and network IO");
		sensitiveAPICategories.put("<java.net.ServerSocket: void <init>(int)>", "File and network IO");
		sensitiveAPICategories.put("<java.net.URL: java.lang.Object getContent()>", "File and network IO");
		sensitiveAPICategories.put("<java.net.Socket: java.io.InputStream getInputStream()>", "File and network IO");
		sensitiveAPICategories.put("<java.net.URLConnection: java.io.InputStream getInputStream()>", "File and network IO");
		sensitiveAPICategories.put("<android.content.Context: java.io.FileOutputStream openFileOutput(java.lang.String,int)>", "File and network IO");

	}
}

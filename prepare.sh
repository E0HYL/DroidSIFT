#!/bin/sh
APKNAME=$1
FILENAME=$2
APK_DIR=$3
APP_EXT=$4
#LEAK_DIR=$3
NEW_APPENDIX="_new"
NEW_PACKAGE="_pkg"
NEW_APKTOOL="$APP_EXTtool"
JAR_EXT=".jar"
DEX_EXT=".dex"
ZIP_EXT=".zip"
APK_EXT="$APP_EXT"
DEX_TO_JAR_EXT="_dex2jar.jar"
SOOT_DIR="$PWD/bin/output_$FILENAME"
OUTPUT_DIR="$PWD/output"
ANDROID_SDK="$PWD/sdk/platform-tools"
DEX2JAR_DIR="$PWD/dex2jar/dex2jar-0.0.9.15"
DX="$ANDROID_SDK/dx"
DEXDUMP="$ANDROID_SDK/dexdump"
DEX2JAR="$DEX2JAR_DIR/dex2jar.sh"
APKTOOL="$PWD/apktool/apktool"
KEYSTORE="$PWD/keystore/my-release-key.keystore"
KEY_ALIAS="myrelease"
KEY_PASS="android"
STORE_PASS="android"

echo usage: prepare.sh $APP_EXTname filename 
echo example: ./prepare.sh Facebook_for_Android_1.6.0 Facebook160

echo converting dex file to jar package via dex2jar...
cd $APK_DIR/
$DEX2JAR $APKNAME$APP_EXT

echo decompressing jar package...
cd $APK_DIR/
mkdir $FILENAME
cd $FILENAME/
jar -xf $APK_DIR/$APKNAME$DEX_TO_JAR_EXT
cp -r ./ $SOOT_DIR/

#echo dissembling$APP_EXT with dexdump...
cd $APK_DIR/
$DEXDUMP -d $APKNAME$APP_EXT > $APKNAME.dexdump

echo dissembling$APP_EXT with apktool...
cd $APK_DIR/
$APKTOOL d -f $APKNAME$APP_EXT

echo Copying the Manifest file into OUTPUT_DIR
cp $APKNAME/AndroidManifest.xml $OUTPUT_DIR

echo decompressing apk package...
cd $APK_DIR/
mkdir $FILENAME$NEW_APPENDIX$NEW_PACKAGE
cd $FILENAME$NEW_APPENDIX$NEW_PACKAGE/
unzip -qo $APK_DIR/$APKNAME$APK_EXT

cd $APK_DIR/
cp ./$FILENAME$NEW_APPENDIX$NEW_PACKAGE/classes.dex ./$APKNAME.dex

echo dumping permissions in manifest...
grep "permission" $APKNAME/AndroidManifest.xml

echo Version:
grep "versionName" $APKNAME/AndroidManifest.xml

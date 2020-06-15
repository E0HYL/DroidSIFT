#!/bin/sh
APKNAME=$1
CLASS_DIR=$2
APK_DIR=$3
APP_EXT=$4
API_LEVEL=$5
TRANSBLOCKER="$PWD/bin"
CURR_DIR=$PWD

SOOTCLASS="$PWD/soot/sootclasses-2.5.0.jar"
POLYGLOT="$PWD/soot/polyglotclasses-1.3.5.jar"
JASMIN="$PWD/soot/jasminclasses-2.5.0.jar"
ANDROID="$PWD/sdk/platforms/default/android-19.jar"
OUTPUT="$PWD/output/$CLASS_DIR.output"
GXL_DIR="$PWD/output/gxl_file"
TEMP_PID="$PWD/tempPid"

PROCESS_DIR="$APK_DIR/$CLASS_DIR"
DEX_FULLPATH="$APK_DIR/$APKNAME.dex"

#call this script with 
# ./api-graph.sh $file ${file}dir $INPUT_DIR $APKEXT ${files[$i]}
# For example
# ./api-graph.sh GPSLogger GPSLoggerdir ~/yueduan/DescriptionGeneration/apks .apk 17


if [ ! -d "$GXL_DIR" ]; then
        mkdir $GXL_DIR
fi

echo converting Dalvik executable to Java classes...
./prepare.sh $APKNAME $CLASS_DIR $APK_DIR $APP_EXT

#echo $CURR_DIR
cd $TRANSBLOCKER
#echo $CURR_DIR
echo "generating api graph for $CLASS_DIR... hopefully it's working"
java -Xss1024m -Xmx4096m -cp $JASMIN:$SOOTCLASS:$POLYGLOT:$ANDROID:$PROCESS_DIR:. mySoot.AnalyzerMain $PROCESS_DIR $DEX_FULLPATH $API_LEVEL > $OUTPUT &
ret=$!
echo $ret > $TEMP_PID

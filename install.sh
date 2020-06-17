#!/bin/sh
SOOT="$PWD/soot"

SOOTCLASS="$PWD/soot/sootclasses-2.5.0_pcpratts_muzhang.jar"
POLYGLOT="$PWD/soot/polyglotclasses-1.3.5.jar"
JASMIN="$PWD/soot/jasminclasses_04-Sep-2012.jar"
ANDROID="$PWD/sdk/platforms/default/android.jar"

cd src
rm -rf ./*
echo "Checking out source code from svn..."
svn co https://haven.ecs.syr.edu/svn/main/dalvik-analyzer/trunk/mySoot
echo "Compiling..."
javac mySoot/util/*.java
javac -cp $JASMIN:$SOOTCLASS:$POLYGLOT:. mySoot/*.java
echo "Installing..."
cd ..
mv src/mySoot/*.class bin/mySoot/
mv src/mySoot/util/*.class bin/mySoot/util/


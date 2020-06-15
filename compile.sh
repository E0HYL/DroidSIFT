#!/bin/sh
SOOT="$PWD/soot"

SOOTCLASS="$PWD/soot/sootclasses-2.5.0.jar"
POLYGLOT="$PWD/soot/polyglotclasses-1.3.5.jar"
JASMIN="$PWD/soot/jasminclasses-2.5.0.jar"
ANDROID="$PWD/sdk/platforms/default/android.jar"

cd src
#rm -rf ./*
#svn co https://haven.ecs.syr.edu/svn/main/dalvik-analyzer/trunk/mySoot
#echo "Updating source code from svn..."
#cd mySoot
#svn up
#cd ..
echo "Compiling..."
javac -cp $JASMIN:$SOOTCLASS:$POLYGLOT:. mySoot/util/*.java
javac -cp $JASMIN:$SOOTCLASS:$POLYGLOT:. mySoot/*.java
cd ..
echo "Installing..."
mv src/mySoot/*.class bin/mySoot/
mv src/mySoot/util/*.class bin/mySoot/util/


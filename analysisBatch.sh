#!/bin/bash
CURR_DIR=$PWD
INPUT_DIR=$CURR_DIR/apks
APKEXT=.apk
MAX_LOOP=30
SLEEP_INTERNAL=60
TIME_FILE=$CURR_DIR/timingFile

rm $TIME_FILE

#API_LEVEL=(0 3 4 7 8 10 15 16 17 19)
API_LEVEL=(19)
files=( "${API_LEVEL[@]:0}" )

total=${#files[*]}
echo "Begin analyzing all the $APKEXT files in INPUT DIRECTORY ($INPUT_DIR)"

for file in $INPUT_DIR/*$APKEXT
do
	filename=$(basename $file)
	file=$(basename $file $APKEXT)
	#echo Analyzing $file ${file}dir $INPUT_DIR $APKEXT
	for (( i=0; i<=$(( $total -1 )); i++ ))
	do

		STARTTIME=$(date +%s)

		echo $FILE
		echo "API_LEVEL is ${files[$i]}"
		./api-graph.sh $file ${file}dir $INPUT_DIR $APKEXT ${files[$i]}
		read javaPid < tempPid
	
		COUNTER=0
		while [  $COUNTER -lt $MAX_LOOP ]; 
		do
			let COUNTER=COUNTER+1 
			sleep $SLEEP_INTERNAL 
					
			result=$(ps -al | grep $javaPid)
			if [[ -n "$result" ]];
				then
					echo ${COUNTER} sleep cycles have passed, keep running
			else
				echo "Finished Running"
				break
			fi
		done #end for while [ $COUNTER..

		result=$(ps -al | grep $javaPid)
		if [[ -n "$result" ]]
		then
			echo "$file Still running, kill the process!" >> $TIME_FILE
			kill -9 $javaPid
		fi
		ENDTIME=$(date +%s)

		if [ -f "$PWD/output/${file}dir.ddg.global.cxl" ]
		then
			echo "It takes $(($ENDTIME - $STARTTIME)) seconds to complete $file" >> $TIME_FILE
			break
		fi
	
	done #end for ((i=0..
#	./cleanBin.sh
done


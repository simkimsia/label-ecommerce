#!/bin/bash

##Remove all build folders in the parent dir except the last 5 that start with 20**
## this is meant for server than for development machine

COUNTER=0
MIN_ALLOWED=5
for dir in "../20"*/
do
	COUNTER=$[$COUNTER +1]
done

echo "We have $COUNTER folders that start with 20"

for dir in "../20"*/
do
	if [ $COUNTER -gt $MIN_ALLOWED ]
	then
		rm "$dir" -Rf
		COUNTER=$[$COUNTER -1]
		echo "We removed $dir"
	fi
done

echo "We have now have $COUNTER folders that start with 20"
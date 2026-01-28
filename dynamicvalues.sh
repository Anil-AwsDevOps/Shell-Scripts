#!/bin/bash

#I want a command to be executed and take the output into variable, how to do that?
#VAR_NAME=$(command)

STARTTIME=$(date +%s)

echo "script executed at : $STARTTIME"

sleep 15

ENDTIME=$(date +%s)
TOTALTIME=$(($ENDTIME-$STARTTIME))

echo "script exectued in: $TOTALTIME"
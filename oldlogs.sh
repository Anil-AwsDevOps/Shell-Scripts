#!/bin/bash


LOGS_DIR=/home/ec2-user/applogs
LOGS_FILE="$LOGS_DIR/$0.log"

if [ ! -d $LOGS_DIR ]; then
    echo " $LOGS_DIR directory not found"
    exit 1
fi

FILES_TO_DELETE=$( find $LOGS_DIR name *.log -mtime +14)

echo "$FILES_TO_DELETE"


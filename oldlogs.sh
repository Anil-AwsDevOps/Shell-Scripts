#!/bin/bash


LOGS_DIR=/home/ec2-user/app_logs
LOGS_FILE="$LOGS_DIR/$0.log"

if [ ! -d $LOGS_DIR ]; then
    echo " $LOGS_DIR directory not found"
    exit 1
fi

FILES_TO_DELETE=$( find $LOGS_DIR -name "*.log" -mtime +14)

echo "$FILES_TO_DELETE"

while IFS= read -r filepath; do
  # Process each line here
  echo "Deleting file: $filepath"
  rm -f $filepath
  echo "Deleted file: $filepath"
done <<< $FILES_TO_DELETE



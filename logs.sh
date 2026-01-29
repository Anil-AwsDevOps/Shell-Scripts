#!/bin/bash

USERID=$(id -u)

LOGS_FOLDER="/var/log/shellscript"
LOGS_FILE="/var/log/shellscript/$0.log"

if [ $USERID -ne 0 ]; then
    echo "run this as root user" | tee -a $LOGS_FILE
    exit 1
fi
VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2  is failure" | tee -a $LOGS_FILE
    else
        echo "$2  is success" | tee -a $LOGS_FILE
    fi
}



dnf install nginx -y &>> $LOGS_FILE

VALIDATE $? "installation nginx "

dnf install mysql -y &>> $LOGS_FILE

VALIDATE $? "installation mysql "

dnf install nodejs -y &>> $LOGS_FILE

VALIDATE $? "installation nodejs"
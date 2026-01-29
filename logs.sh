#!/bin/bash

USERID=$(id -u)

LOGS_FOLDER = "/var/log/shellscript"
LOGS_FILE = "/var/log/shellscript/$0.log"

if [ $USERID -ne 0 ]; then
    echo "run this as root user"
    exit 1
fi
VALIDATE(){
    if [ $1 -ne 0 ]; then
        echo "$2 nginx is failure"
    else
        echo "$2 nginx is success"
    fi
}



dnf install nginx -y &>> $LOGS_FILE

VALIDATE $? "installation"

dnf install mysql -y &>> $LOGS_FILE

VALIDATE $? "installation"

dnf install nodejs -y &>> $LOGS_FILE

VALIDATE $? "installation"
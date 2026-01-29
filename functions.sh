#!/bin/bash

USERID=$(id -u)

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



dnf install nginx -y

VALIDATE $? "installation"

dnf install mysql -y

VALIDATE $? "installation"

dnf install nodejs -y

VALIDATE $? "installation"
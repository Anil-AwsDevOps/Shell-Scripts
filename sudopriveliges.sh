#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "run this as root user"
    exit 1
fi

echo "installing nignx"
dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "Installin nginx is failure"
else
    echo "installing nginx is success"
fi
dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installin mysql is failure"
else
    echo "installing mysql is success"
fi

dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "Installin nodejs is failure"
else
    echo "installing nodejs is success"
fi
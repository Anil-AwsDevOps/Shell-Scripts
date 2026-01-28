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
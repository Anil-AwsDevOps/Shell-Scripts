#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "run this as root user"
fi

echo "installing nignx"
dnf install nginx -y
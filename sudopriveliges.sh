#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "run this as root user"
    exit 1
fi

echo "installing nignx"
dnf install nginx -y
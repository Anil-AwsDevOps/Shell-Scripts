#!/bin/bash

echo "enter username"
read USERNAME

echo "user name is : $USERNAME"

#sensitive information wont visible 
echo "please enter your passwd:"
read -s PASSWD

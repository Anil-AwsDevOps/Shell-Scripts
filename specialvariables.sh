#!/bin/bash

#special varaibles

echo "All args passed to script: $@"
echo "no of variables passed: $#"
echo " Script name: $0"
echo "present directory: $PWD"
echo "who is running: $USER"
echo "home directory of current user: $HOME"
echo "PID of this script: $$"
sleep 100 & 
echo "PID of recently executed background process : $!"
echo "All args passed to script: $*"
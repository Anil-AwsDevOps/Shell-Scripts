#!/bin/bash
set -e
trap 'echo "there is error in $LINENO, bash : $BASH_COMMAND" ' ERR
echo "hello"
echo "this is anil"
echoo "shell"
#!/bin/sh
# Define your function here

Hello () {
   echo "Hello World $1 $2"
   return 100
}

# Invoke your function
Hello Zara Ali

# Capture value returnd by last command
ret=$?

echo "Return value is $ret"

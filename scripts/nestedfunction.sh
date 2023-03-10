#!/bin/sh

# Calling one function from another
number_one () {
   echo "This is the first function speaking..."
   if [ $? -eq 0 ]; then
   number_two
   fi
}

number_two () {
   echo "This is now the second function speaking..."
}

# Calling function one.
number_one

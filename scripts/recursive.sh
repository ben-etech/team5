#!/bin/bash
number_two () {
  echo "This is now the second function speaking..."
  number_two
}

#Calling recursive function
number_two

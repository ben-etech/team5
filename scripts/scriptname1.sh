#!/bin/bash
etech_check() {
read -p "please enter a number: " num1
read -p "please enter second number: " num2

if [ $num1 -eq $num2 ]; then
  echo " numbers are equal"
  exit 0
else
  echo " numbers are not equal"
  exit 1 
fi
}
etech_check

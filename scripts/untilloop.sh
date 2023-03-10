#!/bin/sh

a=20

until [ $a -gt 10 ]; do
   echo $a
   a=$(( $a - 1 ))  
done


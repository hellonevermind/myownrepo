#!/bin/bash

#Write a shell script to find whether an input integer is even or odd.

clear
echo "enter a number"
read x
y=`expr $x % 2`

if test $y -eq 0
then
   echo "Number is even"
else
   echo "Number is odd"
fi

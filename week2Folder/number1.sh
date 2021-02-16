#!/bin/bash
#Task for the week
#Mercy 12/2/2021

#---------Number 1--------
var1=$1
var2=$2
if [ $var1 -gt $var2 ]
then
       echo The number $var1 is larger

elif [ $var1 -eq $var2 ]
then
       echo The numbers are equal
else
        echo The number $var2 is larger


fi


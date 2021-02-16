#!/bin/bash
#Task for the week
#Mercy 12/2/2021

#-----------Number 4----------
for value in {1..10}
do
remainder=$(expr $value % 2 )
if [ $remainder -eq 0 ]
then
    echo The nuber $value is an even number

else
    echo The nuber $value is an odd number

    fi
done


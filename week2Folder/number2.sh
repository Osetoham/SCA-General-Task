#!/bin/bash
#Task for the week
#Mercy 12/2/2021

#----------Number 2-----------
varfile=$1
#playing around with chmod makes it work
if [ -x $varfile ] && [ -w $varfile ]
then
        echo This users file is executable and writeable

elif [ -w $varfile ]
then
       echo This users file is writeable

elif [ -x $varfile ]
then
        echo This users file is executable

else
        echo This users file is not useful

fi


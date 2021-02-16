#!/bin/bash
#Task for the week
#Mercy 12/2/2021


#------------Number 3----------
date=`date +%A`
if [ $date = 'Monday' ]
then
     echo Hey!, it\'s Monday


elif [ $date = 'Tuesday' ]
then
    echo Hey!, it\'s a Tuesday


elif [ $date = 'Wednesday' ]
then
     echo Hey!, it\'s Wednesday, Happy hump day!!

elif [ $date = 'Thursday' ]
then
     echo Hey!, it\'s a Thursday
elif [ $date = 'Friday' ]
then
     echo Yaaay,\'TGIF\'

elif [ $date = 'Saturday' ]
then
     echo Happy weekend!!

elif [ $date = 'Sunday' ]
then
     echo Happy Sunday!!

else
     echo Bored!!!
fi


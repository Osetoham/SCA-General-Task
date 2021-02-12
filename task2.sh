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



#-------------Number 5---------
files=$( ls $1 )

for file in $files
do
size=$( ls -l $file | awk '{print $5}')



if [ -d $file ]
then
    itemsCount=$( find $file | wc -l )
    echo dir====$file has $itemsCount items




elif [ -f $flie ]
then
    echo file===$file size is $size
fi
done


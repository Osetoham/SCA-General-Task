#!/bin/bash
#Task for the week
#Mercy 12/2/2021

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


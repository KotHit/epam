#!/bin/bash

IFS=""

space=$1
mapfile -t myArray < /home/osboxes/Desktop/one.txt
echo myArray
declare -a arr
arr=(`cat "$filename"`)
count=(`wc -l "$filename"`)
mount=(`df -h | grep -vE "^Filesystem|shm|boot" | awk '{ print $6 }'`)
used_space=(`df -h | grep -vE "^Filesystem|shm|boot" |  awk '{ print +$5 }'`)




#for var in "${used_space[@]}"
#do
#if [$(($var -lt $space)) ]
#then
#echo "Yes $var"
#fi
#done

#exit 0

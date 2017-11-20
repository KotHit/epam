#!/bin/bash

declare -a used_space
declare -a mount
space=$1


mount=(`df -h | grep -vE "^Filesystem|shm|boot" | awk '{ print $6 }'`)
used_space=(`df -h | grep -vE "^Filesystem|shm|boot" |  awk '{ print +$5 }'`)
echo ${used_space[@]}
echo ${used_space[$#]} 
echo ${mount[@]}
for ((count=0; count<=${used_space[#]}; count++))
do
if [ $((${used_space[$count]} -lt $space)) ]
then
echo message
fi
done
#exit 0



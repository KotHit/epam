#!/bin/bash
#Enter parameters after script name

list="$@"				#all arguments
declare -a array
array=($list)

echo "Loop FOR"

for i in $list; do			#iteration $i in $list
	echo "This is number $i"
done					#end for

echo "Loop WHILE"
i=0
count="$#"				#count of arguments
while [ $i -lt $count ]; do		#while i<count
	echo "This is number ${array[$i]}"
	((i++))
done					#end while

echo "Loop UNTILE"
i=0
count=$((count-1))			#array start from [0]
until [ $count -lt $i ]; do		#iteration while true count<i
	echo "This is number ${array[$count]}"
	((count--))
done					end until
#exit 0

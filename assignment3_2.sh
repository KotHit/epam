#!/bin/bash

FILE=/etc/resolv.conf		#Path to file
count=0				#initialize counter
while read LINE; do		#iterations line in file
	echo "$LINE"
	((count++))		#increment
done < $FILE			#end while
echo "Amount of strings: $count"


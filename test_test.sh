if [ $# -gt 1 ]
then
	echo "Pass one parameter (zero for default)"
	exit 1
elif [ $# -eq 1 ]
then
	FREESPACE=$1
else 
	FREESPACE=10
fi

USED=$((100-$FREESPACE))

#Check free space for all strings from df

df | tail -n +2 | while read -r line || [[ -n "$line" ]]
do
	if [ `echo "$line" | awk '{ print $5 }' | grep -o '^[0-9]*'` -gt $USED ]
	then
		echo "Warning! Not enough space on ` echo "$line" | awk '{ print $1 " mounted at " $6}'`"
	else 
		echo "`echo "$line" | awk '{ print $1 }'` has enough free space"
	fi
done

#!/bin/bash
BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
BUFFETT_1=${BUFFETT/snow/foot}		#Replace "snow" on "foot"
echo $BUFFETT_1				#show buffett_1
echo
BUFFETT_2=${BUFFETT_1/snow/}		#Delete "snow"
echo $BUFFETT_2				#show buffett_2
echo
BUFFETT_3=${BUFFETT_2/finding/getting}	#Replace "finding" on "getting"
echo $BUFFETT_3				#show buffett_3
echo
BUFFETT_4=${BUFFETT_3%%snow *}		#Delete all text after "wet"
echo $BUFFETT_4				#show buffett_4
#exit 0

#!/bin/bash

echo "Enter your salary"
read  salary #enter var salary
if [[ $salary -lt 5000 ]]; then				 #if $salary <5000
 echo "Your salary $salary... No tax"
elif [[ $salary -gt "5000" &&  "$salary" -lt "30000" ]]	 #if $salary >5000 and <30000
 then
   echo "Your salary $salary ... Tax 10%" 
   tax=$(expr $salary*0.1 | bc)				#calculate $tax for $salary>5000 and <30000
   echo "Your tax= $tax"
else #if salary >30000
   echo "Your salary $salary ... Tax 20"
   tax=$(expr $salary*0.2 | bc)				#calculate $tax for $salary>30000
   echo "Your tax= $tax"
fi
# exit 0

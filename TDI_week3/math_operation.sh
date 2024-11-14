#!/bin/bash

#Take user input 
echo "Enter Two numbers :"
read a
read b

#input type of operation
echo "Enter choice :"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch

#Perform operation with switch case
case $ch in 
1)
	res=$(echo "$a + $b" | bc)
	echo "Addition is = $res"
	;;

2)
	res=$(echo "$a - $b" | bc)
	echo "Subtraction is = $res"
	;;

3)	res=$(echo "$a * $b" | bc)
	echo "Multiplication is = $res"
	;;

4)	
	if 
		(( "$b" == 0 )); then
        	echo "Only non-zero numbers are allowed for division."
	else
		res=$(echo "scale=2; $a / $b" | bc)
                echo "Division is = $res"

	fi
	;;
		
*) 	echo "Invalid option"
	;;
esac



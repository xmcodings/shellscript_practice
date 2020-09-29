#!/bin/sh

if [ $# -eq 0 ] # test if input supplied
then 
    echo "variable must be supplied as natural number"
    exit 1
fi

if ! [ "$1" -eq "$1" ] 2> /dev/null # check if input is integer 
then
    echo "variale must be natual number"
    exit 1
fi

if ! [ "$2" -eq "$2" ] 2> /dev/null #check if second input is integer
then
    echo "variale must be natual number"
    exit 1
fi



    
if [ $1 -le 0 ] # test for negative
then 
    echo "variables must be over 0"
    exit 1
fi

if [ $2 -le 0 ] # test for negative
then
    echo "variables must be over 0"
    exit 1
fi

for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
	    ans=`expr $i \* $j`
       	    printf "$i"x"$j=$ans"
	    printf " "
	done
	echo ""
done	


exit 0

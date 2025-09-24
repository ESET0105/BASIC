#!usr/bin/bash

fun_marks () 
{
local $mark = 50

if [ $marks -ge 75 ]; then
	echo "you are in bucket 4"
elif [ $marks -ge 50 -a $marks -lt 75 ]; then
	echo "you are in bucket 3"
elif [ $marks -ge 25 -a $marks -lt 50 ]; then
	echo "you are in bucket 2"
else
	echo "you are fail , you should leave as soon as possible!"


}

echo "enter you score between 0-100"
read marks
fun_marks $marks
fun_marks()



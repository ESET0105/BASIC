#!usr/bin/bash

echo "enter your score between 0-100"
read marks

if [ $marks -ge 75 ]; then
	echo "you are in bucket 4"
elif [ $marks -lt 75 -a $marks -ge 50 ]; then
	echo "you are in bucket 3"
elif [ $marks -lt 50 -a $marks -ge 25 ]; then
	echo "you are in bucket 2"
else
	echo "you are in bucket 1"
fi

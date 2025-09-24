#!usr/bin/bash

echo "what's your name"
read name

echo "what is your age"
read age

if [ $age -ge 18 ]; then 
	echo "hi $name, you can vote."
else
	echo "hi $name, you can't vote now."
fi



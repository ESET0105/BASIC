#!usr/bin/bash

add_func ()
{
	local x=$1
	local y=$2
	result=$(( x+y ))
}

a=3;b=5
echo "the sum of this 2 numbers is"

add_func $a $b
echo $result

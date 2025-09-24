#!usr/bin/bash

read counter
until [ $counter -le 0 ]
do let counter--
	echo $counter
done

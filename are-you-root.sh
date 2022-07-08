#!/bin/bash

# If the user is root, its UID is zero

if [ $UID -eq 0 ]
then
	if [ $# -eq 0 ]
	then
		echo "You are root!"
	else
		echo "You are root, $1"
	fi
else
	echo "You are not root."
fi

#!/bin/bash

if [[ $# -ge 0 ]]; then
	input=$1
else
	input="Nothing input"
fi

case $input in
	hello)
		echo "You said hello"
	;;
	bye)
		echo "You said bye"
	;;
	*)
		echo "You said something werid..."
	;;
esac


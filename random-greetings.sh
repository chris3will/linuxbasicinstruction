#!/bin/bash
echo "Welcome to the Greeting Generator"
read -p "What's your name?: " name
greeting[0]="Hola"
greeting[1]="Greetings"
greeting[2]="How do"
greeting[3]="Howdy"

size=${#greeting[@]}
index=$(($RANDOM % $size))

echo ${greeting[$index]} $name

i=1;
j=$#;
echo "We know the input size is: $j"
while [ $i -le $j ]
do
	echo "Username - $i: $1";
	i=$((i + 1));
	shift 2;
	echo "$1 has updated, please take care";
done

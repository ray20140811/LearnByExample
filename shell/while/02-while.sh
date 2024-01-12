# !/bin/sh
while true
do
    echo "Enter a number: "
    read num
    if [[ $num =~ ^[0-9]+$ ]]
    then
	echo "You entered $num"
	break
    else
	echo "Invalid input. Please enter a number."
    fi
done

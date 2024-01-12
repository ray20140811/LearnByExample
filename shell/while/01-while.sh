# !/bin/sh
while
    echo "Enter number: "
    read n
    [[ -z $n || $n == *[^0-9]* ]]
do true;
done

    

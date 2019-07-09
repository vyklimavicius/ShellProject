#! /bin/bash 

read -p "What word are you looking for ? " word 

echo "Making new folder"
mkdir ./specific
sleep 3

for file in *;
do 
    if [ -f "$file" ]; then


     grep -ni "$word" "$file"

     check=$(grep -ni "$word" "$file")

     if [ -z "$check" ]; then 
        echo "Empty"
     else 
        echo "Found"
        cp $file ./specific
     fi
    else
     echo "$file is not a file!"
    fi

    echo "----------------------"

done





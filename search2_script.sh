#! /bin/bash

# expand the find command as an iterable object

for i in $(find . -type d);
do 
    echo "This is the folder: $i"
    
    for myFile in $i/*;
    do 
        echo "The file inside is: $myfile"
    done 
    echo "-------------------------------"
done 




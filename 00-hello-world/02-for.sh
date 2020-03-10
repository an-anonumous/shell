#! /bin/bash

# for 相当于 java中的foreach
for filename in $(ls) ;
do
    if [ -f "$filename" ];
    then
        echo "$filename"
    fi
done

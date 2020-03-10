#! /bin/bash

#while
echo "please input password"
count=2
read  P
while  [ "$P" != "password"  -a  "$count" -gt 0  ]  ;
do
    count=$[count-1]
    echo "The password is incorrect,please input again \n "
    read P
done

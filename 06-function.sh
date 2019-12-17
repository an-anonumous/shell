#! /bin/bash

#函数可以当做一段独立的脚步，可接受任意多个参数
fun()
{
    echo $0
    for para in $@ ;
    do
        echo "$para"
    done
}

fun  a b c d e f g 1 2 3 4 5

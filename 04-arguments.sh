#! /bin/bash

#脚本名相当于c中第0个参数
echo $0

#显示参数个数，$1,$2,$3,$4.........
echo $#

#打印参数列表
echo $@
echo $*

#当前进程号
echo $$

for para in $@ ;
do
    echo "$para"
done

#删除$@左边第一个参数
shift

for para in $@ ;
do
    echo "$para"
done
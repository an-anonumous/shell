#! /bin/bash

echo "hello"
echo

#本地变量
var1="local var1"
echo $var1
printenv | grep "var1"

echo "==================================================="

#环境变量
export env_var='environment variable'
echo $env_var
printenv | grep "env_var"

echo "==================================================="

#命令代换----执行环境变量本来代表的命令
mydate=`date`
echo $mydate

mydate2=$(date)
echo $mydate2

echo "==================================================="

#算术代换
var=123
echo $(($var+321))
echo $((var+321))
echo $[$var+321]
echo $[var+321]

#2进制的10+1
echo $[2#10+1]
#8进制的10+1
echo $[8#10+1]
echo $[16#10+1]
echo $[10#10+1]

#转义字符的使用
#创建文件'1231$dsfs-asdfas.c'
touch 1231\$dsfs\-asdfas.c
touch ./-abc\#123.cpp
touch -- -a-c-b-dsa-.c

#续行符
ls \
    -l

rm 1231\$dsfs\-asdfas.c
rm ./-abc\#123.cpp
rm  -- -a-c-b-dsa-.c

ls -l

echo "==================================================="
#被双引号用括住的内容，将被视为单一字串。它防止通配符扩展，但允许变量扩展。这点与单引号的处理方式不同

echo "==================================================="
#lt < 
#test 为测试，真0，假1
test 1 -lt 100

#显示上一个进程退出的值
echo $?

#测试是否是目录
test -d ./
echo $?

mkfifo fifo
test -p fifo
echo $?

#注意次数的[为一个命令，]为一个参数，所以空格必须有
[ -p fifo ]
echo $?

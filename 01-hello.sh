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

echo "==================================================="

# 测试字符串是否为非空
var=
#var=sdfasfa
[ -n $var  ]
echo $?

# 测试字符串是否为空
[ -z $var  ]
echo $?


# 测试字符串是否为非空
[ -n "$var"  ]
echo $?

# 测试字符串是否为空
[ -z "$var"  ]
echo $?

echo "==================================================="

unset var
# -a and
# -o or
[ 1 -gt 0 -a 0 = 0 ]
echo $?

echo "==================================================="

#"变量名" 会将变量的值读出来，‘变量名’ 将变量的名字当做字符串
var=hello
[ "$var" = "hello" ]
echo $?                 #0

[ "var" = "hello" ]
echo $?                 #1

[ '$varx' = "hello" ]
echo $?                 #1

[ 'varx' = "hello" ]
echo $?                 #1

echo "==================================================="

#分支
echo "please input a path"
read FileName
if [ -f "$FileName" ]
then
    echo "file"
    elif [ -d "$FileName" ] ; then
    echo "directory"
else
    print "unknow"
fi

if :; then
    echo "true"
fi


# case
echo "input a character\n"
read ch
case "$ch" in
    [a-z])
    echo "lower character" ;; # ;; 作用和break相似
    [A-Z])
    echo "upper character" ;;
    [0-9])
    print "number \n" ;;
    *)
    echo "unknow" ;;
esac


echo "==================================================="

# for 相当于 java中的foreach
for filename in $(ls) ;
do
    if [ -f "$filename" ];
    then
        echo "$filename"
    fi
done


echo "==================================================="

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

echo "==================================================="

echo "a\tb\n"

#-e 解析转义字符
echo  -e "a\tb\n"

#管道
ls  -al  | grep "*.sh"

# > 重定向
# >> 追加
# cmd tee  file   同时输出到屏幕的文件file

#stdin、stdout、stderr分别对应的文件描述符0、1、2

#1,2为文件描述符，标准出错也输出到标准输出，由于输出已经重定向到文件，所以所有的结果都输出到文件
ls -l > a.txt  2>&1

# <  输入重定向

echo "==================================================="

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



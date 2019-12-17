#! /bin/bash

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

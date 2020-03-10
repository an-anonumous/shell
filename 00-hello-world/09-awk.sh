#! /bin/bash

#只看进程id
ps -aux | awk '{print $2}'

#查看每个用户的默认shell
# $1，$2代表第一、二列，$0代表全部文本内容
awk -F: '{print $7}' /etc/passwd
awk -F: '{print $1 ":"  $7}' /etc/passwd

#自动变量$1、$2分别表示第一列、第二列等，而$0表示整个当前行。某种产品的库存量低于75则在行末标注需要订货：
awk '$2<75 {printf "%s\t%s\n", $0, "REORDER";} $2>=75 {print $0;}' testfile

#awk命令可以像C语言一样使用变量（但不需要定义变量），比如统计一个文件中的空行数
awk '/^ *$/ {x=x+1;} END {print x;}' testfile

awk 'BEGIN {FS=":"} {print $1;}' /etc/passwd

#进程号小于100的进程
ps aux | awk '$2<100 {print $0}'

#当前系统的进程数
ps aux | awk '$2>0 {num=num+1} END {print num}'

# 当前系统root用户的进程数
ps aux | awk '$2>0 && $1=="root"{num=num+1} END {print num}'

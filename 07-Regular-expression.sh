#! /bin/sh




# .代表一个字符
egrep "a." regex.txt

echo "a1aaaadsagfaaaadaaaadfgdsaahaaaahaaaa" | egrep "a."

# 小数
egrep "[0-9]+\.[0-9]+" regex.txt

# ^ 行首 ，$行尾
egrep "^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$" regex.txt

# 查找空行
egrep "^$" regex.txt | wc

#   < 单词开头以前（一个虚拟位置），>单词结尾;     以a开头，b结尾，中间出现至少一个字母或数字
egrep "\<a[a-zA-Z0-9]{1,}s\>"  regex.txt

#  \b 可以配置 \<,\>
egrep "\ba[a-zA-Z0-9]{1,}s\b"  regex.txt

# \B 非单词首尾
echo “aasd sadf ”  | egrep "\Ba[a-zA-Z0-9]{1,}\B"

#查找ip地址
egrep "[0-9]*.[0-9]*.[0-9]*.[0-9]*" regex.txt

egrep "[0-9]*\.[0-9]*\.[0-9]*\.[0-9]*" regex.txt

egrep "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" regex.txt

egrep "^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$" regex.txt

ifconfig |  egrep "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"



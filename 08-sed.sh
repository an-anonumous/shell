#! /bin/bash

#在test.sh文件的内容中第四行          之后(和vi一样)      追加 # add this line by sed，然后显示到屏幕，并不修改文件
sed "4a # add this line by sed " test.sh

# 修改保存到文件中
sed  -i  "4a # add this line by sed " test.sh

# 将test.sh内容删除2-4行，显示到屏幕
sed   "2,4d " test.sh

#  在文件中删除2-4行
sed  -i  "2,4d " test.sh

sed    "2,4d " test.sh

#在第一行前添加first line，显示到屏幕，不修改文件内容
sed "1i first line"   test.sh

#打印匹配的行
sed "/echo/p" test.sh

# -n静默输出，即只输出匹配行，不输出全文件
sed "/echo/p" test.sh -n

#删除所有注释
sed "/#/d" test.sh
sed "/#/d" test.sh -i

#字符创替换,和vi 一样，echo 替换为print
sed "s/echo/print/g" test.sh

#在每个数字两侧添加-，sed只支持基本正则表达式 \1 表示正则表达式中第一个（）
#echo "1234" | sed 's/([0-9])([0-9])/-\1-\2-/'
echo "123456789" | sed 's/\([0-9]\)/-\1-/'
echo "123456789" | sed 's/\([0-9]\)/-\1-/g'    # -1--2--3--4--5--6--7--8--9-

#hello harry
echo "harry " |  sed "s/harry/hello &/ "

#也可以使用 -e 参数来指定不同的替换命令，有几个替换命令需添加几个 -e 参数：
sed -e 's/yes/no/' -e 's/static/dhcp/' testfile








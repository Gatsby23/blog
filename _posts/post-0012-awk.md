---
title: AWK 文字处理
date: 2014-04-07
keywords:
    - reading
tags:
    - awk
    - reading
...

AWK 文字处理
============

> Notice:
>
>> 感觉 *The AWK Programming Language* 讲得更清晰，虽然是进阶，但让我再来一遍，
>> 我就不看陈皓的简明教程了。本书不愧 9.5 的评分，入门就看看原书 [第一章（我的
>> 笔记）][awk-notes]，进阶就继续看后几章。）

入门：AWK 简明教程
------------------

Data: `netstat.txt`

:   ```tzx-plain
    Proto Recv-Q Send-Q Local-Address          Foreign-Address             State
    tcp        0      0 0.0.0.0:3306           0.0.0.0:*                   LISTEN
    tcp        0      0 0.0.0.0:80             0.0.0.0:*                   LISTEN
    tcp        0      0 127.0.0.1:9000         0.0.0.0:*                   LISTEN
    tcp        0      0 coolshell.cn:80        124.205.5.146:18245         TIME_WAIT
    tcp        0      0 coolshell.cn:80        61.140.101.185:37538        FIN_WAIT2
    tcp        0      0 coolshell.cn:80        110.194.134.189:1032        ESTABLISHED
    tcp        0      0 coolshell.cn:80        123.169.124.111:49809       ESTABLISHED
    tcp        0      0 coolshell.cn:80        116.234.127.77:11502        FIN_WAIT2
    tcp        0      0 coolshell.cn:80        123.169.124.111:49829       ESTABLISHED
    tcp        0      0 coolshell.cn:80        183.60.215.36:36970         TIME_WAIT
    tcp        0   4166 coolshell.cn:80        61.148.242.38:30901         ESTABLISHED
    tcp        0      1 coolshell.cn:80        124.152.181.209:26825       FIN_WAIT1
    tcp        0      0 coolshell.cn:80        110.194.134.189:4796        ESTABLISHED
    tcp        0      0 coolshell.cn:80        183.60.212.163:51082        TIME_WAIT
    tcp        0      1 coolshell.cn:80        208.115.113.92:50601        LAST_ACK
    tcp        0      0 coolshell.cn:80        123.169.124.111:49840       ESTABLISHED
    tcp        0      0 coolshell.cn:80        117.136.20.85:50025         FIN_WAIT2
    tcp        0      0 :::22                  :::*                        LISTEN
    ```

Some Code Examples:

```bash
# retrive spefic fields
awk '{print $1, $4}' netstat.txt

# format fields
awk '{printf "%-8s %-8s %-8s %-18s %-22s %-15s\n",$1,$2,$3,$4,$5,$6}' netstat.txt

# apply filter
awk '$3==0 && $6=="LISTEN" ' netstat.txt
awk ' $3>0 {print $0}' netstat.txt
awk '$3==0 && $6=="LISTEN" || NR==1 ' netstat.txt # plus first row
```

built-in variables

 variable   | 说明
---------   | -----------------------------------------
 `$0`       | 当前记录（这个变量中存放着整个行的内容）
 `$1~$n`    | 当前记录的第n个字段，字段间由FS分隔
 `FS`       | Field Separator. 输入字段分隔符 默认是空格或Tab
 `NF`       | Number of Fields. 当前记录中的字段个数，就是有多少列
 `NR`       | Number of Lines Read so far. 已经读出的记录数，就是行号，从1开始，如果有多个文件话，这个值也是不断累加中。
 `FNR`      | 当前记录数，与NR不同的是，这个值会是各个文件自己的行号
 `RS`       | Record Separator. 输入的记录分隔符， 默认为换行符
 `OFS`      | Output FS. 输出字段分隔符， 默认也是空格
 `ORS`      | Output RS. 输出的记录分隔符，默认为换行符
 `FILENAME` | 当前输入文件的名字

more examples

```bash
awk  'BEGIN{FS=":"} {print $1,$3,$6}' /etc/passwd
awk  -F: '{print $1,$3,$6}' /etc/passwd

# multi FS
awk -F '[;:]'
awk -F: '{print $1,$3,$6}' OFS="\t" /etc/passwd

# regexpr
awk '$6 ~ /WAIT|TIME/ || NR==1 {print NR,$4,$5,$6}' OFS="\t" netstat.txt # match WAIT or TIME

# awk 拆分文件很简单，使用重定向就好了
awk 'NR!=1{print > $6}' netstat.txt

# bonus
awk 'NR!=1{if($6 ~ /TIME|ESTABLISHED/) print > "1.txt";
else if($6 ~ /LISTEN/) print > "2.txt";
else print > "3.txt" }' netstat.txt
for i in {1,2,3}.txt; do echo $i; cat $i; done

# sum file size
$ ls -l  *.cpp *.c *.h | awk '{sum+=$5} END {print sum}'

awk 'NR!=1{a[$6]++;} END {for (i in a) print i ", " a[i];}' netstat.txt
awk -f ./call.awk score.txt
```

a complicated example

```bash
$ file cal.awk
#!/bin/awk -f
#运行前
BEGIN {
    math = 0, english = 0, computer = 0
    printf "NAME    NO.   MATH  ENGLISH  COMPUTER   TOTAL\n"
    printf "---------------------------------------------\n"
}
#运行中
{
    math+=$3, english+=$4, computer+=$5
    printf "%-6s %-6s %4d %8d %8d %8d\n", $1, $2, $3,$4,$5, $3+$4+$5
}
#运行后
END {
    printf "---------------------------------------------\n"
    printf "  TOTAL:%10d %8d %8d \n", math, english, computer
    printf "AVERAGE:%10.2f %8.2f %8.2f\n", math/NR, english/NR, computer/NR
}
$ score.txt
Marry  2143     78       84       77      239
Jack   2321     66       78       45      189
Tom    2122     48       77       71      196
Mike   2537     87       97       95      279
```

和环境变量交互：（使用 `-v` 参数和 `ENVIRON`）

```bash
x=5 && y = 10 && export y
awk -v val=$x '{print $1, $2, $3, $4+val, $5+ENVIRON["y"]}' OFS="\t" score.txt
```

more tricks

```bash
# 打印99乘法表
seq 9 | sed 'H;g' | awk -v RS='' '{for(i=1;i<=NF;i++)printf("%dx%d=%d%s", i, NR, i*NR, i==NR?"\n":"\t")}'
```

- [**more: The GNU Awk User's Guide**][gnu_awk_user_guide]

[gnu_awk_user_guide]: http://www.gnu.org/software/gawk/manual/gawk.html

The AWK Programming Language
----------------------------

[The AWK Programming Language][douban_awk]

写了点读书笔记，[戳这里][awk-notes]

[douban_awk]: http://book.douban.com/subject/1876898/
[awk-notes]: post-0046-awk.html

---

Refs

#. [AWK 简明教程][awk_simple_tutorial]
#. [The AWK Programming Language][awk_book] `9.5 !!!`

[awk_simple_tutorial]: http://coolshell.cn/articles/9070.html
[awk_book]: http://book.douban.com/subject/1876898/

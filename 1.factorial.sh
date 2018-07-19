#!/bin/bash
#输入一个小于10的数，求它的阶乘

factorial()
{
if [ $1 -gt 1 ]; then
result=`expr $result \* $1`
next=`expr $1 - 1`
factorial $next
fi
}

if [ $# -ne 1 ]; then
echo -e "usage: factorial.sh [n]"
echo -e "calculates a number's factorial"
exit 1
fi

result=1

if [ $1 -eq 1 ]; then
:
elif [ $1 -gt 1 ]; then
factorial $1
else
echo "Invalid input parameter! It MUST be a integer greater than 0."
exit 1
fi

echo "$1! = $result"
exit 0

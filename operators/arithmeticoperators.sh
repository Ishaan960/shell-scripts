#! /bin/bash
a=5
b=2
result=`expr $a + $b`
echo "a+b:$result"
result=`expr $a - $b`
echo "a-b:$result"
result=`expr $a \* $b`
echo "a*b:$result"
result=`expr $a / $b`
echo "a/b:$result"
result=`expr $a % $b`
echo "a % b:$result"


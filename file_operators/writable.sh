#! /bin/bash
file="/home/lubuntu/shellscripts/operators/sum.sh"
if [ -f $file ] # checking whether sum.sh is file or directory
then
  echo "the object is file"
else
  echo "the object is not a directory"
fi



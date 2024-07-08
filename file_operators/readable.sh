#! /bin/bash
file="/home/lubuntu/shellscripts/operators/sum.sh"
if [ -r $file ]   #checking if the file is readable or not
then
  echo "the file is readable"
else
  echo "the file is not readable"
fi


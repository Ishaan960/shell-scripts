#! /bin/bash
file="/home/lubuntu/shellscripts/file_operators/f1"
if [ -s file ]
then
  echo "this is a empty file"
else
  echo "this is not a empty file"
fi


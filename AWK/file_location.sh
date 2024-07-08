#! /bin/bash
read -p "Please provide the directory with full path to count number of files: " LOCATION
if [ ! -d $LOCATION ]; then
echo "You should provide valid directory as Location"
exit 1
fi
ls -l $LOCATION | awk '/^-/' | awk 'END{print "The Number of Files:" NR}'

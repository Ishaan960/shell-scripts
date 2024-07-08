#!/bin/bash
PICTURES=$(ls *jpg)
DATE=$(date +%F)
for PICTURE in $PICTURES
do
	echo "Renaming $PICTURES"
	mv ${PICTURE} ${DATE}-${PICTURE}
done


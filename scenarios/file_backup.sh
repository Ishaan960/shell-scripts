
#!/bin/bash

read -p "Please enter the path of the directory to backup: " Backup_Path

if [ ! -d "$Backup_Path" ]; then
    echo "Error: '$Backup_Path' is not a valid directory."
    exit 1
fi

source_dir=$(basename "$Backup_Path")

backup_filename="${source_dir}_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$backup_filename" "$Backup_Path"

echo "Backup created: $backup_filename"

read -p "please give path to move your backupfile: " Backup_Location

if [ ! -d "$Backup_Location" ]; then
   echo "Error: '$Backup_Location' is not a valid location."
   rm $backup_filename
   echo "sorry backup removed and please give correct path next time"
exit 1
fi

mv $backup_filename $Backup_Location
echo "file is moved to $Backup_Location"


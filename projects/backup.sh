#!/bin/bash

# A simple backup program

src_dir="$1"
dst_dir="/home/vagrant/Backup/backup"

# Check if the user specified the source directory
if [ $# -eq 0 ]; then
    echo "Please enter a directory"
    exit 1
fi

# If Backup directory doesn't exit make it
if [ ! -d "$dst_dir" ]; then
    mkdir -p "$dst_dir"
fi

# list the contains of soure directory to see which files to exclude.
ls -1 $src_dir
read -p "Is there any file you want to exclude? Enter 'yes' or 'no': " skip

if [ "$skip" == "yes" ]; then
    read -p "Enter file name: " pass
elif [ "$skip" == "no" ]; then
    echo "you picked not to skip any file"
fi

for file in "$src_dir"/* ; do
    if [ "$(basename $file)" == "$pass" ]; then
	continue
    else
	rsync -ar "$file" "$dst_dir"
    fi
done

backup_date=$(date +'%m%d%y')
final="/home/vagrant/Backup"
echo "These are the backed up files: "
ls -1 "$dst_dir"

# Zip and rm the backup directory to save space
zip -r "$final/backup_$backup_date.zip" "$dst_dir"/* && rm -r "$dst_dir"

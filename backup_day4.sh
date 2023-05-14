#!/bin/bash

#Define the backup source directory 
src_dir=/home/tor/Day4/*

#Define the backup destination directory

#mkdir -p /home/tor/backup
tgt_dir=/home/tor/backup

#Define the backup filename 
#
curr_timestamp=$(date "+%Y-%m-%d-%H-%M-%S")
backup_file=$tgt_dir/$curr_timestamp.tgz

#create the backup file
#
echo "Taking backup on $curr_timestamp"
tar czf $backup_file --absolute-names $src_dir

echo "Backup completed"

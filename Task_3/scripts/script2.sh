#!/bin/bash

SOURCE_DIR="/home/arslanabid/Documents/work/task-3/scripts"
BACKUP_DIR="/home/arslanabid/Documents/work/task-3/backup_scripts"
DATE= $(date + "%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="backup_$DATE.tar.gz"

echo "Backing up '$SOURCE_DIR' to '$BACKUP_DIR/$BACKUP_FILE'"
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/$BACKUP_FILE" "$SOURCE_DIR"
if [[ $? -eq 0 ]]; then
	echo "Backup Successfully created: $BACKUP_FILE"
else
	echo "Backup Failed"
fi


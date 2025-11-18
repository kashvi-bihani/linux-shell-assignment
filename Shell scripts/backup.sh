#!/bin/bash
# Purpose : Take a backup "snapshot" of a directory with timestamp
# Author  : Kashvi Bihani
# Date    : 16-11-2025

# Directory to be backed up
SOURCE_DIR="/home/kashvi_bihani/top.sh/"

# Backup directory
BACKUP_DIR="/home/kashvi_bihani/Top_Backups"

# timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup name
BACKUP_NAME="TopBackup_${TIMESTAMP}"

# Create backup folder
mkdir -p "$BACKUP_DIR"

# Perform backup
cp -r "$SOURCE_DIR" "$BACKUP_DIR/$BACKUP_NAME"

echo "Snapshot created successfully at $BACKUP_DIR/$BACKUP_NAME"

#!/bin/bash

# Define folder locations
PROJECT_DIR="$HOME/linux-practice/Linux-notes"
SOURCE_DIR="$PROJECT_DIR/sample-data"
BACKUP_DIR="$PROJECT_DIR/backups"
LOG_FILE="$PROJECT_DIR/backup.log"

# Create backup folder if it does not exist
mkdir -p "$BACKUP_DIR"

# Generate the current date and time
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Define the backup filename
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.zip"

# Check if the source folder exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') FAILED Source folder missing" >> "$LOG_FILE"
    exit 1
fi

# Create the ZIP backup
if (cd "$PROJECT_DIR" && zip -rq "$BACKUP_FILE" sample-data); then
    echo "Backup completed successfully!"
    echo "$(date '+%Y-%m-%d %H:%M:%S') SUCCESS $BACKUP_FILE" >> "$LOG_FILE"
else
    echo "Backup failed!"
    echo "$(date '+%Y-%m-%d %H:%M:%S') FAILED $BACKUP_FILE" >> "$LOG_FILE"
    exit 1
fi

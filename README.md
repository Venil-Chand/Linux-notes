## Linux Backup Automation

This project includes a Bash script that creates
automatic ZIP backups of a sample folder.

### Features
- Creates timestamped ZIP backup files
- Records successful and failed backup attempts
- Stores backup files in the backups directory
- Uses a log file to record backup activity

### Running the Script

1. Make sure ZIP is installed.
2. Open the Linux-notes project directory.
3. Run the following commands:

chmod u+x scripts/backup.sh
./scripts/backup.sh

### Testing the Backup

unzip -t backups/*.zip

### Security

Generated backup archives and log files are
excluded from GitHub using .gitignore.# Linux-notes

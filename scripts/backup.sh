
#!/bin/bash

BACKUP_DIR="$HOME/backups"

if [ "$EUID" -eq 0 ] && [ -n "$SUDO_USER" ]; then
    BACKUP_DIR="/home/$SUDO_USER/backups"
fi
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$BACKUP_DIR"

echo "======================================"
echo "Linux Server Backup"
echo "======================================"

tar -czf "$BACKUP_DIR/etc-backup-$DATE.tar.gz" /etc

if [ $? -eq 0 ]; then
    echo
    echo "Backup completed successfully!"
    echo "Backup saved to:"
    echo "$BACKUP_DIR/etc-backup-$DATE.tar.gz"
    echo "======================================"
else
    echo
    echo "Backup failed!"
    echo "======================================"
fi

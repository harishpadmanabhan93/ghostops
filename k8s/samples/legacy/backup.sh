#!/bin/sh
# sample legacy backup script
mkdir -p /tmp/backups
tar -czf /tmp/backups/backup-$(date +%F).tgz /var/data
echo "backup complete"


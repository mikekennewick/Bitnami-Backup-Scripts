#!/bin/sh

# Backup wordpress and all associated files and databases.
# Bitnami full backup instructions https://docs.bitnami.com/aws/apps/wordpress/#backup

# Stop all services
echo "Stopping Services"
/opt/bitnami/ctlscript.sh stop

# Compress entire directory
echo "Compressing directory /opt/bitnami"
tar -pczvf /backup/wordpress/full-application-backup-$(date +"%m-%d-%y-%T").tar.gz /opt/bitnami

# Restart all services
echo "Starting Services"
/opt/bitnami/ctlscript.sh start

echo "Backup complete at /backup/wordpress/full-application-backup*.tar.gz"
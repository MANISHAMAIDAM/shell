#!/bin/bash
archive=$(tar -czf backup_$(date +%F-%H-%M-%S).tar.gz /home/ec2-user/)
echo "Backup completed: backup_$(date +%F-%H-%M-%S).tar.gz"
mv $archive /tmp/app-logs/


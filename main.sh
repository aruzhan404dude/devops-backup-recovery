#!/bin/bash
PROJECT_DIR="$HOME/devops_backup_project"
SCRIPTS_DIR="$PROJECT_DIR/scripts"

echo "=================================================="
echo " DevOps Backup and Recovery System"
echo "=================================================="
echo "1. Create Backup"
echo "2. Restore Backup"
echo "3. Show Backup Files"
echo "4. Exit"
echo "=================================================="

read -p "Select an option: " choice

case $choice in 
   1) 
        bash "$SCRIPTS_DIR /backup.sh"
        ;;
   2)
        bash "$SCRIPTS_DIR/restore.sh"
        ;;
   3)
        echo "Available backups:"
        ls -lh "$PRPJECT_DIR/backups:"
        ;;
   4)
       echo  "Program finished."
       exit 0
       ;;
   *)
       echo "Invalid option."
       ;;
esac
   

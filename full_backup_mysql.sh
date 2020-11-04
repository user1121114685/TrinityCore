/usr/bin/mysqldump --all-databases --single-transaction --quick --lock-tables=false > /mnt/sdb/mysql/TDB335_full_backup_$(date "+%Y%m%d%H%M%S").sql

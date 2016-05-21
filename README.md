# Backup

rsnapshot based backup of docker/dokku based applications. Setup to backup a remote data directory and run a database backup command.

### Configuration

Example configuration file: ```./config/user/my-site```

```
SERVER_HOST=mysite.com
SERVER_USER=root
DB_BACKUP_CMD="dokku mongo:export keystone-db"
DB_BACKUP_FILENAME=db.dump
DATA_LOCATION_REMOTE=/var/lib/dokku/data/keystone/
```

This configuration would be backed up to:  
**Data:** ```./backups/[perioid]/my-site/data/```  
**Database** ```./backups/[perioid]/my-site/db/```

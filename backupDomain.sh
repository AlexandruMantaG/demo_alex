DOMAIN_HOME=/u01/app/oracle/product/j2ee/user_projects/domains/wls_domain
BACKUP_HOME=/u01/app/oracle/product/j2ee/backup
SUFFIX=`date +"%N%M%H-%d%m%y"`
FILENAME=domainConfigBackup-$SUFFIX.tar.gz

cd $DOMAIN_HOME
tar --exclude 'config/deployments/*' -cz config -f $BACKUP_HOME/$FILENAME

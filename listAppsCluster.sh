. ~/setenv.sh
. $DOMAIN_HOME/bin/setDomainEnv.sh
cd

echo "Enter cluster name:"
read clusterName
export clusterName

#echo "This script will get info from cluster '$clusterName' (y/n)"
#read response
#if [ "$response" != 'y' ]; then
#  echo Get info cancelled
#  exit
#fi

/u01/app/java/bin/java weblogic.WLST /home/oracle/wlstscripts/listAppsCluster.py

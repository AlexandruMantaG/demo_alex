. ~/setenv.sh
. $DOMAIN_HOME/bin/setDomainEnv.sh
cd

echo "Enter cluster name:"
read clusterName
export clusterName

echo "This script will start cluster '$clusterName' (y/n)"
read response
if [ "$response" != 'y' ]; then
  echo Start cancelled
  exit
fi

/u01/app/java/bin/java weblogic.WLST /home/oracle/wlstscripts/startCluster.py

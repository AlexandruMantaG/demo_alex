export ACTIVE_ADM_NODE=yes
ADM_SERVER_NAME=wlsadmin-test.emea.eu.int
export ORACLE_HOME=/u01/app/oracle/product/j2ee
export ADM_SERVER_PORT=1810
export NM_PORT=5556
export DOMAIN_NAME=wls_domain
export ADMIN_SERVER="AdminServer"

export DOMAIN_HOME=$ORACLE_HOME/user_projects/domains/$DOMAIN_NAME
export ADM_SVR_URL=t3://$ADM_SERVER_NAME:$ADM_SERVER_PORT

if [ $ACTIVE_ADM_NODE = yes ]
then
  echo "WARNING: this node is considered as administrator, AdminServer will be started/stopped in this box"
fi

export PATH=/home/oracle:$ORACLE_HOME/wlserver_10.3/server/bin:$DOMAIN_HOME:$PATH

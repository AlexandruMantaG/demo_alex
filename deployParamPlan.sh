export earFile=`find $PWD -name "*.ear"`
if [ "$earFile" = '' ]; then
  export earFile=`find $PWD -name "*.war"`
fi

export planFile=`find $PWD -name "*.xml"`

. ~/setenv.sh
. $DOMAIN_HOME/bin/setDomainEnv.sh
cd

echo "Enter application name:"
read appName
export appName

echo "Enter cluster name:"
read clusterName
export clusterName

echo "default EAR/WAR location is $earFile, press enter to keep it:" 
read earFileTemp
if [ ! -z "$earFileTemp" -a "$earFileTemp" != " " ]; then
  export earFile=$earFileTemp
fi

echo "default Plan location is $planFile, press enter to keep it:"
read planFileTemp
if [ ! -z "$planFileTemp" -a "$planFileTemp" != " " ]; then
  export planFile=$planFileTemp
fi

echo "This script will deploy application '$appName' on cluster '$clusterName' contained in '$earFile' with plan '$planFile' (y/n)"
read response
if [ "$response" != 'y' ]; then
  echo Deployment cancelled
  exit
fi

/u01/app/java/bin/java weblogic.WLST /home/oracle/wlstscripts/deployParamPlan.py

export STATUS_FILE=$HOME/weblogic.status
export STOPALL="yes"

mv $STATUS_FILE $STATUS_FILE.old

. $HOME/setenv.sh
. $DOMAIN_HOME/bin/setDomainEnv.sh

echo Stopping Oracle WLS, check $STATUS_FILE to see current status
java weblogic.WLST $HOME/stopAllWeblogic.py > /dev/null
echo Displaying status file
cat $STATUS_FILE

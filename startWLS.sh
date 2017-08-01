export STATUS_FILE=$HOME/weblogic.status
export STARTALL="yes"

mv $STATUS_FILE $STATUS_FILE.old

. $HOME/setenv.sh
. $DOMAIN_HOME/bin/setDomainEnv.sh

echo Starting Oracle WLS, this can take long time depending on number of servers check $STATUS_FILE to see current status
java weblogic.WLST $HOME/startAllWeblogic.py  > /dev/null
echo Displaying status file
cat $STATUS_FILE

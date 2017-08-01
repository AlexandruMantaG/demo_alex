. $HOME/setenv.sh
. $DOMAIN_HOME/bin/setDomainEnv.sh
export STARTALL=no
export STATUS_FILE=$HOME/weblogicAdmin.status

mv $STATUS_FILE $STATUS_FILE.old

echo Starting Oracle WLS admin part, this can take long time check $STATUS_FILE to see current status
java weblogic.WLST $HOME/startAllWeblogic.py  > /dev/null
echo Displaying status file
cat $STATUS_FILE

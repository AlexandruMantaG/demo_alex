export AGENT_HOME=/u01/app/oracle/product/12c/agent
$AGENT_HOME/bin/emctl stop agent

rm -r $AGENT_HOME/sysman/log/*.*
rm -r $AGENT_HOME/sysman/emd/state/*
rm -r $AGENT_HOME/sysman/emd/upload/*
rm $AGENT_HOME/sysman/emd/lastupld.xml
#rm $AGENT_HOME/sysman/emd/agntstmp.txt
rm $AGENT_HOME/sysman/emd/blackouts.xml
rm $AGENT_HOME/sysman/emd/protocol.ini

$AGENT_HOME/bin/emctl start agent
$AGENT_HOME/bin/emctl clearstate agent
$AGENT_HOME/bin/emctl upload

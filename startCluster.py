clusterName = os.getenv("clusterName")

print '*** WEBLOGIC : START ***'
print 'connecting to admin server....'
connect( userConfigFile='/home/oracle/oracle-WebLogicConfig.properties',userKeyFile='/home/oracle/oracle-WebLogicKey.properties',url='t3://localhost:1810' )

start(clusterName,'Cluster')
print 'disconnecting from admin server....'
disconnect()
exit()
print '*** WEBLOGIC : STOP ***'

appName = os.getenv("appName")
clusterName = os.getenv("clusterName")
earFile = os.getenv("earFile")
planFile = os.getenv("planFile")

print '*** WEBLOGIC : START ***'
print 'connecting to admin server....'
connect( userConfigFile='/home/oracle/oracle-WebLogicConfig.properties',userKeyFile='/home/oracle/oracle-WebLogicKey.properties',url='t3://localhost:1810' )
# Undeploying
edit()
startEdit()
print 'stopping and undeploying ....'
stopApplication(appName)
undeploy(appName)
save()
activate()
# Deploying
edit()
startEdit()
print 'deploying....'
deploy(appName, earFile, targets=clusterName, planPath=planFile, upload='true')
save()
activate()
# Restarting
shutdown(clusterName,'Cluster',force='true')
start(clusterName,'Cluster')
startApplication(appName)
print 'disconnecting from admin server....'
disconnect()
exit()
#print '*** WEBLOGIC : STOP ***'

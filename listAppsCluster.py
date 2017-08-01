clusterName = os.getenv("clusterName")

connect( userConfigFile='/home/oracle/oracle-WebLogicConfig.properties',userKeyFile='/home/oracle/oracle-WebLogicKey.properties',url='t3://localhost:1810' )

domainConfig()
apps=cmo.getAppDeployments()
for app in apps:
  appName=app.getName()
  targets=app.getTargets()
  for target in targets:
    if target.getName() == clusterName:
      print '--------------------------------------'
      print target.getName() + ' hosts: ' + appName
      print '--------------------------------------'

disconnect()
exit()
print '*** WEBLOGIC : STOP ***'

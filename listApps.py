clusterName = os.getenv("clusterName")

connect( userConfigFile='/home/oracle/oracle-WebLogicConfig.properties',userKeyFile='/home/oracle/oracle-WebLogicKey.properties',url='t3://localhost:1810' )

domainConfig()
apps=cmo.getAppDeployments()
for app in apps:
  print app.getName()

disconnect()
exit()
print '*** WEBLOGIC : STOP ***'

print '*** WEBLOGIC : START ***'
print 'connecting to admin server....'
connect( 'weblogic', 'Adm1n3471', 't3://localhost:1810', adminServerName='AdminServer' )
# Undeploying
edit()
startEdit()
print 'stopping and undeploying ....'
stopApplication('eudraportalApplication')
undeploy('eudraportalApplication')
save()
activate()
# Deploying
edit()
startEdit()
print 'deploying....'
deploy('eudraportalApplication', '/home/oracle/eudraportalApplication_test.ear', targets='eudraportal',upload='true')
save()
activate()
# Restarting
shutdown('eudraportal','Cluster')
start('eudraportal','Cluster')
startApplication('eudraportalApplication')
print 'disconnecting from admin server....'
disconnect()
exit()
print '*** WEBLOGIC : STOP ***'

. /home/oracle/setenv.sh

MACHINE=`echo $HOSTNAME | awk -F. '{print $1}'`
FILE=/home/oracle/logs/logs_$MACHINE/specs.txt
WEBLOGIC=/home/oracle/weblogic.txt

if [ "$DOMAIN_HOME" != "" ];then
  . $DOMAIN_HOME/bin/setDomainEnv.sh
else
  . $MSERVER_DOMAIN_HOME/bin/setDomainEnv.sh
fi
java weblogic.version > $WEBLOGIC

WLS_VERSION=`sed -n 3p $WEBLOGIC`

echo "#########################################" > $FILE
hostname >> $FILE
echo "#########################################" >> $FILE
echo "Number of CPUs and model name" >> $FILE
cat /proc/cpuinfo | grep "model name" >> $FILE
echo "#########################################" >> $FILE
echo "RAM size" >> $FILE
grep MemTotal /proc/meminfo >> $FILE
echo "#########################################" >> $FILE
echo "Swap space" >> $FILE
grep SwapTotal /proc/meminfo >> $FILE
echo "#########################################" >> $FILE
echo "OS version (x86_64 means 64 bit)" >> $FILE
cat /etc/issue >> $FILE
uname -m >> $FILE
echo "#########################################" >> $FILE
echo "JVM version" >> $FILE
/u01/app/java/bin/java -version 2>> $FILE
echo "#########################################" >> $FILE
echo "WebLogic version" >> $FILE
if [ "$WLS_VERSION" != "" ]; then
  echo $WLS_VERSION >> $FILE
else
  sed -n 2p $WEBLOGIC >> $FILE
fi

echo "#########################################" >> $FILE
echo "" >> $FILE
echo "Updated on:" `date` >> $FILE

#!/bin/sh


  port_shutdown="8005"
  port_http="80"
  port_https="443"

export CATALINA_OPTS="  ${SYSTEM_PROPS} -d64 -server -Xms512M -Xmx512M \
 -XX:+UseCodeCacheFlushing -XX:ReservedCodeCacheSize=64M \
 -XX:+HeapDumpOnOutOfMemoryError -XX:MaxPermSize=512M \
 -Dport.http=${port_http} -Dport.https=${port_https} -Dport.shutdown=${port_shutdown}"

exec /usr/local/tomcat/bin/catalina.sh run
#exec /usr/bin/authbind --deep /usr/local/tomcat/bin/catalina.sh run


FROM tomcat:8.5-jre8 
ADD ./ssl /usr/local/tomcat/ssl
ADD ./server.xml /usr/local/tomcat/conf/server.xml 
ADD ./start.port.sh /usr/local/tomcat/bin/start.port.sh
RUN chmod +x /usr/local/tomcat/bin/start.port.sh
#RUN apt-get update -y && apt-get install authbind -y
#RUN touch /etc/authbind/byport/80 && \
#chmod 755 /etc/authbind/byport/80 && \
#chown www-data /etc/authbind/byport/80 
#RUN touch /etc/authbind/byport/443 && \
#chmod 755 /etc/authbind/byport/443 && \
#chown www-data /etc/authbind/byport/443
#RUN chown -R www-data /usr/local/tomcat
#USER www-data
CMD /usr/local/tomcat/bin/start.port.sh

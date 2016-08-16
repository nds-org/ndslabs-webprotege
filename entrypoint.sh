#!/bin/bash

FILE="/usr/local/tomcat/webapps/ROOT/WEB-INF/classes/webprotege.properties"
cp $FILE $FILE.bak
#sed -i $FILE "s/application.host=localhost/application.host=l/"
sed --in-place "s/#mongodb.host=localhost/mongodb.host=$MONGO_PORT_27017_TCP_ADDR/" $FILE           
sed --in-place "s/#mongodb.port=localhost/mongodb.port=$MONGO_PORT_27017_TCP_PORT/" $FILE           
sed --in-place "s/mail.smtp.host.*/mail.smpt.host=$SMTP_HOST/" $FILE     

catalina.sh run

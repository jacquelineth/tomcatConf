set CATALINA_HOME=C:\DevTools\apache-tomcat-7.0.67
set JAVA_HOME=C:\jdk1.8.0_66
rem 64-Bit Server VM warning: ignoring option MaxPermSize=512m; support was removed in 8.0
set JAVA_OPTS= -server -Xms256m -Xmx1024m  	-Dcom.sun.management.jmxremote.password.file=%CATALINA_BASE%\conf\jmxremote.password -Dcom.sun.management.jmxremote.access.file=%CATALINA_BASE%\conf\jmxremote.access -Dcom.sun.management.jmxremote.ssl=false
set CATLINA_OPTS= -d64 

set CATALINA_HOME=C:\DevTools\apache-tomcat-7.0.65
set JAVA_HOME=C:\jdk1.7.0_60
set ODM87_HOME=C:\IBM\ODM871
set CATLINA_OPTS= -d64 -DODM87.home=%ODM87_HOME% -DCatalina.base=%CATALINA_BASE%
set JAVA_OPTS= -server -Xms256m -Xmx1024m -XX:MaxPermSize=512m 	-Dcom.sun.management.jmxremote.password.file=%CATALINA_BASE%\conf\jmxremote.password -Dcom.sun.management.jmxremote.access.file=%CATALINA_BASE%\conf\jmxremote.access -Dcom.sun.management.jmxremote.ssl=false

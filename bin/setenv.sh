# Should be evaluated by startup bash
# export CATALINA_HOME=/Users/thierry/Coding/DevTools/apache-tomcat-7.0.65
# export JRE_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_05.jdk/Contents/Home
# however you may still define CATALINA_BASE
# export CATALINA_BASE=/Users/thierry/Projects/PMR/ODM86DC/tomcat
export CATLINA_OPTS="-d64  -DCatalina.base=$CATALINA_BASE"
export JAVA_OPTS="-server -Xms256m -Xmx1024m -XX:MaxPermSize=512m 	-Dcom.sun.management.jmxremote.password.file=$CATALINA_BASE/conf/jmxremote.password -Dcom.sun.management.jmxremote.access.file=$CATALINA_BASE/conf/jmxremote.access -Dcom.sun.management.jmxremote.ssl=false "


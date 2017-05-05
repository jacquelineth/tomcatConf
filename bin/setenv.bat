REM Adjust these variables
echo off
set CATALINA_HOME=C:\DevTools\apache-tomcat-8.0.41
set JAVA_HOME=C:\jdk1.8.0_121
set ODM_HOME=C:\IBM\ODM89
set PATH=.;%JAVA_HOME%\bin;%CATALINA_HOME%\bin;C:\Windows\System32;C:\Windows\System


REM Computed
set CATALINA_BASE=%~dp0%..
set platform=tomcat8
set executionserver.home=%ODM_HOME%\executionserver
set executionserver.home.tomcat=%executionserver.home%\applicationservers\%platform%
set teamserver.home=%ODM_HOME%\teamserver
set teamserver.home.tomcat=%teamserver.home%\applicationservers\%platform%

REM Hidden feature ref http://wiki.francelab.fr.ibm.com/bin/view/Lab/Rules/HiddenDebuggingFeatures
set RTS_OPTS= -Dilog.rules.teamserver.sync.debug=true 

rem 64-Bit Server VM warning: ignoring option MaxPermSize=512m; support was removed in 8.0
set JAVA_OPTS= -server -Xms1024m -Xmx4096m   -Dteamserver.home.tomcat=%teamserver.home.tomcat% -Dexecutionserver.home.tomcat=%executionserver.home.tomcat%	-Dcom.sun.management.jmxremote.password.file=%CATALINA_BASE%\conf\jmxremote.password -Dcom.sun.management.jmxremote.access.file=%CATALINA_BASE%\conf\jmxremote.access -Dcom.sun.management.jmxremote.ssl=false %RTS_OPTS%
set CATLINA_OPTS= -d64

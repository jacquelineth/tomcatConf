set ODM_HOME=C:\IBM\ODM88
set ANT_HOME=%ODM_HOME%\shared\tools\ant
set executionserver.home=%ODM_HOME%\executionserver

set CATALINA_BASE=%~dp0%..

set JAVA_HOME=C:\jdk1.8.0_66

set PATH=%PATH%;%ANT_HOME%\bin;%JAVA_HOME%\bin



ant  -v -Dxu.config.in=ra.xml -Dxu.config.out="..\webapps88\DecisionService\WEB-INF\classes\ra.xml"   -Dconsole.war.in="%ODM_HOME%\executionserver\applicationservers\tomcat7\res.war" -Dconsole.war.out="%CATALINA_BASE%\webapps88\res.war" -Dpersistence.type=datasource -Dpersistence.datasource.jndi="jdbc/resdatasource" -Dxom.persistence.type=datasource -Dxom.persistence.datasource.jndi="jdbc/resdatasource" -Dmanagement.protocol=tcpip -Dmanagement.protocol.tcpip.timeout=10 -Dmanagement.protocol.tcpip.port=1883 -Dexecutionserver.home=%ODM_HOME%\executionserver -f ressetup.xml setup

REM ant  -v -d -Dxu.config.in=ra.xml -Dxu.config.out="newra.xml" -Dconsole.war.in="%ODM_HOME%\executionserver\applicationservers\tomcat7\res.war" -Dconsole.war.out="res.war"  -Dmanagement.protocol=tcpip -Dmanagement.protocol.tcpip.timeout=10 -Dmanagement.protocol.tcpip.port=1883 -Dexecutionserver.home=%ODM_HOME%\executionserver -f ressetup.xml setup

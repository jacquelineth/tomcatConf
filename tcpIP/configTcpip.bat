CALL ..\bin\setenv.bat
echo on

set ANT_HOME=%ODM_HOME%\shared\tools\ant



set PATH=.;%ANT_HOME%\bin;%PATH%

ant  -v -Dxu.config.in=ra.xml -Dxu.config.out="..\webapps89\ra.xml"   -Dconsole.war.in="%ODM_HOME%\executionserver\applicationservers\tomcat8\resTCP.war" -Dconsole.war.out="%CATALINA_BASE%\webapps89\resTCP.war" -Dpersistence.type=datasource -Dpersistence.datasource.jndi="jdbc/resdatasource" -Dxom.persistence.type=datasource -Dxom.persistence.datasource.jndi="jdbc/resdatasource" -Dmanagement.protocol=tcpip -Dmanagement.protocol.tcpip.timeout=10 -Dmanagement.protocol.tcpip.port=1883 -Dexecutionserver.home=%ODM_HOME%\executionserver -f ressetup.xml setup

REM ant  -v -d -Dxu.config.in=ra.xml -Dxu.config.out="newra.xml" -Dconsole.war.in="%ODM_HOME%\executionserver\applicationservers\tomcat7\res.war" -Dconsole.war.out="res.war"  -Dmanagement.protocol=tcpip -Dmanagement.protocol.tcpip.timeout=10 -Dmanagement.protocol.tcpip.port=1883 -Dexecutionserver.home=%ODM_HOME%\executionserver -f ressetup.xml setup

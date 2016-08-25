# Tomcat configurations for ODM


 ## Based out **Tomcat**   CATALINA_BASE feature , this project intent to provide various configuration (branches), in a ready to boot set-up.
 
  The main idea is to not have to deploy/copy any WARS, but use CATALINA_BASE and ODM_HOME to retrieve required WARS at startup. Refer to Tomcat [RUNNING.txt](http://tomcat.apache.org/tomcat-7.0-doc/RUNNING.txt) for more information on this feature.

### Install

- Download Tomcat 7 once, from [Apache](http://tomcat.apache.org/download-70.cgi)
  - Unzip in a folder that would be the new CATALINA_HOME
- Recommended to add  JMX support with additional  [catalina-jmx-remote.jar](http://ftp.cixug.es/apache/tomcat/tomcat-7/v7.0.67/bin/extras/catalina-jmx-remote.jar)
 - Alternatively to remove this feature uncomment  in  repository's conf/server.xml the `<Listener className="org.apache.catalina.mbeans.JmxRemoteLifecycleListener" rmiRegistryPortPlatform="10001" rmiServerPortPlatform="10002" />` and adjust the setenv.bat `JAVA_OPTS` to remove any JMX related properties 
- Unzip or clone this repository branch
 - Edit bin/setenv.bat to adjust `CATALINA_HOME`  , `JAVA_HOME` , `ODM_HOME` .


### Start & stop
- Use bin startup.sh or startup.bat according to your environment
- Stop with shutdwon.bat
- To reset the environment use clean.bat

### Fine tune

- Edit conf/server.xml
  - to turn on/off the auto deployment of WARs attributes :`autoDeploy="true" deployOnStartup="true" `
  - and  conf/ subfolders to adjust your deployed WAR files location in `docBase` attribute.
  - you may also adjust the JDBC driver in each deployment XML


### TCP/IP Mode

Two approaches, zeroconf or permanent. Although created for ODM88 branch, just changing `ODM_HOME` is sufficient.
#### zeroconf
By default conf/Catalina/localhost/res.xml, will overwrite the `management.protocol` to **tcpip**
#### Permanent
A new folder ***tcpIP*** provides a batch file (**configTcpip.bat**) to generate the new res.war file which will be deployed in *webapps88*. Set the ODM Home, and modify the default tcip property if required
Then in your DecisionService or any XU you must update the ra.xml's plugin definition with 

    {pluginClass=Management,xuName=default,protocol=tcpip,tcpip.port=1883,tcpip.host=localhost,tcpip.retryInterval=2000}


### LDAP 
Branch ODM88_LDAP contains a modified conf/server.xml, with 2 realms, default file-based and LDAP with `commonRole` to set a rtsUser role to any authenticated.



### Configured Database
The configured DB is embedded Derby stored in /data, other JDBC jars should be added in /lib.
There is also a setup to use Derby Network server with startDeby.bat/stopDerby.bat, adjust the datasource definition accordingly.


To know more on ODM : [ODM site](http://www-03.ibm.com/software/products/en/category/operational-decision-management)
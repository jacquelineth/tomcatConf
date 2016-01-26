##Tomcat configurations for ODM
============

Based out **Tomcat**  CATALINA_HOME & CATALINA_BASE, this project intent to provide various configuration (branches), in a ready to boot set-up. Refer to Tomcat RUNNING.txt

- Download Tomcat 7 from [Apache](http://tomcat.apache.org/download-70.cgi)
  - Unzip in a folder that would be the new CATALINA_HOME
- Edit bin/setenv.bat to set your CATALINA_HOME  and JAVA_HOME .
- Edit conf/server.xml
  - to turn on/off the auto deployment of WARs
  - and  conf/ subfolders to adjust your deployed WAR files location in docBase attribute.
  - you may also adjust the JDBC driver in each deployment XML

Start & stop
- Use bin startup.sh or startup.bat according to your environment
- Stop with shutdwon.bat
- To reset the environment use clean.bat


You must provide ODM WARs location, and adapt WARs path in the context.xml docBase.
The default DB is embedded Derby with /data  , other JDBC jars should be added in /lib.
There is also a setup to use Derby Network server with startDeby.bat/stopDerby.bat


To know more on JRules/ODM : [ODM site](http://www-03.ibm.com/software/products/en/category/operational-decision-management)

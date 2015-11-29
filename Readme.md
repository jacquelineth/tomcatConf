##Tomcat configurations for ODM
============

Based out **Tomcat**  CATALINA_HOME & CATALINA_BASE, this project intent to provide various configuration (branches), in a ready to boot set-up. Refer to Tomcat RUNNING.txt

- Edit bin/setenv.bat to set your CATALINA_HOME  and JAVA_HOME .
- Edit conf/server.xml
  - to turn on/off the auto deployment of WARs
  - and  conf/subfolders to adjust your deployed WAR file location in docBase
  

You must provide ODM WARs location, and adapt WARs path in the context.xml docBase.
The default DB is Derby, the JDBC jars should be set in /lib.

To know more on JRules/ODM : [ODM site](http://www-03.ibm.com/software/products/en/category/operational-decision-management)
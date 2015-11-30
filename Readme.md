## Tomcat configurations for ODM
============

Based out **Tomcat**  ( with CATALINA_HOME & CATALINA_BASE) multiple instances , this project intent to provide various configuration (branches), in a ready to boot set-up. Refer to Tomcat RUNNING.txt

- Edit bin/setenv.bat to set your CATALINA_HOME  and JAVA_HOME .
- Edit conf/server.xml
  - to turn on/off the auto deployment (**autodeploy**) of WARs
    - `<Host name="127.0.0.1"  appBase="webapps88" unpackWARs="false" autoDeploy="true" deployOnStartup="false">`
- and  conf/subfolders to adjust your deployed WAR file location in docBase
  - `<Context docBase="C:\IBM\ODM86\teamserver\applicationservers\tomcat\teamserver.war"  reloadable="true"> `
  

You must provide ODM WARs location, and adapt WARs path in the `<context>` docBase property. If you want to deploy to the webAppsXX just set the docBase to the WAR filename.
The default DB is Derby, the JDBC jars should be added in /lib.

To know more on JRules/ODM : [ODM site](http://www-03.ibm.com/software/products/en/category/operational-decision-management)
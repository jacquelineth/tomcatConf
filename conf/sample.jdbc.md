# Derby
## Network 
    driverClassName="org.apache.derby.jdbc.ClientDriver" 
    url="jdbc:derby://localhost:1527/rtsDb89;create=true;traceFile=trace.out;traceLevel=2;traceDirectory=../logs"
## Embedded
    driverClassName="org.apache.derby.jdbc.EmbeddedDriver" 
    url="jdbc:derby:C:/Cases/JRules/tomcat88/data/rtsdb88;create=true"

# H2
## Network
    driverClassName="org.h2.Driver"
    URL: jdbc:h2:tcp://localhost/~/test
    URL: jdbc:h2:tcp://localhost/D:/DB/PMR07958/H3rtsdb
## Embedded 
    driverClassName="org.h2.Driver"
    url="jdbc:h2:file:C:/Cases/Florian/PMR51121/rtsdb"

# Postgres
## Network
    driverClassName="org.postgresql.Driver"
    url="jdbc:postgresql://<host>:<port>/<database_name>"

The default port for PostgreSQL is 5432. Usually, if the default port is being used by the database server, the :\<port> value of the JDBC url can be omitted.
"


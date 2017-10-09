CALL %~dp0%setenv.bat
set H2_HOME=C:\DevTools\H2
set PATH=%H2_HOME%\bin;%JAVA_HOME%\bin;C:\Windows\System;C:\Windows\System32
java -cp %H2_HOME%\bin\h2-1.3.176.jar org.h2.tools.Server -tcpShutdown tcp://localhost
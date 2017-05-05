echo off
CALL %~dp0%setenv.bat
set DERBY_HOME=C:\DevTools\apache-derby-10.12
set PATH=%DERBY_HOME%\bin;%JAVA_HOME%\bin;C:\Windows\System;C:\Windows\System32
Call %DERBY_HOME%\bin\setNetworkServerCP.bat
java -jar %DERBY_HOME%\lib\derbyrun.jar server start
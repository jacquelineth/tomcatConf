CALL %~dp0%setenv.bat
set DERBY_HOME=C:\DevTools\apache-derby-10.10
set PATH=%DERBY_HOME%\bin;%PATH%
java -jar %DERBY_HOME%\lib\derbyrun.jar server shutdown
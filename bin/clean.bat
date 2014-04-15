

set "CURRENT_DIR=%cd%"
echo %CURRENT_DIR%
set CATALINA_BASE=%~dp0%..
echo CATALINA_BASE=%CATALINA_BASE%
pushd %CATALINA_BASE%
rmdir /S /Q logs
rmdir /S /Q  temp
rmdir /S /Q  work
mkdir logs temp work
popd

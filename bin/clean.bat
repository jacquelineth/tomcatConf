@echo off
if "%OS%" == "Windows_NT" setlocal

set "CURRENT_DIR=%cd%"
rem echo %CURRENT_DIR%
set CATALINA_BASE=%~dp0%..
echo processing wtih CATALINA_BASE=%CATALINA_BASE%
pushd %CATALINA_BASE%
rmdir /S /Q logs
rmdir /S /Q  temp
rmdir /S /Q  work
mkdir logs temp work
echo Cleaned logs temp work

if ""%1"" == """" goto noData
rmdir /S /Q data
mkdir data
echo Cleaned data
:noData
popd

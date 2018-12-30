@ echo off
setlocal

set NODEJS=%~dp0..\..\
set NODE_PATH=%NODEJS%node_modules

cd %~dp0

echo tsc: WebBuilder
"%NODEJS%node.exe" %NODE_PATH%\typescript\lib\tsc.js -p src\tsconfig.json
if errorlevel 1 goto done

echo tslint: WebBuilder
"%NODEJS%node.exe" %NODE_PATH%\tslint\lib\tslint-cli --project src

:done

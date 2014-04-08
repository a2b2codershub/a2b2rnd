@ECHO off

REM This batch file will SET the environment variables, do a clean-build of the project.
REM This batch file expects "deploy_release_qt5.bat" to be in the same path.

set PATH=C:\Qt\Qt5.2.0\5.2.0\mingw48_32\bin;C:\Qt\Qt5.2.0\Tools\mingw48_32\bin;%PATH%

RMDIR /s /q ..\out\release

qmake.exe VLibrarian.pro -r -spec win32-g++ "CONFIG+=release"
mingw32-make.exe clean
mingw32-make.exe

SET errorcode=%ERRORLEVEL%

cd ../project
CALL deploy_release_qt5.bat

IF %errorcode%==0 ECHO Project built successfully.
IF NOT %errorcode%==0 (
ECHO Failed to build project.
PAUSE
)

cd ..\project

EXIT /B %errorcode%




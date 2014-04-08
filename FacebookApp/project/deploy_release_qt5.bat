@ECHO off
REM This batch file will copy all the necessary dlls to "out\release\bin" folder

SET QTDIR=C:\Qt\Qt5.2.0\5.2.0\mingw48_32
SET PATH=%QTDIR%\bin;%PATH%

CD ..\out\release\bin

IF EXIST Qt5Core.dll DEL Qt5Core.dll
COPY %QTDIR%\bin\Qt5Core.dll .

IF EXIST Qt5Gui.dll DEL Qt5Gui.dll
COPY %QTDIR%\bin\Qt5Gui.dll .

IF EXIST Qt5Xml.dll DEL Qt5Xml.dll
COPY %QTDIR%\bin\Qt5Xml.dll .

IF EXIST Qt5Network.dll DEL Qt5Network.dll
COPY %QTDIR%\bin\Qt5Network.dll .

IF EXIST Qt5Widgets.dll DEL Qt5Widgets.dll
COPY %QTDIR%\bin\Qt5Widgets.dll .

IF EXIST libgcc_s_dw2-1.dll DEL libgcc_s_dw2-1.dll
COPY %QTDIR%\bin\libgcc_s_dw2-1.dll .

IF EXIST libwinpthread-1.dll DEL libwinpthread-1.dll
COPY %QTDIR%\bin\libwinpthread-1.dll .

IF EXIST libstdc++-6.dll DEL libstdc++-6.dll
COPY "%QTDIR%\bin\libstdc++-6.dll" .

IF EXIST icuin51.dll DEL icuin51.dll
COPY "%QTDIR%\bin\icuin51.dll" .

IF EXIST icuuc51.dll DEL icuuc51.dll
COPY "%QTDIR%\bin\icuuc51.dll" .

IF EXIST icudt51.dll DEL icudt51.dll
COPY "%QTDIR%\bin\icudt51.dll" .

IF NOT EXIST .\imageformats MKDIR .\imageformats 
COPY %QTDIR%\plugins\imageformats\qgIF.dll .\imageformats
COPY %QTDIR%\plugins\imageformats\qico.dll .\imageformats
COPY %QTDIR%\plugins\imageformats\qjpeg.dll .\imageformats
COPY %QTDIR%\plugins\imageformats\qmng.dll .\imageformats
COPY %QTDIR%\plugins\imageformats\qsvg.dll .\imageformats
COPY %QTDIR%\plugins\imageformats\qtga.dll .\imageformats
COPY %QTDIR%\plugins\imageformats\qtIFf.dll .\imageformats

IF NOT EXIST .\platforms MKDIR .\platforms
COPY %QTDIR%\plugins\platforms\qminimal.dll .\platforms
COPY %QTDIR%\plugins\platforms\qwindows.dll .\platforms

COPY ..\..\..\resources\info.ini .

CD ..\..\..\project


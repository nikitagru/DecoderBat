@echo off
SetLocal
set x=%cd%

REM dir %cd%\* /b/s > filelist.txt
REM chcp 866> nul
REM REM for /F "delims=" %%a in (filelist.txt) do (
REM     chcp 65001> nul 
REM     echo.88.txt>c:\Users\gruni\Desktop\Projects\DecoderBatt\89.txt
REM REM )
for /f "tokens=*" %%i in (dir.txt) do (
    for /f "tokens=*" %%a in (%%i) do (
        set x=%%i
        call :convert %%a
    ) 
)


 
:convert 
chcp 65001 >nul
echo %* >> %x%.txt
chcp 866 >nul



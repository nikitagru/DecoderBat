@echo off
SetLocal
set x=%cd%

if exist %1 (
    dir %1 /b/s > filelist.txt 2>nul
REM chcp 866> nul
REM REM for /F "delims=" %%a in (filelist.txt) do (
REM     chcp 65001> nul 
REM     echo.88.txt>c:\Users\gruni\Desktop\Projects\DecoderBatt\89.txt
REM REM )
for /f "tokens=*" %%i in (filelist.txt) do (
    for /f "tokens=*" %%a in (%%i) do (
        set x=%%i
        call :convert %%a 2>nul
    )
    del %%i
)


) else (
    echo Error
)

:convert 
chcp 65001 >nul
echo %* >> %x%.txt 2>nul
chcp 866 >nul


ren %1\*.txt *. 2>nul
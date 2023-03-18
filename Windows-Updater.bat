@echo off
echo Hello there, this script will update your installed apps with Winget.
echo.
echo Some apps might not update due to having an unknown version or it updates directly from the app.
echo. 
winget update --include-unknown
echo.
echo These are the apps that can be updated
echo.
set /P answer=Do you want to update them? (Y/n)
if /I "%answer%" EQU "Y" goto yes
if /I "%answer%" EQU "n" goto no

:yes
echo Running the command...
Winget upgrade -h --all --include-unknown
echo Command executed successfully.
goto end

:no
echo Action cancelled.
goto end

:end
pause
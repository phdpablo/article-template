@echo off
setlocal

:: Use the parent directory's name as the project name
for %%i in ("%cd%\..") do set PROJECT_NAME=%%~ni

echo Stopping and removing the RStudio container for project '%PROJECT_NAME%'...
docker-compose -p %PROJECT_NAME% down
echo Environment stopped.

endlocal
exit /b 0
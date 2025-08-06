@echo off
setlocal

:: This script provides a "one-click" experience to start the RStudio environment on Windows.
:: It finds an available IP dynamically, sets up environment variables for Docker Compose,
:: starts the container, and opens RStudio in the default web browser.

:: Define the base IP
set "BASE_IP=127.0.0."
set "IP_SUFFIX=1"

:findip
:: Check if the current IP is in use
netstat -an | find "%BASE_IP%%IP_SUFFIX%:8787" > nul
if %errorlevel%==0 (
  echo IP %BASE_IP%%IP_SUFFIX% is in use, trying next IP...
  set /a IP_SUFFIX+=1
  goto findip
)

:: Set the found IP for docker-compose to use
set RSTUDIO_IP=%BASE_IP%%IP_SUFFIX%

:: Use the current directory's name as the project/container name for easy identification
for %%i in ("%cd%\..") do set PROJECT_NAME=%%~ni

echo Starting RStudio for project '%PROJECT_NAME%' on http://%RSTUDIO_IP%:8787

:: Start the services defined in docker-compose.yml in detached mode (in the background)
docker-compose -p %PROJECT_NAME% up -d

echo RStudio is getting ready. Opening in your browser in 5 seconds...
timeout /t 5 /nobreak > nul

:: Open the RStudio URL in the default browser
start http://%RSTUDIO_IP%:8787

endlocal
exit /b 0
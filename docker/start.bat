@echo off
setlocal

:: This script provides a "one-click" experience to start the RStudio environment on Windows.
:: It finds an available network port, sets up environment variables for Docker Compose,
:: starts the container, and opens RStudio in the default web browser.

:: Find an available port, starting from 8787.
set "PORT=8787"
:findport
netstat -an | find ":%PORT%" | find "LISTENING" > nul
if %errorlevel%==0 (
  echo Port %PORT% is in use, trying next port...
  set /a PORT+=1
  goto findport
)

:: Set the found port for docker-compose to use.
set RSTUDIO_PORT=%PORT%

:: Use the current directory's name as the project/container name for easy identification.
for %%i in ("%cd%\..") do set PROJECT_NAME=%%~ni

echo Starting RStudio for project '%PROJECT_NAME%' on http://localhost:%PORT%

:: Start the services defined in docker-compose.yml in detached mode (in the background).
docker-compose up -d

echo RStudio is getting ready. Opening in your browser in 5 seconds...
timeout /t 5 /nobreak > nul

:: Open the RStudio URL in the default browser.
start http://localhost:%PORT%

endlocal
exit /b 0
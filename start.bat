@echo off
echo Starting the RStudio environment via Docker...

cd docker
docker-compose up -d

:: Check if the last command failed. If so, report error and exit.
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Docker Compose failed to start. Please check for error messages above.
    pause
    exit /b %errorlevel%
)
cd..

echo.
echo Environment is ready!
echo Access RStudio in your browser at: http://127.0.0.1:8080
echo Username: rstudio
echo Password: pwd
pause
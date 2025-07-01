@echo off
echo Stopping and removing the Docker environment...

:: Navigate into the docker directory, stop the container, and navigate back
cd docker
docker-compose down
cd..

echo.
echo Environment stopped successfully.

pause
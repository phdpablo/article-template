@echo off
echo Starting the RStudio environment via Docker...

:: Navigate into the docker directory, start the container, and navigate back
cd docker
docker-compose up -d
cd..

echo.
echo Environment is ready!
echo Access RStudio in your browser at: http://127.0.0.1:8787
echo Username: rstudio
echo Password: reproducible (or as set in docker-compose.yml)

:: The pause command keeps the window open so you can read the output.
pause
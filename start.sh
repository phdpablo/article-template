#!/bin/bash
set -e # This line makes the script exit immediately if a command fails.

echo "Starting the RStudio environment via Docker..."
cd./docker && docker-compose up -d && cd..

echo ""
echo "Environment is ready!"
echo "Access RStudio in your browser at: http://127.0.0.1:8080"
echo "Username: rstudio | Password: pwd"
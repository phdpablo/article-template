#!/bin/bash
# Location: /start.sh
set -e
echo "Starting the RStudio environment via Docker..."

# Navigate into the docker directory, start the container in the background,
# and navigate back to the root directory.
cd./docker && docker-compose up -d && cd..

echo ""
echo "Environment is ready!"
echo "Access RStudio in your browser at: http://127.0.0.1:8787"
echo "Username: rstudio"
echo "Password: reproducible (or as set in docker-compose.yml)"
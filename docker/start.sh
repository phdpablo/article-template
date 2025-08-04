#!/bin/bash

# This script provides a "one-click" experience to start the RStudio environment.
# It finds an available network port, sets up environment variables for Docker Compose,
# starts the container, and opens RStudio in the default web browser.

# Find an available port, starting from 8787.
PORT=8787
while lsof -i :$PORT > /dev/null; do
  echo "Port $PORT is in use, trying next port..."
  PORT=$((PORT+1))
done

# Export the found port for docker-compose to use.
export RSTUDIO_PORT=$PORT

# Use the current directory's name as the project/container name for easy identification.
export PROJECT_NAME=$(basename "$(dirname "$PWD")")

echo "🚀 Starting RStudio for project '$PROJECT_NAME' on http://localhost:$PORT"

# Start the services defined in docker-compose.yml in detached mode (in the background).
docker-compose up -d

echo "✅ RStudio is getting ready. Opening in your browser in 5 seconds..."
sleep 5

# Open the RStudio URL in the default browser.
# 'open' is for macOS, 'xdg-open' is for most Linux distributions.
if command -v open > /dev/null; then
  open http://localhost:$PORT
elif command -v xdg-open > /dev/null; then
  xdg-open http://localhost:$PORT
else
  echo "⚠️ Could not detect 'open' or 'xdg-open'. Please open http://localhost:$PORT in your browser manually."
fi

exit 0
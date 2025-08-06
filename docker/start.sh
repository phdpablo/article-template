#!/bin/bash

# This script provides a "one-click" experience to start the RStudio environment.
# It finds an available IP dynamically, sets up environment variables for Docker Compose,
# starts the container, and opens RStudio in the default web browser.

# Define the base IP and suffix
BASE_IP="127.0.0."
IP_SUFFIX=1

# Detect the operating system
OS=$(uname -s)

# Find an available IP
while true; do
  CURRENT_IP="${BASE_IP}${IP_SUFFIX}"
  if [[ "$OS" == "Linux" || "$OS" == "Darwin" ]]; then
    # For Linux/macOS, use ss or lsof to check if the IP is in use
    if ! ss -tuln | grep "${CURRENT_IP}:8787" > /dev/null 2>&1 && ! lsof -i @${CURRENT_IP}:8787 > /dev/null 2>&1; then
      break
    fi
  elif [[ "$OS" == "MINGW"* || "$OS" == "CYGWIN"* || "$OS" == "MSYS"* ]]; then
    # For Windows (Git Bash), use netstat to check if the IP is in use
    if ! netstat -an | grep "${CURRENT_IP}:8787" > /dev/null 2>&1; then
      break
    fi
  else
    echo "Unsupported operating system: $OS"
    exit 1
  fi
  IP_SUFFIX=$((IP_SUFFIX + 1))
done

# Export the found IP for docker-compose to use
export RSTUDIO_IP=$CURRENT_IP

# Use the current directory's name as the project/container name for easy identification
export PROJECT_NAME=$(basename "$(dirname "$PWD")")

echo "🚀 Starting RStudio for project '$PROJECT_NAME' on http://$RSTUDIO_IP:8787"

# Start the services defined in docker-compose.yml in detached mode (in the background)
docker-compose -p "$PROJECT_NAME" up -d

echo "✅ RStudio is getting ready. Opening in your browser in 5 seconds..."
sleep 5

# Open the RStudio URL in the default web browser
if command -v xdg-open > /dev/null; then
  xdg-open "http://$RSTUDIO_IP:8787"
elif command -v open > /dev/null; then
  open "http://$RSTUDIO_IP:8787"
elif command -v start > /dev/null; then
  start "http://$RSTUDIO_IP:8787"
else
  echo "⚠️ Could not detect a command to open the browser. Please open http://$RSTUDIO_IP:8787 manually."
fi

exit 0

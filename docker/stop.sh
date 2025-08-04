#!/bin/bash

# This script stops and removes the containers associated with this project.
# It reads the docker-compose.yml file in the current directory.

echo "🛑 Stopping and removing the RStudio container for this project..."
docker-compose down
echo "✅ Environment stopped."
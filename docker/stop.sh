#!/bin/bash

# Use the parent directory's name as the project name
PROJECT_NAME=$(basename "$(dirname "$PWD")")

echo "🛑 Stopping and removing the RStudio container for project '$PROJECT_NAME'..."
docker-compose -p "$PROJECT_NAME" down
echo "✅ Environment stopped."
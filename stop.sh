#!/bin/bash
# Location: /stop.sh
set -e
echo "Stopping and removing the Docker environment..."

# Navigate into the docker directory, stop and remove the container,
# and navigate back to the root directory.
cd./docker && docker-compose down && cd..

echo "Environment stopped successfully."
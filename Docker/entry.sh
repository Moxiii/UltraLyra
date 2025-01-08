#!/bin/bash
set -e
if [[ "$1" == "frontend" ]]; then
  echo "Launch frontend"
  npx expo start --web --lan
fi
if [[ "$1" == "backend" ]]; then
  echo "Start mvn backend"
  mvn spring-boot:run
fi
echo "Invalid argument. 'frontend', or 'backend'."
exit 1
#!/bin/bash
set -e

case "$1" in
  frontend)
    echo "Launching frontend..."
    npx expo start --web --lan
    ;;
  backend)
    echo "Starting backend with Maven..."
    mvn spring-boot:run
    ;;
  LLM)
    echo "Launching LLM model server..."
    python3 -m vllm.entrypoint.api_server \
      --model "/models/tiiuae/Falcon-10B-Instruct" \
      --port 8000
    ;;
  *)
    echo "Invalid argument. Use 'frontend', 'backend', or 'LLM'."
    exit 1
    ;;
esac

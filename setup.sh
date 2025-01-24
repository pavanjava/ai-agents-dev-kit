#!/bin/bash

# Step 1: Start the main stack (excluding ollama-init)
echo "Starting Docker Compose stack (excluding ollama-init)..."
docker compose -f ai-agents-dev-kit.yml up -d --scale ollama-init=0

# Step 2: Run ollama-init as a one-off task and wait for completion
echo "Running ollama-init task..."
docker compose run --rm ollama-init

# Step 3: Log completion
echo "ollama-init task completed and container removed."
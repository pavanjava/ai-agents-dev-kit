# Step 1: Start the main stack (excluding ollama-init)
Write-Host "Starting Docker Compose stack (excluding ollama-init)..." -ForegroundColor Green
docker compose -f ai-agents-dev-kit.yml up -d --scale ollama-init=0

# Step 2: Run ollama-init as a one-off task and wait for completion
Write-Host "Running ollama-init task..." -ForegroundColor Green
docker compose -f ai-agents-dev-kit.yml run --rm ollama-init

# Step 3: Log completion
Write-Host "ollama-init task completed and container removed." -ForegroundColor Green
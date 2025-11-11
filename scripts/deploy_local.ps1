param(
  [string]$Artifact = "dist\\app.zip"
)

Write-Host "Starting deploy..."
if (-not (Test-Path $Artifact)) {
  Write-Error "Artifact '$Artifact' not found."
  exit 1
}

# Example deploy logic
$target = "$env:TEMP\\python-ci-cd"
New-Item -ItemType Directory -Force -Path $target | Out-Null
Expand-Archive -Path $Artifact -DestinationPath $target -Force
Write-Host "Deployed to $target"

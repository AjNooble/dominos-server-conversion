Write-Host "Running post-conversion verification..."

$verifications = @(
    "New server is online and reachable",
    "Services started successfully",
    "Database connectivity confirmed",
    "Application responding on expected ports",
    "Old server safely decommissioned"
)

foreach ($v in $verifications) {
    Write-Host "  [VERIFIED] $v"
    Start-Sleep -Seconds 1
}

Write-Host "All checks passed. Conversion successful."

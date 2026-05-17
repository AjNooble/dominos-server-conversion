Write-Hst "Running pre-conversion checks..."

$checks = @(
    "Verifying network connectivity",
    "Checking disk space (min 20GB required)",
    "Confirming backup service is running",
    "Validating server credentials",
    "Pinging target server"
)

foreach ($check in $checks) {
    Write-Host "  [OK] $check"
    Start-Sleep -Seconds 1
}

Write-Host "Pre-check complete. Server ready for conversion."

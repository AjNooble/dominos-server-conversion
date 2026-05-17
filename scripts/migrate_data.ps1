Write-Host "Starting data migration to new server..."

$migrations = @(
    "Transferring config files",
    "Restoring database snapshot",
    "Syncing application data",
    "Updating DNS records",
    "Remapping network drives"
)

foreach ($task in $migrations) {
    Write-Host "  [MIGRATE] $task"
    Start-Sleep -Seconds 1
}

Write-Host "Migration complete."

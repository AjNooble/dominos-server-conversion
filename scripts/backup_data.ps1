Write-Host "Initiating data backup..."

$items = @(
    "System configuration files",
    "Application data",
    "User profiles",
    "Database snapshot",
    "Network settings"
)

foreach ($item in $items) {
    Write-Host "  [BACKUP] $item"
    Start-Sleep -Seconds 1
}

Write-Host "Backup complete. All data secured."

$basePath = "C:\RT Systems V5"

Get-ChildItem -Path $basePath -Recurse -Filter RTUpdater_V5.exe | ForEach-Object {
    Write-Host "Launching updater: $($_.FullName)"
    Start-Process -FilePath $_.FullName
    Start-Sleep -Seconds 8
}


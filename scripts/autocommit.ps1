while ($true) {
    git add .
    git commit -m "Auto commit: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
    git push origin main
    Start-Sleep -Seconds 180
}

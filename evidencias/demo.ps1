$Host.UI.RawUI.WindowTitle = "Reto Docker - Alejandro Jaramillo"
Set-Location (Split-Path $PSScriptRoot -Parent)
function Run($cmd) { Write-Host "PS $(Get-Location)> " -NoNewline -ForegroundColor Green; Write-Host $cmd -ForegroundColor Yellow; Invoke-Expression $cmd; Write-Host "" }
Clear-Host
Run "docker --version"
Run "docker compose up -d --build"
Run "docker compose ps"
Run "curl.exe -s http://localhost:8080 | Select-String 'Reto completado'"
Run "docker compose logs --tail 5 web"
Write-Host "Servicio corriendo en http://localhost:8080" -ForegroundColor Cyan
New-Item -ItemType File -Force (Join-Path $PSScriptRoot "done.flag") | Out-Null
Start-Sleep 600

# Automatiseren software-installatie Windows 11

Write-Host "Hello World!"

Write-Host "Installatie algemene applicaties"
winget install -e --id Apache.OpenOffice
winget install -e --id Opera.Opera
winget install -e --id VideoLAN.VLC

Write-Host "Developer tools"
winget install -e --id GitHub.GitHubDesktop
winget install -e --id Microsoft.VisualStudioCode

Write-Host "Applicaties voor communicatie"
winget install -e --id Discord.Discord
winget install -e --id Microsoft.Teams

Write-Host "Software voor System Engineering Lab"

Write-Host "Bestandsoverdracht"
winget install -e --id WinSCP.WinSCP

Write-Host "Virtualisatie"
winget install -e --id Oracle.VirtualBox --version 7.2.6
winget pin add --id Oracle.VirtualBox --version 7.2.6

Write-Host "Database tools"
winget install -e --id Oracle.MySQLWorkbench

Write-Host "Installatie voltooid!"

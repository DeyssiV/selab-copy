# Automatiseren software-installatie

Write-Host "Installatie algemene applicaties" -ForegroundColor Green -BackgroundColor Black

#winget install -e --id git.git
winget install -e --id Adobe.Acrobat.Reader.64-bit
winget install -e --id Mozilla.Firefox.be
winget install -e --id GitHub.GitHubDesktop
#winget install -e --id Microsoft.VisualStudioCode
#winget install -e --id VideoLAN.VLC 
Write-Host "software SDP1"
winget install -e --id Gluon.SceneBuilder
Write-Host "software SELab"
winget install -e --id WinSCP.WinSCP
#winget install -e --id Oracle.VirtualBox --version 7.2.2
#winget install -e --id Oracle.MySQLWorkbench

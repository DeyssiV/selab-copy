# Automatiseren software-installatie

Write-Host "Installatie algemee applicaties"
winget install -e --id Git.Git

winget install -e --id Adobe.Acrobat.Reader.64-bit

winget install -e --id Google.Chrome

winget install -e --id GitHub.GitHubDesktop

winget install -e --id Microsoft.VisualStudioCode

winget install -e --id VideoLAN.VLC

winget install -e --id WinSCP.WinSCP

winget install -e --id Oracle.VirtualBox --version 7.2.2

winget install -e --id Oracle.MySQL

winget pin add --id Oracle.VirtualBox --version "7.2.*"

winget install -e --id VisualParadigm.Community

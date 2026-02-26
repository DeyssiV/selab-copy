# Automatiseren software-installatie

do {
    Write-Host "`n`rKies wat je wil installeren:"
    Write-Host "`n`r1 = Alles"
    Write-Host "2 = Git"
    Write-Host "3 = VS Code"
    Write-Host "4 = VLC"
    Write-Host "5 = Firefox"
    Write-Host "6 = VirtualBox"
    Write-Host "7 = Adobe Acrobat Reader"
    Write-Host "8 = Scene Builder"
    Write-Host "9 = WinSCP"
    Write-Host "10 = MYSQL Workbench"
    Write-Host "11 = Algemene project applicaties (git | VS code | Virtualbox | Scenebuilder | WinSCP | MYSQL Workbench)"
    Write-Host "`n`r0 = SCRIPT EINDIGEN" -ForegroundColor Green -BackgroundColor Black

    $keuze = Read-Host "`n`rGeef je keuze"

    switch ($keuze) {
        1 {  
            winget install -e --id Git.Git
            winget install -e --id Microsoft.VisualStudioCode
            winget install -e --id VideoLAN.VLC
            winget install -e --id Mozilla.Firefox.be
            winget install -e --id Oracle.VirtualBox --version 7.2.2
            winget install -e --id Adobe.Acrobat.Reader.64-bit
            winget install -e --id Gluon.SceneBuilder
            winget install -e --id WinSCP.WinSCP
            winget install -e --id Oracle.MySQLWorkbench
        }
        2 {winget install -e --id Git.Git}
        3 {winget install -e --id Microsoft.VisualStudioCode}
        4 {winget install -e --id VideoLAN.VLC}
        5 {winget install -e --id Mozilla.Firefox.be}
        6 {winget install -e --id Oracle.VirtualBox --version 7.2.2}
        7 {winget install -e --id Adobe.Acrobat.Reader.64-bit}
        8 {winget install -e --id Gluon.SceneBuilder}
        9 {winget install -e --id WinSCP.WinSCP}
        10 {winget install -e --id Oracle.MySQLWorkbench}
        11 {
            winget install -e --id Git.Git
            winget install -e --id Microsoft.VisualStudioCode
            winget install -e --id Oracle.VirtualBox --version 7.2.2
            winget install -e --id Gluon.SceneBuilder
            winget install -e --id WinSCP.WinSCP
            winget install -e --id Oracle.MySQLWorkbench
        }

    }
} while ($keuze -ne 0);

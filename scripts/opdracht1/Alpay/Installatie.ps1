# Automatiseren software-installatie

Write-Host "`nAutomatiseren software-installatie`n" -ForegroundColor Black -BackgroundColor Green

Write-Host "1) Installatie van browsers (Chrome, Firefox, Edge)"
Write-Host "2) Installatie van algemene applicaties"
Write-Host "3) Installatie van applicaties voor OOSD"
Write-Host "4) Installatie van applicaties voor Databases"
Write-Host "5) Installatie van applicaties voor System Engineering Lab"
Write-Host "6) Installatie van applicaties van Git"
Write-Host "7) Alles installeren`n"

$keuze = Read-Host "Kies welke software je wilt installeren (1-7)"

switch ($keuze)
{
    "1"{
        Write-Host "`nBrowsers worden geïnstalleerd..." -ForegroundColor White -BackgroundColor DarkGreen
        #winget install -e --id Google.Chrome
        #winget install -e --id Mozilla.Firefox
        #winget install -e --id Microsoft.Edge
    }

    "2"{
        Write-Host "`nAlgemene applicaties worden geïnstalleerd..." -ForegroundColor White -BackgroundColor DarkGreen
        #winget install -e --id Microsoft.Teams
        #winget install -e --id Adobe.Acrobat.Reader.64-bit
        #winget install -e --id Microsoft.VisualStudioCode
        #winget install -e --id VideoLAN.VLC
        #winget install -e --id mcmilk.7zip-zstd
    }

    "3"{
        Write-Host "`nApplicaties voor OOSD worden geïnstalleerd..." -ForegroundColor White -BackgroundColor DarkGreen
        #winget install -e --id JetBrains.IntelliJIDEA.Ultimate
        #winget install -e --id VisualParadigm.Community
        #winget install -e --id Gluon.SceneBuilder
    }

    "4"{
        Write-Host "`nApplicaties voor Databases worden geïnstalleerd..." -ForegroundColor White -BackgroundColor DarkGreen
        #winget install -e --id Oracle.MySQL
        #winget install -e --id JGraph.Draw
    }

    "5"{
        Write-Host "`nApplicaties voor System Engineering Lab worden geïnstalleerd..." -ForegroundColor White -BackgroundColor DarkGreen
        #winget install -e --id WinSCP.WinSCP
        #winget install -e --id Oracle.VirtualBox --version 7.2.2
        #winget pin add -e --id Oracle.VirtualBox --version "7.2.*"
        #winget install -e --id Oracle.MySQL
    }

    "6"{
        Write-Host "`nApplicaties van Git worden geïnstalleerd..." -ForegroundColor White -BackgroundColor DarkGreen
        #winget install -e --id Git.Git
        #winget install -e --id GitHub.GitHubDesktop
        #winget install -e --id Axosoft.GitKraken
    }

    "7"{
        Write-Host "`nAlle applicaties worden geïnstalleerd..." -ForegroundColor White -BackgroundColor DarkGreen
        #winget install -e --id Google.Chrome
        #winget install -e --id Mozilla.Firefox
        #winget install -e --id Microsoft.Edge
        #winget install -e --id Microsoft.Teams
        #winget install -e --id Adobe.Acrobat.Reader.64-bit
        #winget install -e --id Microsoft.VisualStudioCode
        #winget install -e --id VideoLAN.VLC
        #winget install -e --id mcmilk.7zip-zstd
        #winget install -e --id JetBrains.IntelliJIDEA.Ultimate
        #winget install -e --id VisualParadigm.Community
        #winget install -e --id Gluon.SceneBuilder
        #winget install -e --id Oracle.MySQL
        #winget install -e --id JGraph.Draw
        #winget install -e --id WinSCP.WinSCP
        #winget install -e --id Oracle.VirtualBox --version 7.2.2
        #winget pin add --id Oracle.VirtualBox --version "7.2.*"
        #winget install -e --id Oracle.MySQL
        #winget install -e --id Git.Git
        #winget install -e --id GitHub.GitHubDesktop
        #winget install -e --id Axosoft.GitKraken
    }

    Default{
        Write-Host "`nOngeldige keuze, probeer het opnieuw." -ForegroundColor Red
    }
}
# Cheat sheets en checklists

> Student: Alpay Cakal

## Basiscommando's

| **Taak**                                               | **Commando**                     |
| :----------------------------------------------------- | :------------------------------- |
| Bekijk IP-adressen van alle netwerkadapters            | `ip a`                           |
| Bekijk de status van een service                       | `systemctl status SERVICE`       |
| Start een service                                      | `sudo systemctl start SERVICE`   |
| Stop een service                                       | `sudo systemctl stop SERVICE`    |
| Herstart een service                                   | `sudo systemctl restart SERVICE` |
| Update de package repositories (Ubuntu & Debian based) | `sudo apt update`                |
| Installeer een package (Ubuntu & Debian based)         | `sudo apt install PACKAGE`       |

## Git workflow

Simpele git workflow voor projecten met een enkele branch en zonder contributors.

| **Taak**                                                           | **Commando**              |
| :----------------------------------------------------------------- | :------------------------ |
| Status van het huidige project                                     | `git status`              |
| Selecteer te committen bestanden                                   | `git add FILE...`         |
| Commit alle wijzigingen naar de lokale repository                  | `git commit -m 'MESSAGE'` |
| Push lokale wijzigingen naar de remote repository                  | `git push`                |
| Haal alle wijzigingen van de remote repository binnen in de lokale | `git pull`                |

## Checklist netwerkconfiguratie

1. Is het IP-adres correct? `ip a`
2. Is de router/default gateway correct? `ip r -n`
3. Is een DNS-server ingesteld? `cat /etc/resolv.conf`

## Script

| **Taak**                                               | **Commando**                                |
| :----------------------------------------------------- | :-------------------------------            |
| standaardextensie voor PowerShell-scripts              | `.ps1`                                      |
| scripts runnable maken                                 | `Set-ExecutionPolicy Bypass -Scope Process` |
| output van het script                                  | `Write-Host`                                |
| inputmogelijkheid in het script                        | `Read-Host`                                 |
| een tekstkleur voorzien                                | `-ForegroundColor ...`                      |
| een achtergrondkleur voorzien                          | `-BackgroundColor ...`                      |
| iets in commentaar zetten (wordt niet uitgevoerd)      | `#`                                         |
| op basis van een waarde iets uitvoeren                 | `switch(...)`                               |
| tussen "..." als Enter                                 | ``n`                                        |

## PowerShell-commando's

| **Taak**                                               | **Commando**                                |
| :----------------------------------------------------- | :-------------------------------            |
| vanuit de huidige map vertrekken                       | `.\...`                                     |

## WinGet-commando's

| **Taak**                                               | **Commando**                     |
| :----------------------------------------------------- | :------------------------------- |
| lijst van geïnstall. software (al dan niet via WinGet) | `winget list`                    |
| geïnstalleerde packages bijwerken naar laatste versie  | `winget upgrade (--all)`         |
| package opzoeken via console                           | `winget search`                  |
| package installeren                                    | `winget install (-e --id)`       |
| geïnstalleerd package verwijderen                      | `winget uninstall (-e --id)`     |
| ID van packages binnen WinGet                          | `<ontwikkelaar>.<naamAppl.>`     |
| specifieke versie van package pinnen + pin toevoegen   | `winget pin add`                 |

## WinGet-opties

| **Taak**                                               | **Commando**                     |
| :----------------------------------------------------- | :------------------------------- |
| naar de handleiding van WinGet gaan                    | `winget --help`                  |
| het unieke ID gebruiken (<ontw.>.<naamAppl.>)          | `winget --id`                    |
| nakijken op precieze overeenkomst                      | `winget -e`                      |
| versie van package specifiëren                         | `winget --version`               |
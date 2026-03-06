# Cheat sheets en checklists

> Student: Silas Pauwels

## Basiscommando's

| Taak                                                   | Commando                         |
| :----------------------------------------------------- | :------------------------------- |
| Bekijk IP-adressen van alle netwerkadapters            | `ip a`                           |
| Bekijk de status van een service                       | `systemctl status SERVICE`       |
| Start een service                                      | `sudo systemctl start SERVICE`   |
| Stop een service                                       | `sudo systemctl stop SERVICE`    |
| Herstart een service                                   | `sudo systemctl restart SERVICE` |
| Update de package repositories (Ubuntu & Debian based) | `sudo apt update`                |
| Installeer een package (Ubuntu & Debian based)         | `sudo apt install PACKAGE`       |
| Log in als root                                        | `sudo -i`                        |
| Laatste regel in lijst                                 | `G`                              |
| voortwaarts zoeken                                     | `/`                              |
| achterwaarts zoeken                                    | `?`                              |
| volgend zoekresultaat                                  | `n`                              |

## Git workflow

Simpele git workflow voor projecten met een enkele branch en zonder contributors.

| Task                                                               | Command                   |
| :----------------------------------------------------------------- | :------------------------ |
| Status van het huidige project                                     | `git status`              |
| Selecteer te committen bestanden                                   | `git add FILE...`         |
| Commit alle wijzigingen naar de lokale repository                  | `git commit -m 'MESSAGE'` |
| Push lokale wijzigingen naar de remote repository                  | `git push`                |
| Haal alle wijzigingen van de remote repository binnen in de lokale | `git pull`                |

  ## Winget Commands
| Taak                                                   | Commando                             |
| :----------------------------------------------------- | :---------------------------------   |
| Lijst tonen van software  geinstalleerd via Winget     | `winget list`                        |
| Alle packages geinstalleerd via winget updaten         | `winget upgrade --all`               |
| Een applicatie installeren                             | `winget install -e --id <pakketid>`  |
| Een applicatie deinstalleren                           | `winget uninstall -e --id <pakketid>`|
| Via console een pakket zoeken                          | `winget search <pakketid>`           |
| Een packet pinnen                                      | `winget pin <pakketid>`              |
| Een packet unpinnen                                    | `winget pin remove <pakketid>`       |

## Powershell Commands
|Taak                                                    | Commando                                    |
|:------------------------------------------------------ | :----------------------                     |
| Als je het script niet kan runnen                      | `Set-ExecutionPolicy Bypass -Scope Process` |
| Text schrijven in de console                           | `Write-Host`                                |
| Invoer van gebruiker lezen                             | `Read-Host`                                 |
| Commentaar schrijven                                   | `#Voorbeeld-tekst`                          |

## MYSQL & netwerkconfig
|Taak                                                    | Commando                                             |
|:------------------------------------------------------ | :----------------------                              |
| controleer of service draait                           | `systemctl status mysql`                             |
| controleer welke netwerkpoorten in gebruik zijn        | `sudo ss -tlnp`                                      |
| herstart mysql                                         | `sudo systemctl restart mysql`                       |
| filteren op poorten die luisteren voor een prcoes      | `sudo lsof -p [PID] \| grep LISTEN`                  |
| systeem logs bekijken                                  | `journalctl -u mysqld`                               |
| Start SSH                                              | `sudo systemctl start ssh`                           |
| start mysql console                                    | `sudo mysql -u root -p`                              |
| use mysql                                              | `use mysql`                                          |
| maak gebruiker                                         | `create user 'admin'@'%' identified by 'letmein';`   |

## Checklist netwerkconfiguratie

1. Is het IP-adres correct? `ip a`
2. Is de router/default gateway correct? `ip r -n`
3. Is een DNS-server ingesteld? `cat /etc/resolv.conf`

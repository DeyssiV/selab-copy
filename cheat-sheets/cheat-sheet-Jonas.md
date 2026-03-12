# Cheat sheets en checklists

> Student: VOORNAAM FAMILIENAAM

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
|Controleer welke netwerkpoorten in gebruik zijn         | `sudo ss -tlnp`                  |



## Git workflow

Simpele git workflow voor projecten met een enkele branch en zonder contributors.

| Task                                                               | Command                   |
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
## WinGet
| Task                                                               | Command                                         |
| :----------------------------------------------------------------- | :---------------------------------------------- |
| Alle packages geinstalleerd via winget updaten                     | `winget upgrade --all`                          |
| Een applicatie installeren                                         | `winget install -e --id <pakketid>`             |
| Een applicatie deinstalleren                                       | `winget uninstall -e --id <pakketid>`           |
| Via console een pakket zoeken                                      | `winget search <pakketid>`                      |
| Lijst tonen van software  geinstalleerd via Winget                 | `winget list`                                   |


## Powershell
| Task                                                               | Command                                         |
| :----------------------------------------------------------------- | :---------------------------------------------- |
| alle script uitvoerbaar maken                                      | `Set-Execution Policy Bypass -scope process `   |
| printen van tekst                                                  | `write host`                                    |
| Test of adres bereikbaar is                                        | `ping .../.../.../...`                          |

# Markdwon
| Wat je wil | Markdown | Resultaat |
|------------|----------|-----------|
| Titel | `# Titel` | Grote titel |
| Subtitel | `## Subtitel` | Kleinere titel |
| Vet | `**tekst**` | **tekst** |
| Cursief | `*tekst*` | *tekst* |

# fail2ban
| Taak                                                   | Commando                          |
| :----------------------------------------------------- | :-------------------------------  |
| Geconfigureerde jails bekijken                         | `sudo fail2ban-client status`     |
| Geblokkeerde IP-adressen bekijken                      | `sudo fail2ban-client status sshd`|
| findtime opvragen                                      | `sudo fail2ban-client get status sshd findtime`    |
| maxretry opvragen                                      | `sudo fail2ban-client get status sshd maxretry`     |
| bantime  opvragen                                 | `sudo fail2ban-client get status sshd bantime`  |
| een Ip-adres unbannen                                  | `sudo fail2ban-client set sshd unbanip <IP-adres>` |
| Lijst | `- item` | • item |
| Codeblok | ```` ```bash ... ``` ```` | Code met kleur |
| Link | `[naam](https://...)` | klikbare link |


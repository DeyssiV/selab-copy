# Cheat sheets en checklists

> Student: Louis Appeltants

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

## Git workflow

Simpele git workflow voor projecten met een enkele branch en zonder contributors.

| Taak                                                               | Commando                  |
| :----------------------------------------------------------------- | :------------------------ |
| Status van het huidige project                                     | `git status`              |
| Selecteer te committen bestanden                                   | `git add FILE...`         |
| Commit alle wijzigingen naar de lokale repository                  | `git commit -m 'MESSAGE'` |
| Push lokale wijzigingen naar de remote repository                  | `git push`                |
| Haal alle wijzigingen van de remote repository binnen in de lokale | `git pull`                |

## Winget Commands
| Taak                                                   | Commando                             |
| :----------------------------------------------------- | :---------------------------------   |
| Lijst tonen van software geinstalleerd via Winget      | `winget list`                        |
| Alle packages geinstalleerd via winget updaten         | `winget upgrade --all`               |
| Een applicatie installeren                             | `winget install -e --id <pakketid>`  |
| Een applicatie deinstalleren                           | `winget uninstall -e --id <pakketid>`|
| Via console een pakket zoeken                          | `winget search <pakketid>`           |

## MySQL & netwerkconfiguratie

| Taak                                          | Commando                                      |
| :---------------------------------------------| :-------------------------------------------- |
| Bekijk luisterende TCP-poorten                | `sudo ss -tlnp`                               |
| Controleer of MySQL luistert (specifiek)      | `sudo ss -tlnp \| grep 3306`                  |
| Open MySQL configuratiebestand                | `sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf`|
| Herstart MySQL service                        | `sudo systemctl restart mysql`                |
| Controleer MySQL service status               | `systemctl status mysql`                      |
| Nieuwe gebruiker met externe toegang          |`CREATE USER 'user'@'%' IDENTIFIED BY 'pass';` |

## Checklist netwerkconfiguratie

1. Is het IP-adres correct? `ip a`
2. Is de router/default gateway correct? `ip r -n`
3. Luistert MySQL op de juiste interface? `sudo ss -tlnp | grep 3306`

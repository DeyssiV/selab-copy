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
| connecten met ssh                                      | `ssh <username>@<ip-adres>`      |

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
| filteren op poorten die luisteren voor een proces      | `sudo lsof -p [PID] \| grep LISTEN`                  |
| systeem logs bekijken                                  | `journalctl -u mysqld`                               |
| Start SSH                                              | `sudo systemctl start ssh`                           |
| start mysql console                                    | `sudo mysql -u root -p`                              |
| use mysql                                              | `use mysql`                                          |
| maak gebruiker                                         | `create user 'admin'@'%' identified by 'letmein';`   |

## Fail2ban & UFW
|Taak                                                    | Commando                                             |
|:------------------------------------------------------ | :----------------------                              |
| check firewall actief + toegelaten poorten             | `sudo ufw status`                                    |
| allow poort                                            | `sudo ufw allow <poort>`                             |
| deny poort                                             | `sudo ufw deny <poort>`                              |
| Geconfigureerde jails bekijken                         | `sudo fail2ban-client status`                        |
| Geblokkeerde IP-adressen bekijken                      | `sudo fail2ban-client status sshd`                   |
| findtime opvragen                                      | `sudo fail2ban-client get sshd findtime`             |
| maxretry opvragen                                      | `sudo fail2ban-client get sshd maxretry`             |
| bantime opvragen                                       | `sudo fail2ban-client get sshd bantime`              |
| een Ip-adres unbannen                                  | `sudo fail2ban-client set sshd unbanip <IP-adres>`   |

## Hydra
|Taak                                                    | Commando                                                                               |
|:------------------------------------------------------ | :----------------------                                                                |
| bruteforce test met gekend wachtwoord                  | `hydra -l <username> -p <wachtwoord> <ip adres> -t 4 ssh`                              |
| bruteforce aanval met wordlist                         | `hydra -l osboxes -P /home/osboxes/Downloads/passlist.txt 192.168.56.20 -t 4 ssh`      |

## Azure-Wordpress gegevens
| **Variabele**                    | **Inhoud**                                                                                                                |
| -------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| Resourcegroep                    | SELab-Wordpress                                                                                                           |
| Naam databankserver              | sp-wordpressdb                                                                                                            |
| DNS-naam databankserver          | sp-wordpressdb.mysql.database.azure.com                                                                                   |
| Beheerder databankserver         | wordpressdb                                                                                                               |
| Wachtwoord databankserver        | LetmeIn!                                                                                                                  |
| Naam applicatieserver (Ubuntu)   | sp-wordpressapp                                                                                                           |      
| DNS-naam applicatieserver        | sp-wordpressapp.switzerlandnorth.cloudapp.azure.com                                                                       |
| Gebruikersnaam applicatieserver  | wordpressapp                                                                                                              |
| Wachtwoord applicatieserver      | LetmeIntheApp!                                                                                                            |
| WordPress db user                | wordpress                                                                                                                 |
| Wachtwoord van WordPress db user | wordpresspwd                                                                                                              |
| WordPress user                   | admin                                                                                                                     |
| WordPress user password          | 3&KfZJUZVA%2PTE1cs                                                                                                        |

## Docker
| **Variabele**                    | **Inhoud**                                                                                                                |
| -------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| docker ps                        | Toon actieve containers                                                                                                   |
| docker run                       | run een nieuwe container                                                                                                  |
| docker images                    | toon images                                                                                                               |
| docker system prune -a --volumes | verwijder inactieve images en containers                                                                                  |
| docker compose up                | zoek naar docker-compose.yml in huidige map en run die                                                                    |
| docker compose down              | stop en verwijder containers die gestart zien door docker-compose.yml bestand in huidige map                              |      

## Cisco 
| **Variabele | **inhoud |
|------|----------|
| User EXEC → Privileged EXEC | `enable`                             |
| Privileged → Config mode    | `configure terminal`                 |
| Terug naar EXEC mode        | `end`                                |
| Eén niveau terug            | `exit`                               |
| IP interfaces + status      | `show ip interface brief`            |
| IPv4 routing tabel          | `show ip route`                      |
| DNS lookup uitschakelen     | `no ip domain-lookup`                |
| Running config opslaan      | `copy running-config startup-config` |
| Interface activeren         | `no shutdown`                        |
| Domeinnaam instellen        | `ip domain-name selabs.local`        |
| Lokale user maken           | `username admin secret cisco123`     |



## Checklist netwerkconfiguratie

1. Is het IP-adres correct? `ip a`
2. Is de router/default gateway correct? `ip r -n`
3. Is een DNS-server ingesteld? `cat /etc/resolv.conf`

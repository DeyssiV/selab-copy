# Cheat sheets en checklists

> Student: Deyssi Vedzijeva

## 1. Netwerk & Systeem Basis
| Taak | Commando | Toelichting |
| :--- | :--- | :--- |
| Bekijk IP-adressen | `ip a` of `ifconfig` | Toont alle netwerken en IP-adressen. |
| Actieve poorten | `sudo ss -tlnp` | Overzicht van processen die 'luisteren' op een poort. |
| DNS controleren | `cat /etc/resolv.conf` | Kijken welke DNS-server de VM gebruikt?. |
| Gateway check | `ip r -n` | Controleren of de router/default gateway correct is ingesteld. |
| Schermvergrendeling | `gsettings set org.gnome.desktop.screensaver lock-enabled false` | Voorkomt dat de VM-interface automatisch vergrendelt (GUI). |
| Systeem afsluiten | `sudo poweroff` | Sluit VM af. |
| Wachtwoord wijzigen | `passwd` | Wijzigt het wachtwoord van de ingelogde gebruiker. |

---

## 2. SSH & Externe Toegang
| Taak | Commando | Toelichting |
| :--- | :--- | :--- |
| Inloggen via SSH | `ssh <GEBRUIKER>@<IP-ADRES>` | Maak een beveiligde SSH-verbinding vanaf je host naar de VM. |
| SSH Key reset | `ssh-keygen -R <IP-adres>` | Verwijdert oude sleutel van een IP bij verbindingsfouten (host key mismatch). |
| Status SSH server | `sudo systemctl status ssh` | Controleren of de SSH-daemon (sshd) actief is en luistert. |

---

## 3. Firewall (UFW)
| Taak | Commando | Toelichting |
| :--- | :--- | :--- |
| Firewall aanzetten | `sudo ufw enable` | Activeert de firewall; blokkeert standaard al het inkomende verkeer. |
| Status & Regels | `sudo ufw status` | Overzicht van welke poorten openstaan. |
| Poort openen | `sudo ufw allow <POORT>` | Zet een specifieke poort open. |
| Firewall herladen | `sudo ufw reload` | Herstart configuratiewijzigingen. |
| IP Whitelisten | `sudo ufw allow from <IP>` | Geeft één specifiek bron-IP-adres volledige toegang tot alle poorten. |

---

## 4. Docker & Docker Compose
| Taak | Commando | Toelichting |
| :--- | :--- | :--- |
| Status containers | `sudo docker ps` | Toont alle draaiende containers, hun ID's en poortmapping. |
| Opstarten (Detach) | `sudo docker compose up -d` | Start alle services uit de .yml file op de achtergrond. |
| Stop & Verwijder | `sudo docker compose down` | Stopt containers en verwijdert het bijbehorende Docker-netwerk. |
| YAML Controle | `sudo docker compose config` | Valideert de syntax van je docker-compose.yml op fouten. |
| Foutlogs bekijken | `sudo docker compose logs -f` | Bekijk live de output van een container voor troubleshooting. |
| Container info | `sudo docker inspect <NAAM>` | Geeft alle metadata (IP, volumes, env-vars) van een container. |
| Volume overzicht | `sudo docker volume ls` | Toont alle persistente opslagvolumes die Docker beheert. |

---

## 5. MySQL Databank
| Taak | Commando | Toelichting |
| :--- | :--- | :--- |
| MySQL Console (Sudo) | `sudo mysql` | Inloggen op de database via systeemrechten (geen DB-pass nodig). |
| MySQL (Wachtwoord) | `mysql -u root -p` | Inloggen met een specifieke gebruiker (vraagt om wachtwoord). |
| Database maken | `CREATE DATABASE wpdb;` | SQL-commando om een nieuwe database aan te maken. |
| Gebruiker rechten | `GRANT ALL PRIVILEGES ON *.* TO 'user'@'%';` | Geeft een gebruiker volledige toegang, ook vanaf externe IP's (`%`). |
| Wachtwoord reset | `ALTER USER 'u'@'%' IDENTIFIED BY 'p';` | Wijzigt het wachtwoord voor een bestaande database-gebruiker. |
| Rechten verversen | `FLUSH PRIVILEGES;` | Dwingt MySQL om de nieuwe rechtentabel direct in te laden. |
| Tabellen tonen | `SHOW TABLES;` | Lijst van alle tabellen in de momenteel geselecteerde database. |

---

## 6. Fail2Ban (Intrusion Prevention)
| Taak | Commando | Toelichting |
| :--- | :--- | :--- |
| Algemene status | `sudo fail2ban-client status` | Zien welke actieve beveiligingsfilters (jails) er draaien. |
| SSH blokkades | `sudo fail2ban-client status sshd` | Toont statistieken en een lijst van geblokkeerde IP-adressen voor SSH. |
| Parameters opvragen | `sudo fail2ban-client get sshd <PARAM>` | Vraag specifiek de `bantime`, `findtime` of `maxretry` op. |
| Unban IP-adres | `sudo fail2ban-client set sshd unbanip <IP>` | Hef de blokkade van een specifiek IP-adres onmiddellijk op. |

---

## 7. Service Beheer (Systemd)
| Taak | Commando | Toelichting |
| :--- | :--- | :--- |
| Status bekijken | `systemctl status <SERVICE>` | Controleerwelke processen 'active' zijn. |
| Starten / Stoppen | `sudo systemctl start/stop <S>` | Handmatig een service aan- of uitzetten. |
| Herstarten | `sudo systemctl restart <S>` | Herstart de service (nodig na wijzigen van config-bestanden). |
| Automatisch starten | `sudo systemctl enable <S>` | Zorgt dat de service automatisch start bij het booten van de VM. |

---

## 8. Package & File Management
| Taak | Commando | Toelichting |
| :--- | :--- | :--- |
| Brew installatie | `brew install <APP>` | Installeer pakketten via de Homebrew package manager. |
| Update repo lijst | `sudo apt update` | Haal de nieuwste info op over beschikbare software-updates. |
| Installeren (APT) | `sudo apt install <PKG>` | Installeer software uit de officiële Ubuntu-bronnen. |
| .deb installeren | `sudo dpkg -i <BESTAND>.deb` | Installeer een lokaal gedownload Debian-pakketbestand. |
| Map maken | `mkdir <PAD/NAAM>` | Maakt een nieuwe directory aan op de opgegeven locatie. |
| Bewerken (Nano) | `sudo nano <BESTAND>` | Open tekstverwerker in de terminal. |

---

## 9. Git Workflow
| Taak | Commando | Toelichting |
| :--- | :--- | :--- |
| Initialiseren | `git init` | Maak een nieuwe lokale Git-repository aan in de huidige map. |
| Status checken | `git status` | Bekijk gewijzigde bestanden en bestanden in de 'staging area'. |
| Alles klaarzetten | `git add .` | Voeg alle gewijzigde bestanden toe om ge-commit te worden. |
| Opslaan (Commit) | `git commit -m "bericht"` | Sla je wijzigingen lokaal op met een korte omschrijving. |
| Remote linken | `git remote add origin <URL>` | Koppel je lokale repo aan een online GitHub/GitLab-project. |
| Uploaden (Push) | `git push` | Stuur je lokale commits naar de online (remote) repository. |

---

# Wachtwoordkluis

| **Variabele** | **Inhoud** |
| :--- | :--- |
| **Resourcegroep** | SELab-Wordpress |
| **Naam databankserver** | dv-wordpressdb |
| **DNS-naam databankserver** | bv. "ta-wordpressdb.mysql.database.azure.com" <br> *(Terug te vinden op de overzichtspagina in Azure)* |
| **Beheerder databankserver** | deyssi |
| **Wachtwoord databankserver** | KihlEhb@05 |
| **Naam applicatieserver (Ubuntu)** | bv. "ta-wordpressapp" |
| **DNS-naam applicatieserver** | bv. "ta-wordpressapp.westeurope.cloudapp.azure.com" <br> *(Terug te vinden op de overzichtspagina in Azure)* |
| **Gebruikersnaam applicatieserver** | deyssi |
| **Wachtwoord applicatieserver** | KihlEhb@0512 |
| **WordPress db user** | bv. "wordpress" |
| **Wachtwoord WordPress db user** | bv. "wordpresspwd" |
| **WordPress user** | admin |
| **WordPress user password** | Srro@H%E@1iKllIZUj (gegenereerd) |


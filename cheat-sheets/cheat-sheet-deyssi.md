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

## 10. Troubleshooting
| Taak | Commando | Toelichting |
| :--- | :--- | :--- |
|Interface omhoog brengen|`sudo ip link set <INTERFACE> up`|Zet een netwerkinterface handmatig in de UP-staat.|
|Netplan toepassen|`sudo netplan apply`| Past de netwerkconfiguratie uit het YAML-bestand onmiddellijk toe.|
|SSH socket stoppen|`sudo systemctl stop ssh.socket`|Stopt de SSH socket die anders de sshd-instellingen kan overschrijven.|
|SSH socket uitschakelen|`sudo systemctl disable ssh.socket`| Voorkomt dat de SSH socket automatisch herstart bij het opstarten.|
|Poort & proces check|`sudo ss -tlnp | grep <POORT>`|Controleer op welk IP-adres en poort een service luistert.|
|Internet testen|`ping -c 3 8.8.8.8`|Stuurt 3 pakketten naar Google DNS om internetverbinding te testen.|

---

## 11. Cisco IOS (gegenereerd)

| Taak | Commando | Toelichting |
| :--- | :--- | :--- |
| **CLI modes** | | |
| User EXEC | `Router>` | Beperkte weergave. Standaard bij opstarten. |
| Privileged EXEC | `Router#` via `enable` | Volledige weergave + beheer. Geen configuratie. |
| Global Config | `Router(config)#` via `configure terminal` | Alle globale instellingen van het toestel. |
| Interface Config | `Router(config-if)#` via `interface g0/0/0` | Instellingen per interface (IP, beschrijving…). |
| Line Config | `Router(config-line)#` via `line console 0` of `line vty 0 4` | Instellingen voor console/VTY lijnen (SSH, wachtwoord…). |
| Terugkeren | `exit` | Één niveau terug. |
| Naar Privileged EXEC | `end` of Ctrl+Z | Direct vanuit elke config-modus. |
| **Navigatie & shortcuts** | | |
| Naar Privileged EXEC | `enable` | Vanuit User EXEC. |
| Terug naar User EXEC | `disable` | Vanuit Privileged EXEC. |
| Naar Global Config | `configure terminal` / `conf t` | Vanuit Privileged EXEC. |
| Commando aanvullen | Tab | Automatisch aanvullen. |
| Lijst commando's | `?` | Alle commando's in huidige modus. |
| Opties na commando | `show ip int ?` | Toon beschikbare opties. |
| Vorig commando | pijltje omhoog / Ctrl+P | Geschiedenis doorlopen. |
| Commando ongedaan maken | `no` voor het commando | Bv. `no shutdown`, `no ip address`. |
| Show vanuit config modus | `do show run` | Geen `end` nodig om iets te controleren. |
| Paginering uitschakelen | `terminal length 0` | Geen `--more--` meer bij lange output. |
| Output filteren | `show run \| include ip` | Filteren op keyword. |
| Sectie tonen | `show run \| section interface` | Toon alle interface-secties. |
| Vanaf keyword tonen | `show run \| begin router` | Toon config vanaf "router". |
| **Basisconfiguratie** | | |
| Naam instellen | `hostname R1` | Vanuit Global Config. |
| Wachtwoord privileged EXEC | `enable secret cisco` | Geëncrypteerd (gebruik dit, niet `enable password`). |
| Alle wachtwoorden encrypteren | `service password-encryption` | Encryteert plaintext-wachtwoorden in de config. |
| DNS lookups uitschakelen | `no ip domain-lookup` | Voorkomt vastlopen bij typfouten. |
| MOTD instellen | `banner motd #boodschap#` | Gebruik willekeurig scheidingsteken. |
| Console wachtwoord | `line console 0` → `password cisco` → `login` | Vraagt om wachtwoord bij consoletoegang. |
| Sessie timeout | `exec-timeout 5 0` | Timeout na 5 min. `0 0` = nooit. |
| Log synchroniseren | `logging synchronous` | Voorkomt dat logberichten je typen onderbreken. |
| Config opslaan | `copy running-config startup-config` of `wr` | Vanuit Privileged EXEC. |
| Toestel herladen | `reload` | Herstart het toestel. |
| Startup config wissen | `erase startup-config` | Factory reset. |
| **IPv4** | | |
| Interface selecteren | `interface g0/0/0` of `int g0/0/0` | Vanuit Global Config. |
| IPv4-adres instellen | `ip address 192.168.1.1 255.255.255.0` | Vanuit Interface Config. |
| Beschrijving instellen | `description LAN to SW1` | Vanuit Interface Config. |
| Interface activeren | `no shutdown` | Interfaces staan standaard uit op een router. |
| Interface uitzetten | `shutdown` | Vanuit Interface Config. |
| IP-adres verwijderen | `no ip address` | Vanuit Interface Config. |
| Default route | `ip route 0.0.0.0 0.0.0.0 10.0.0.2` | Gateway of last resort via next-hop IP. |
| Statische route | `ip route 192.168.2.0 255.255.255.0 10.0.0.2` | Naar specifiek netwerk via next-hop IP. |
| Statische route verwijderen | `no ip route ...` | Zelfde syntax als aanmaken. |
| **IPv6** | | |
| IPv6 routing activeren | `ipv6 unicast-routing` | Verplicht op elke router. Vanuit Global Config. |
| GUA instellen | `ipv6 address 2001:db8:acad:1::1/64` | Vanuit Interface Config. |
| LLA manueel instellen | `ipv6 address fe80::1 link-local` | Vanuit Interface Config. |
| SLAAC (autoconfig) | `ipv6 address autoconfig` | Interface maakt zelf een GUA aan. |
| IPv6 default route | `ipv6 route ::/0 2001:db8:acad:2::2` | Vanuit Global Config. |
| IPv6 statische route via LLA | `ipv6 route 2001:db8:acad:3::/64 g0/0/1 fe80::2` | Interface verplicht vermelden bij LLA next-hop. |
| **Routing & routeringstabel** | | |
| IPv4 routeringstabel | `show ip route` | Vanuit Privileged EXEC. |
| IPv6 routeringstabel | `show ipv6 route` | Vanuit Privileged EXEC. |
| C | Connected | Direct verbonden netwerk. |
| L | Local | IP-adres van de interface zelf (/32 of /128). |
| S | Static | Handmatig ingestelde route. |
| S* | Static default | Gateway of last resort. |
| **SSH** | | |
| Domeinnaam instellen | `ip domain-name selabs.local` | Verplicht voor RSA-sleutelgeneratie. |
| RSA-sleutelpaar aanmaken | `crypto key generate rsa` | Kies 2048 bits. |
| SSH versie 2 forceren | `ip ssh version 2` | |
| SSH timeout instellen | `ip ssh time-out 60` | In seconden. |
| Max. inlogpogingen | `ip ssh authentication-retries 4` | |
| Lokale gebruiker aanmaken | `username admin secret cisco` | |
| VTY lines selecteren | `line vty 0 4` | 5 gelijktijdige sessies. |
| Alleen SSH toelaten | `transport input ssh` | Schakelt telnet uit (telnet = plaintext). |
| Lokale login gebruiken | `login local` | Gebruik lokale gebruikersdatabase bij inloggen. |
| SSH verbinding maken | `ssh -l admin 192.168.1.1` | Vanuit PC-terminal in Packet Tracer. |
| SSH via IPv6 | `ssh -l admin 2001:db8::1` | Werkt ook met IPv6-adres. |
| SSH status bekijken | `show ip ssh` | Versie en status. |
| Actieve SSH sessies | `show ssh` | |
| **Show commando's** | | |
| Huidige config | `show running-config` | Actieve configuratie in RAM. |
| Opgeslagen config | `show startup-config` | Config in NVRAM. |
| IOS versie & hardware | `show version` | |
| Alle interfaces (uitgebreid) | `show interfaces` | Stats, MAC-adres, fouten. |
| Specifieke interface | `show interfaces g0/0/0` | |
| IPv4-adressen + status | `show ip interface brief` | Compact overzicht van alle interfaces. |
| IPv6-adressen + status | `show ipv6 interface brief` | |
| IPv6 details interface | `show ipv6 interface g0/0/0` | Toont LLA en GUA. |
| ARP-tabel | `show arp` | IP → MAC mappings. |
| IPv6 neighbor table | `show ipv6 neighbors` | Equivalent van ARP voor IPv6. |
| Ping IPv4 | `ping 192.168.1.1` | |
| Ping IPv6 | `ping 2001:db8::1` | |
| Traceroute | `traceroute 192.168.1.1` | Route volgen naar doel. |
| Ingelogde gebruikers | `show users` | |
| Systeemtijd | `show clock` | |
| Commandogeschiedenis | `show history` | |
| **Switch-specifiek** | | |
| MAC-adrestabel | `show mac address-table` | IP → MAC via switch. |
| VLAN overzicht | `show vlan brief` | |
| Management interface | `interface vlan 1` | Voor IP-adres op switch. |
| Default gateway switch | `ip default-gateway 192.168.1.1` | Switch doet geen routing, enkel gateway instellen. |


# Wachtwoordkluis

| **Variabele** | **Inhoud** |
| :--- | :--- |
| **Resourcegroep** | SELab-Wordpress |
| **Naam databankserver** | dv-wordpressdb |
| **DNS-naam databankserver** | dv-wordpressdb.mysql.database.azure.com |
| **Beheerder databankserver** | deyssi |
| **Wachtwoord databankserver** | KihlEhb@05 |
| **Naam applicatieserver (Ubuntu)** | dv-wordpressapp |
| **DNS-naam applicatieserver** | dv-wordpressapp.westeurope.cloudapp.azure.com |
| **Gebruikersnaam applicatieserver** | deyssi |
| **Wachtwoord applicatieserver** | KihlEhb@0512 |
| **WordPress db user** | wordpress |
| **Wachtwoord WordPress db user** | wordpresspwd |
| **WordPress user** | admin |
| **WordPress user password** | Srro@H%E@1iKllIZUj (gegenereerd) |


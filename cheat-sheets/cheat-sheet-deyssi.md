# Cheat sheets en checklists

> Student: Deyssi Vedzijeva

## Basiscommando's

| Taak                                                   | Commando                         |
| :----------------------------------------------------- | :------------------------------- |
| Bekijk IP-adressen van alle netwerkadapters            | `ip a`                           |
| Bekijk IP-adressen van alle netwerkadapters (classic)          | `ifconfig`                           |
| Overzicht tonen van alle actieve netwerkpoorten                                  | `sudo ss -tlnp`      |
|                                   |       |
| Schakelt de firewall in                                 | `sudo ufw enable`      |
| Toont of de firewall momenteel actief + overzicht alle netwerkports              | `sudo ufw status`      |
| IP adres whitelisten              | `sudo ufw allow from IP_address`      |
|                                   |       |
|                                   |       |
| FAIL2BAN: Zien welke jails geconfigureerd zijn                                  |  `sudo fail2ban-client status`     |
| FAIL2BAN: Zien welke IP-adressen geblokkeerd zijn                               |  `sudo fail2ban-client status sshd`     |
| FAIL2BAN: De findtime, maxretry en bantime opvragen van de sshd jail                          |  `sudo fail2ban-client get sshd findtime/maxretry/bantime`   |
| FAIL2BAN: Jouw IP-adres terug vrijmaken zonder te wachten tot de blokkeertijd verlopen is      | `sudo fail2ban-client set sshd unbanip IP-adres`    |
|                                   |       |
|                                   |       |
|                                   |       |
| Bekijk de status van een service                       | `systemctl status SERVICE`       |
| Start een service                                      | `sudo systemctl start SERVICE`   |
| Stop een service                                       | `sudo systemctl stop SERVICE`    |
| Herstart een service                                   | `sudo systemctl restart SERVICE` |
| Zet een service aan                                     | `sudo systemctl enable SERVICE`   |
|                                   |       |
| Update de package repositories (Ubuntu & Debian based) | `sudo apt update`                |
| Installeer een package (Ubuntu & Debian based)         | `sudo apt install PACKAGE`       |
| Installeer applicatie via brew                         | `brew install APPLICATIE`        |
| Maak een map                                           | `mkdir PAD/MAPNAAM`              |
| Verplaats map/bestand                                  | `mv HUIDIGE/PAD NIEUWE/PAD`      |
| Verwijder bestand                                      | `rm BESTANDNAAM`                 |
| Gedownloade pakket installeren                                  | `sudo dpkg -i BESTANDNAAM.deb`      |
| Bestand aanpassen via nano                                  | `sudo nano PAD/NAAR/BESTAND`      |
|                                   |       |
|                                   |       |
|                                   |       |
| Automatische schermvergrendeling                                  | `gsettings set org.gnome.desktop.screensaver lock-enabled false`     |
|                                   |       |
|                                   |       |
| MySQL Console openen (omdat de root gebruiker nu een wachtwoord heeft)           | `mysql -u root -p`                      |
| Start de MySQL interactieve shell                                   | `sudo mysql`      |
|                                   |       |
|                                   |       |
|                                   |       |
| Inloggen vanaf je fysieke systeem via ssh naar VM                                      | `ssh USERNAME@IP-ADRESS`                 |
|                                   |       |
| Verander wachtwoord                                  | `passwd`      |
|                                   |       |
| Systeem afsluiten                                  | `sudo poweroff`      |








## Git workflow

Simpele git workflow voor projecten met een enkele branch en zonder contributors.

| Task                                                               | Command                                            |
| :----------------------------------------------------------------- | :--------------------------------------------------|
| Git initialiseren                                                  | `git init`                                         |
| Haal de online bestanden op                                        | `git pull origin main --allow-unrelated-histories` |
| Map linken aan nieuwe github repo                                  | `git remote add origin URL/HITHUB/REPO`            |
| Lijstje laten zien van alle gekoppelde remotes en hun URL          | `git remote -v`                                    |
| Status van het huidige project                                     | `git status`                                       |
| Selecteer te committen bestanden                                   | `git add FILE...`                                  |
| Selecteer te ALLE committen bestanden                              | `git add .`                                        |
| Commit alle wijzigingen naar de lokale repository                  | `git commit -m 'MESSAGE'`                          |
| Selecteer alle bestanden EN commit naar de lokale repository       | `git commit -am 'MESSAGE'`                         |
| Push lokale wijzigingen naar de remote repository                  | `git push`                                         |
| Haal alle wijzigingen van de remote repository binnen in de lokale | `git pull`                                         |
| Update git project lokaal                                          | `git fetch`                                        |
| Branch maken en erin gaan (obv de dir waarin je zit)               | `git checkout -b NAAM/BRANCH`                      |


## Checklist netwerkconfiguratie

1. Is het IP-adres correct? `ip a`/ `ifconfig`
2. Is de router/default gateway correct? `ip r -n`
3. Is een DNS-server ingesteld? `cat /etc/resolv.conf`


# Wachtwoordkluis

| **Variabele**                    | **Inhoud**                                                                                                                |
| -------------------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| Resourcegroep                    | SELab-Wordpress                                                                                                           |
| Naam databankserver              | dv-wordpressdb                                                                          |
| DNS-naam databankserver          | bv. "ta-wordpressdb.mysql.database.azure.com"<br />(terug te vinden op de overzichtspagina van de machine in Azure)       |
| Beheerder databankserver         | deyssi                                                                                                               |
| Wachtwoord databankserver        | KihlEhb@05                                                                                               |
| Naam applicatieserver (Ubuntu)   | bv. "ta-wordpressapp"                                                                                                     |
| DNS-naam applicatieserver        | bv. "ta-wordpressapp.westeurope.cloudapp.azure.com"<br />(terug te vinden op de overzichtspagina van de machine in Azure) |
| Gebruikersnaam applicatieserver  | deyssi                                                                                                              |
| Wachtwoord applicatieserver      | KihlEhb@0512                                                                                         |
| WordPress db user                | bv. "wordpress"                                                                                                           |
| Wachtwoord van WordPress db user | bv. "wordpresspwd"                                                                                                        |
| WordPress user                   | admin                                                                                                                     |
| WordPress user password          | Srro@H%E@1iKllIZUj (gegenereerd)                                                                                          |


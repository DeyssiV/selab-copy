# Verslag: 3-webserver

> Naam verslaggever: Jonas De Reuse

## Beschrijving

In deze opdracht breiden we de virtuele machine uit die eerder werd opgezet als databaseserver. Het doel is om een volledige webserveromgeving te configureren op Linux. Je installeert Apache, configureert SSH‑toegang, publiceert een statische website en beveiligt de server met SSL, een firewall en fail2ban. Uiteindelijk moet de website die op de VM draait zichtbaar zijn op het fysieke hostsysteem via HTTPS.

De opdracht focust op:
- het installeren en configureren van Apache
- het instellen van SSH‑toegang en bestandskopie via SFTP
- het publiceren van een website in de Document Root
- het activeren van SSL/TLS
- het configureren van UFW‑firewallregels
- het beveiligen van SSH met fail2ban


## Antwoorden op de vragen in de opdracht

Voeg hieronder de antwoorden op de vragen in de opdracht toe. Gebruik voor elke vraag een aparte sectie.

### Vraag 1 - Luistert de Apache netwerkservice alleen naar de loopback-interface zoals MySQL? Of is de service meteen ook van buitenaf toegankelijk? Hoe controleer je dit?
Apache luistert standaard op **alle netwerkinterfaces**. Je kan dit controleren met `ss -tlnp`. Je ziet dan dat Apache luistert op 0.0.0.0 dar betekent dat de service extern bereikbaar is.

### Vraag 2 - Zal de Apache service opstarten (enabled) bij het opstarten van de VM? Hoe controleer je dit?
Je kan dit controleren met `systemctl status apache2` .

### Vraag 3 - Wat is het pad naar de Document Root?
Je kan dit controleren met `/var/www/html`.

### Vraag 4 - Met welke twee commando's kan je controleren of de SSH-server draait, en op welke poort?
met systemctl status ssh kan je controleren of ssh draait en met `sudo ss -tlnp` kan je kijken op welke poort.

### Vraag 5 - Welke netwerkpoort wordt gebruikt voor HTTPS? Met welk commando kan je dit opzoeken?
Je kan dit opzoeken met `sudo ss -tlnp` en voor HTTPS wordt poort 443 gebruikt.

### Vraag 6 - Met welk commando kan je de status van de firewall met een overzicht van alle toegelaten poorten opvragen?
Je kan dit vinden met `sudo ufw status verbose`.

### Vraag 7 - Hoe kan je opzoeken of fail2ban automatisch start bij het opstarten van de VM?
Je kan dit vinden met `systemctl status fail2ban`, als er dan enabled staat wil dit zeggen dat het automatisch opstart.

### Vraag 8 - Wat doen de parameters findtime, maxretry en bantime?
- findtime – tijdsperiode waarin fail2ban mislukte pogingen telt
- maxretry – aantal toegestane mislukte pogingen binnen de findtime
- bantime – duur van de blokkering na te veel mislukte pogingen

### Vraag 9 - Hoe gebruik je de fail2ban command line client om informatie op te vragen?
| Taak                                                   | Commando                          |
| :----------------------------------------------------- | :-------------------------------  |
| Geconfigureerde jails bekijken                         | `sudo fail2ban-client status`     |
| Geblokkeerde IP-adressen bekijken                      | `sudo fail2ban-client status sshd`|
| findtime opvragen                                      | `sudo fail2ban-client get sshd findtime`    |
| maxretry opvragen                                      | `sudo fail2ban-client get sshd maxretry`     |
| bantime  opvragen                                 | `sudo fail2ban-client get sshd bantime`  |
| een Ip-adres unbannen                                  | `sudo fail2ban-client set sshd unbanip <IP-adres>` |







## Evaluatiecriteria

Toon na het afronden het resultaat aan je begeleider. Elk teamlid moet in staat zijn om het resultaat te demonstreren bij de oplevering van deze opdracht! Criteria voor beoordeling:

- [X] Je kan de VM opstarten.
- [X] Je kan met WinSCP/Cyberduck bestanden naar de Document Root kopiëren.
- [X] De website is zichtbaar via https://192.168.56.20.
- [X] De firewall is actief en de juiste poorten zijn toegelaten:
- [X] SSH/SFTP werkt nog.
- [X] MySQL Workbench kan verbinden.
- [X] De website blijft bereikbaar.
- [X] Fail2ban is actief.
- [X] De inhoud van jail.local kan getoond en toegelicht worden.
- [X] De waarden van findtime, maxretry en bantime kunnen getoond worden.
- [X] Fail2ban blokkeert jouw IP na te veel foutieve SSH‑pogingen.
- [X] Een whitelisted IP wordt niet geblokkeerd.
- [X] Er is een verslag gemaakt volgens het template.
- [X] Elk teamlid heeft de cheat sheet aangevuld.
- [X] Alle ❓-vragen zijn correct beantwoord.


## Problemen en oplossingen

 Geen problemen ondervonden.


## Voorbereiding demo

Tijdens de demo tonen we:
- VM opstarten in VirtualBox
- Website openen via https://192.168.56.20
- Firewallstatus tonen met:
`sudo ufw status verbose`
- SSH‑toegang demonstreren
- fail2ban‑status tonen:
sudo fail2ban-client status sshd
- Blokkering simuleren door foutieve SSH‑pogingen
- Whitelist‑gedrag demonstreren met een tweede VM


## Reflecties

Deze opdracht gaf me een duidelijker beeld van hoe een Linux‑webserver in de praktijk werkt. 
Het installeren van Apache en het publiceren van een website ging vrij vlot, maar vooral de beveiliging met firewall en fail2ban vroeg wat meer aandacht. 
Kleine fouten hadden meteen impact, waardoor ik leerde om systematisch te controleren: draait de service, luistert de poort, laat de firewall het verkeer door? 
Het testen van fail2ban was interessant, zeker omdat je meteen merkt hoe snel je jezelf kunt blokkeren. Als ik de opdracht opnieuw zou doen, zou ik sneller snapshots nemen en mijn stappen beter documenteren.
Over het geheel was het een leerrijke oefening die goed toont hoe servers in de echte wereld worden beheerd en beveiligd.

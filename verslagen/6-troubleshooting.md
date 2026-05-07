# Verslag: Opdracht 6 - Troubleshooting Web-omgeving

> **Naam verslaggever:** Louis Appeltants

## Beschrijving
In deze opdracht hebben we geleerd om een bestaande, defecte serveromgeving te analyseren en te herstellen. Het doel was om verschillende diensten (Apache, WordPress, MySQL en Docker) weer correct te laten functioneren.

---

## Antwoorden op de vragen in de opdracht

### Vraag 1 - Waarom werkte de Apache Default Page in eerste instantie niet op HTTPS?
De firewall (UFW) blokkeerde poort 443 en de configuratie van de tweede netwerkadapter (Host-Only) in de VM stond niet goed ingesteld in de Netplan-bestanden.

### Vraag 2 - Welk commando gebruik je om te kijken of een service zoals MySQL luistert op een poort?
`sudo ss -tulnp | grep 3306`

### Vraag 3 - Wat betekent een "403 Forbidden" error bij WordPress?
Dit betekent dat de webserver (Apache) de bestanden wel heeft gevonden, maar dat de rechten op de map `/var/www/wordpress` onjuist waren of dat de PHP-module niet geladen was.

### Vraag 4 - Waarom is een SSH-tunnel veiliger voor databasebeheer?
Omdat de database-poort (3306) dan niet open hoeft te staan voor het publieke internet. De verbinding loopt via een beveiligde SSH-verbinding (poort 22), waardoor hackers niet direct bij de database kunnen.

---

## Evaluatiecriteria

- [x] Er is een volledig werkende virtuele machine volgens de eindsituatie.
  - [x] De VM heeft toegang tot internet en kan gepingd worden op 192.168.56.20.
  - [x] De webserver is beschikbaar op <https://192.168.56.20> met de nodige SFTP-mogelijkheden.
  - [x] De databank is beschikbaar via MySQL Workbench op 192.168.56.20:3306 (`appusr letmein!`).
  - [x] De WordPress-website is beschikbaar via <http://192.168.56.20:8080> (`wpuser letmein!`).
  - [x] De VM is bereikbaar via SSH op 192.168.56.20:22 (`trouble shoot`).
  - [x] De Docker services zijn correct geconfigureerd:
    - [x] Vaultwarden is bereikbaar op <https://192.168.56.20:4123> (`troubleshoot@selabs.hogent.be shootthetrouble`).
    - [x] Portainer is bereikbaar op <https://192.168.56.20:9443> (`admin troubleshoot`).
    - [x] Minetest is bereikbaar op <https://192.168.56.20:30000> (`trouble shoot`).
    - [x] Planka is bereikbaar op <http://192.168.56.20:3000> (`[trouble OF troubleshoot@selab.hogent.be] shoot`).
- [x] Er is een verslag gemaakt op basis van de template.
  - [x] Het verslag bevat een duidelijke beschrijving van de gevonden problemen en de oplossingen. **Per type machine is er een aparte beschrijving!**
- [x] Elk teamlid heeft de eigen cheat sheet aangevuld met nuttige commando's uit deze opdracht.

---

## Problemen en oplossingen

### Probleem 1 - WordPress Database Connection Error
WordPress kon geen verbinding maken met de database omdat het configuratiebestand (`wp-config.php`) foute inloggegevens en een onjuiste databasenaam bevatte.
* **Oplossing:** Het bestand aangepast zodat het verwijst naar de juiste database `appdb` met de gebruiker `appusr` en het wachtwoord `letmein!`.

### Probleem 2 - SSH-tunnel voor MySQL Workbench
De database was niet direct bereikbaar vanaf de hostcomputer omdat de bind-address beveiliging alleen lokale verbindingen toeliet.
* **Oplossing:** In MySQL Workbench de verbindingsmethode aangepast naar `Standard TCP/IP over SSH`, waarbij we eerst inloggen op de VM als gebruiker `trouble` om daarna intern door te verbinden naar de database.

### Probleem 3 - WordPress "Forbidden" melding
Ondanks dat de bestanden aanwezig waren, negeerde Apache de WordPress-map op poort 8080.
* **Oplossing:** De eigendomsrechten hersteld met `chown -R www-data:www-data` en de PHP-module voor Apache opnieuw geactiveerd.

## Schijf 5 (Deyssi Vedzijeva)
### Probleem 1: Netwerk
Bij het opstarten van de VM was de netwerkinterface eth0 in de DOWN-staat. Via `ip a` en `cat /etc/netplan/*.yaml` heb ik drie fouten gevonden in het netplan-configuratiebestand:

#### 1. De ethernets-namen waren verkeerd: enp0s3 en enp0s8 bestaan niet op mijn VM in UTM. Het moest eth0 (internet) en eth1 (host-only) zijn.
#### 2. Bij de interface met het statisch IP stond dhcp4: true, terwijl dit false moet zijn voor een vast IP-adres.
#### 3. Het IP-adres was verkeerd ingesteld: 192.168.56.56 in plaats van 192.168.56.20.

**Oplossing:** Het bestand `/etc/netplan/*.yaml` heb ik correct aangepast. En met `sudo netplan apply` heb ik mijn wijzigingen opgeslagen.

### Probleem 2: SSH
De SSH-service was disabled en inactive, waardoor er geen externe SSH-verbinding mogelijk was. Bovendien was de firewall actief en was poort 22 geblokkeerd. Daarna gaf het via mijn MAC terminal als ik vie ssh probeerde in te loggen 'connection refused'. Ook dit `sudo ss -tlnp` gaf geen poort 22 maar 22222 en ipv 0.0.0.0 host was de luisteradres localhost (127.0.0.1). Bij het stoppen avn ssh was er ook een onnodige actieve ssh.socket bestand actief.

**Oplossing:** De service werd gestart en enabled met: `sudo systemctl enable ssh` en `sudo systemctl start ssh` ook laten doorgaan via firewall met `sudo ufw allow 22`. Nadien met dit `sudo nano /etc/ssh/sshd_config` de poort en listenaddress aangepast. Daarna ook met `sudo systemctl stop ssh.socket`en `sudo systemctl disable ssh.socket` de onnodige bestand weggedaan. 
  
### Probleem 3: MySQL
Ook hier was de service van MySQL niet active of enabled. De wpdb werd niet gebruikt door MySQL. 

**Oplossing:** De service werd gestart en enabled met: `sudo systemctl enable mysql` en `sudo systemctl start mysql`. En met `SELECT database();` controleren welke db in gebruik, was NULL dus met `USE wpdb;` is het in orde.

### Probleem 4: Planka
Bij het uitvoeren van `docker compose ps` kreeg ik de foutmelding: `services.planka.environment.[2]: unexpected type <nil>`
Na het vergelijken van docker-compose.yml bestand met een vb. bestand op GitHub bleek dat de SECRET_KEY-variabele in commentaar stond

**Oplossing:** De commentaartekens werden verwijderd zodat de regel actief werd. En daarna opnieuw gestart : `docker compose up -d` en `docker compose ps`.

## Schijf 5 (Silas Pauwels)
### Probleem 1: Netwerk
PROBLEEM: geen access tot juist ip adres
OPLOSSING: sudo nano /etc/netplan/01-network-manager-all.yaml
origineel ip adres: 192.168.56.56/24  --> verandert naar: 192.168.56.20
sudo netplan apply

### Probleem 2: apache
PROBLEEM: geen verbinding tot apache
OPLOSSING: apache2 starten 
  
### Probleem 3: MySQL
PROBLEEM: geen access tot database
OPLOSSING: SELECT user, host FROM mysql.user; | kijken welke users er bestaan
wpuser aanmaken

### Probleem 4: Vaultwarden
PROBLEEM: kon niet connecten op vaultwarden
OPLOSSING: vaultwarden verander port van 80 -> 4123 | maak env variabele VAULTWARDEN_ADMIN_TOKEN | rocket_tls verander naar /opt/keys/*



### Probleem 5: Portainer
PROBLEEM: error met bind mount
OPLOSSING:in YAML file /data:portainer_data -> portainer_data:/data
PROBLEEM: failure unauthorized
OPLOSSING: volume verwijderen en opnieuw laten aanmaken

---

## Voorbereiding demo
Tijdens de demo laat ik zien dat de VM schoon draait zonder onnodige open poorten. Ik toon de werkende WordPress-site op `http://192.168.56.20:8080` inclusief de vereiste blogpost. 
ook laat ik via Portainer zien dat de Docker-stack (Vaultwarden en Planka) de status "Running" heeft. En tot slot `https://192.168.56.20` om de apach2 website te tonen.

---

## Reflectie
Het meest leerzame aan deze opdracht was het feit dat één kleine fout (zoals een typefout in een database-naam) een hele keten aan diensten kan platleggen. Het herstellen van een omgeving vereist meer inzicht dan het opbouwen vanaf nul, omdat je methodisch elke laag (Netwerk -> Firewall -> Webserver -> Database) moet controleren.

---

## Bronnen
* Docker Documentation. (z.d.). *Docker Compose Overview*. https://docs.docker.com/compose/
* Apache Foundation. (z.d.). *VirtualHost documentation*.
* WordPress.org. (z.d.). *Common WordPress Errors*.

* https://github.com/plankanban/planka/blob/master/docker-compose.yml

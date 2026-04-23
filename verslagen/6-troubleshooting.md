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

- [x] Apache Default Page is bereikbaar via HTTPS (443).
- [x] WordPress is volledig hersteld op poort 8080.
- [x] De database `appdb` is bereikbaar via MySQL Workbench over een SSH-tunnel.
- [x] Docker-containers (Vaultwarden, Portainer, Planka) draaien en zijn bereikbaar.
- [x] De gebruiker `admin` heeft lokaal toegang tot MySQL met het wachtwoord `letmein!`.
- [x] Er is een nieuwe blogpost aangemaakt op de WordPress-site.

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

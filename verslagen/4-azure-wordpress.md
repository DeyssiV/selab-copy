# Verslag: 4-azure-wordpress

> Naam verslaggever: Silas Pauwels

## Beschrijving

In deze opdracht is het de bedoeling dat we via het cloudplatform Microsoft Azure een applicatie- en databankserver online zetten.


## Antwoorden op de vragen in de opdracht


### Vraag 1 - Wat is het verschil tussen beide?
sites-available: Dit zijn alle mogelijke configuraties

sites-enabled: Dit zijn alle actieve configuraties

### Vraag 2 - Wat is het verschil tussen beide? Waarom kiezen we voor systemctl?
systemctl gebruikt systemd, de moderne standaard, terwijl `sudo service reload apache2` gebruik maakt van een oudere services beheer systeem (SysVinit)

### Vraag 3 - Wat is de betekenis van sudo -u www-data in dit commando?
Het zorgt ervoor dat het commando wordt uitgevoerd als de gebruiker www-data, die al de juiste rechten heeft om het bestand te kunnen bewerken.

## Evaluatiecriteria

Toon na het afronden het resultaat aan je begeleider. Elk teamlid moet in staat zijn om het resultaat te demonstreren bij de oplevering van deze opdracht! Criteria voor beoordeling:

- [x] Je kan de aangemaakte resources tonen in de Azure omgeving.
- [x] Je kan een SSH-verbinding opzetten met de applicatieserver.
- [x] Je kan via de de applicatieserver aanmelden op de MySQL databankserver.
- [x] Je kan met HTTPS surfen naar jouw WordPress blog.
- [x] Je kan aanmelden en het WordPress dashboard tonen.
- [x] Je kan een nieuw bericht posten op jouw WordPress blog.
- [x] Er is een verslag gemaakt op basis van het template.
- [x] Er is een correct antwoord gegeven op de vragen die zijn aangeduid met een :question:.
- [x] Elk teamlid heeft de eigen cheat sheet aangevuld met nuttige commando's uit deze opdracht.


## Problemen en oplossingen

 Deployment Validation Failed.
 
 Oplossing: De regio waar de server gehost wordt moest aangepast worden, hiervoor moest ik kijken naar de policy.
 
 De grootte van de VM in het voorbeeld was niet meer beschikbaar.
 
 Oplossing: een andere versie kiezen die ongeveer even goedkoop is.


## Voorbereiding demo


## Reflecties

In deze opdracht heb ik geleerd dat het zeer belangrijk is dat je met Bash en Linux-commando's kunt werken als je bezig bent met het configureren van servers. Door te werken met Microsoft Azure heb ik een beter beeld gekregen van hoe een cloudomgeving in elkaar zit en hoe virtuele machines werken. Daarnaast heb ik geleerd hoe een webapplicatie en databaseserver samenwerken om een WordPress-website goed te laten functioneren. Deze opdracht heeft zeker bijgedragen aan het verdiepen van mijn technische kennis.

## Bronnen
Difference in sites-available vs sites-enabled vs conf.d directories (Nginx)? https://serverfault.com/questions/527630/difference-in-sites-available-vs-sites-enabled-vs-conf-d-directories-nginx

natnat (2024, 4 februari). SysVinit vs SystemD. https://natnat1.medium.com/sysvinit-vs-systemd-88395a76e869

What is the www-data user? https://askubuntu.com/questions/873839/what-is-the-www-data-user


# Verslag: Opdracht 5 - Docker

> Naam verslaggever: Deyssi Vedzijeva
## Beschrijving

In deze opdracht hebben we geleerd met Docker en Docker Compose te werken. Het doel was om applicaties te virtualiseren in Docker. We hebben eigen password manager (Vaultwarden) opgezet en beheerpaneel Portainer. Daarnaast hebben we ook commando's overzichtelijke in YAML-bestanden voor Docker Compose kunnen insteken.

### Antwoorden op de vragen in de opdracht

#### Stap 1 - Installatie Docker in een VM

:question: Wat is ${USER}?

Dit is een omgevingsvariabele in Linux die de naam bevat van de huidige ingelogde gebruiker.

:question: Welk commando kan je gebruiken om jouw gebruikersnaam te bepalen?

```whoami```
 

#### Stap 2 - Installatie Vaultwarden

:question: Welke commando's gebruik je hiervoor?

Eerst ```docker pull vaultwarden/server``` en daarna ```docker run``` met de nodige ```-p``` (ports), ```-v``` (volumes) en ```-e``` (environment) parameters.

:question: Wat doet het ```docker pull``` commando?

Dit downloadt de gewenste image van Docker Hub naar je lokale machine.

:question: Hoe kan je alle lokale images bekijken?

```docker images```

:question: Hoe bekijk je alle lokaal draaiende containers?

```docker ps```

:question: Hoe bekijk je alle lokale containers (incl. de gestopte containers)?

```docker ps -a```

:question: Vaultwarden heeft HTTPS nodig om goed te functioneren. Waarom heeft Vaultwarden HTTPS nodig?

Omdat moderne browsers (zoals Chrome en Firefox) geen toegang geven tot de Crypto-API's (nodig voor het versleutelen van wachtwoorden) via een onveilige HTTP-verbinding.

:question: Waar bevinden de paden uit deze environment variabele (ROCKET_TLS) zich? Is dit op de host of in de container?

Deze bevinden zich in de container. De certificaten worden via een volume gemount van de host naar deze interne paden.

#### Stap 3 - Installatie Portainer

:question: Welke commando's gebruik je hiervoor?

```
docker run -d -p 9443:9443 
--name portainer 
--restart always -v /var/run/docker.sock:/var/run/docker.sock -v ~/.files-portainer:/data portainer/portainer-ce:latest
```

:question: Hoe stel je dit in? Wat is het verschil tussen een Docker volume (= volume) en een map op jouw VM gemount als volume (= bind mount)?

Een volume wordt volledig beheerd door Docker zelf in een specifieke map. Een bind mount is een directe koppeling naar een zelfgekozen map op je eigen bestandssysteem (zoals ```~/.files-portainer```)

:question: Kan je de Vaultwarden afsluiten en terug opstarten via Portainer?

Ja, via de "Containers" sectie in het Portainer dashboard kun je containers selecteren en acties zoals Start, Stop of Kill uitvoeren.

#### Stap 5 - Werken met een docker-compose.yml bestand

:question: Wat doet de ```-d``` optie?

Dit staat voor 'Detached mode'. Het zorgt ervoor dat de container op de achtergrond draait en de terminal weer vrijgeeft.

:question: Je maakt een enkel docker-compose.yml bestand met daarin beide containers in. Is dit verstandig? Waarom wel of niet?

Nee, dit is meestal niet verstandig. Als je ze in één bestand zet, worden ze als één 'stack' beheerd. Als je dan één applicatie wilt herstarten of verwijderen, beïnvloed je vaak ook de andere. Aparte mappen zorgen voor een betere isolatie.

:question: Hoe verwijder je eenvoudig alle containers uit een docker-compose.yml bestand zonder gebruik te maken van ```docker stop``` en ```docker rm```?

```docker compose down```

#### Stap 6 - Opruimen

:question: Hoe kan je met één commando alle containers, images, networks en volumes verwijderen die niet meer in gebruik zijn?

```sudo docker system prune -a --volumes```

:question: Je zal in de documentatie "unused images" en "dangling images" tegenkomen. Wat is het verschil tussen beide?

Dangling images zijn images zonder naam of tag (gecreëerd tijdens updates). 
Unused images zijn images die wel een naam hebben, maar niet gekoppeld zijn aan een actieve container.

## Evaluatiecriteria

- [X] De `docker-compose.yml` bestanden zijn te vinden op de GitHub repository van de groep.
- [X] Je kan alle instructies van Docker en Docker compose uitvoeren zonder `sudo` te gebruiken.
- [X] Je hebt Docker geïnstalleerd en kan dit aantonen met `docker --version`.
- [X] Je hebt Docker Compose geïnstalleerd en kan dit aantonen met `docker compose version`.
- [X] Je kan de command line instructies om een Vaultwarden container op te zetten toelichten.
- [X]Je kan de command line instructies om een Portainer container op te zetten toelichten.
- [X] Je kan een Vaultwarden container opzetten met het `docker compose` commando op de command line.
  - [X] Je kan surfen via HTTPS naar en inloggen op deze container op het fysieke systeem (bv. via <https://192.168.56.20>).
  - [X] Je hebt deze ook gekoppeld aan een web browser client op het fysieke systeem.
- [X] Je kan een Portainer container opzetten met het `docker compose` commando op de command line.
  - [X] Je kan surfen naar en inloggen op deze container op het fysieke systeem (bv. via <http://192.168.56.20>).
  - [X] Portainer en Vaultwarden worden op het Portainer dashboard weergegeven met als status "Running".
- [X] Er is slechts één container per image aanwezig op de VM.
- [X]Er is een verslag gemaakt op basis van het template.
- [X] Elk teamlid heeft de eigen cheat sheet aangevuld met nuttige commando's uit deze opdracht.
- [X] Er is een correct antwoord gegeven op de vragen die zijn aangeduid met een :question:.

## Problemen en oplossingen

#### Probleem 1 - Poortconflicten (Address already in use)

Bij het opstarten van de MySQL-container via Docker kreeg ik de melding dat poort 3306 al bezet was. Dit kwam doordat er nog een lokale MySQL-service draaide uit een vorige opdracht. 

#### Oplossing: 
Ik heb de lokale service gestopt met `sudo systemctl stop mysql` en uitgeschakeld met `disable`, zodat de Docker-container de poort kon overnemen.


## Voorbereiding demo
We kunnen controleren of de containers vaultwarden en portainer de status "Running" hebben in het Portainer dashboard. Ook de webinterface is bereikbaar op eigen host via IP-adres van VM. De Bitwarden-extensie in browser is gekoppeld aan Vaultwarden-server met een self-signed certificate. Bovendien als we een wachtwoord in de kluis maken is het ook zichtbaar in de extensie. 


## Reflecties
Door te werken met Docker en Docker Compose hebben we een een beeld gekregen van hoe containers werken en in elkaar zitten en hoe je verschillende applicaties kunt erin runnen. Daarnaast hebben we geleerd hoe een password manager zoals Vaultwarden en Portainer samenwerken om alles veilig te houden. Deze opdracht heeft ons geleerd over het beheer van applicaties binnen Docker en Docker Compose.


## Bronnen
Docker Documentation. (z.d.). Docker Compose Overview. https://docs.docker.com/compose/

Dani Garcia. (z.d.). Vaultwarden Usage & HTTPS. https://github.com/dani-garcia/vaultwarden

Portainer Documentation. (z.d.). Install Portainer CE on Linux. https://docs.portainer.io/start/install-ce/server/docker/linux



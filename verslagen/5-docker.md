# Verslag: Opdracht 5 - Docker

> Naam verslaggever: Deyssi Vedzijeva
## Beschrijving

In deze opdracht hebben we geleerd met Docker en Docker Compose te werken. Het doel was om applicaties te virtualiseren in Docker. We hebben eigen password manager (Vaultwarden) opgezet en beheerpaneel Portainer. Daarnaast hebben we ook commando's overzichtelijke in YAML-bestanden voor Docker Compose kunnen insteken.

## Antwoorden op de vragen in de opdracht

### Vraag 1 - Wat is ${USER}?

Dit is een omgevingsvariabele in Linux die de naam bevat van de huidige ingelogde gebruiker.

### Vraag 2 - Welk commando kan je gebruiken om jouw gebruikersnaam te bepalen?

whoami 

### Vraag 3 - Welke commando's gebruik je hiervoor?

Eerst docker pull vaultwarden/server en daarna docker run met de nodige -p (ports), -v (volumes) en -e (environment) parameters.

### Vraag 4 - Wat doet het docker pull commando?

Dit downloadt de gewenste image van Docker Hub naar je lokale machine.

### Vraag 5 - Hoe kan je alle lokale images bekijken?
docker images

### Vraag 6 - Hoe bekijk je alle lokaal draaiende containers?
docker ps

### Vraag 7 - Hoe bekijk je alle containers (incl gestopte)?
docker ps -a

### Vraag 8 - Waarom heeft Vaultwarden HTTPS nodig?
Omdat moderne browsers (zoals Chrome en Firefox) geen toegang geven tot de Crypto-API's (nodig voor het versleutelen van wachtwoorden) via een onveilige HTTP-verbinding.

### Vraag 9 - Waar bevinden de paden uit de ROCKET_TLS variabele zich?
Deze bevinden zich in de container. De certificaten worden via een volume gemount van de host naar deze interne paden.

### Vraag 10 - Welke commando's gebruik je hiervoor?
docker run -d -p 9443:9443 
--name portainer 
--restart always -v /var/run/docker.sock:/var/run/docker.sock -v ~/.files-portainer:/data portainer/portainer-ce:latest

### Vraag 11 - Wat is het verschil tussen een volume en een bind mount?
Een volume wordt volledig beheerd door Docker zelf in een specifieke map. Een bind mount is een directe koppeling naar een zelfgekozen map op je eigen bestandssysteem (zoals ~/.files-portainer)

### Vraag 12 - Kan je Vaultwarden afsluiten en opstarten via Portainer?
Ja, via de "Containers" sectie in het Portainer dashboard kun je containers selecteren en acties zoals Start, Stop of Kill uitvoeren.

### Vraag 13 - Wat doet de -d optie?
Dit staat voor 'Detached mode'. Het zorgt ervoor dat de container op de achtergrond draait en de terminal weer vrijgeeft.
 ### Vraag 14 - Is een enkel docker-compose.yml bestand voor beide verstandig?
Nee, dit is meestal niet verstandig. Als je ze in één bestand zet, worden ze als één 'stack' beheerd. Als je dan één applicatie wilt herstarten of verwijderen, beïnvloed je vaak ook de andere. Aparte mappen zorgen voor een betere isolatie.

### Vraag 15 - Hoe verwijder je eenvoudig alle containers uit een .yml bestand?
docker compose down

### Vraag 16 - Hoe kan je alles in één keer verwijderen?
sudo docker system prune -a --volumes

### Vraag 17 - Wat is het verschil tussen unused en dangling images?
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

###Probleem 1 - Poortconflicten (Address already in use)
Bij het opstarten van de MySQL-container via Docker kreeg ik de melding dat poort 3306 al bezet was. Dit kwam doordat er nog een lokale MySQL-service draaide uit een vorige opdracht. 

Oplossing: Ik heb de lokale service gestopt met sudo systemctl stop mysql en uitgeschakeld met disable, zodat de Docker-container de poort kon overnemen.


## Voorbereiding demo

Tijdens de demo laat ik zien dat mijn VM schoon is van oude installaties. Ik toon de verschillende mappen (~/vaultwarden-compose, ~/portainer-compose, etc.) en laat zien hoe ik met docker compose up -d een volledige service in de lucht breng.
Daarnaast surf ik naar Portainer om aan te tonen dat alle containers (inclusief de database en de webserver) centraal beheerd worden. Als extraatje laat ik de Minetest server zien en leg ik uit dat dit een dedicated server is: een machine die enkel de spelwereld host zonder dat er zelf op gespeeld wordt.

## Reflecties

Deze opdracht was zeer leerrijk omdat het de brug slaat tussen pure systeembeheer (Linux) en moderne applicatie-deployment. Het omvormen van lange docker run commando's naar overzichtelijke YAML-bestanden maakte duidelijk waarom Docker Compose de standaard is in de industrie. Het koppelen van een webserver aan een database-container (de Azure-uitbreiding) was het meest uitdagende maar ook het meest waardevolle deel.

## Bronnen
Docker Documentation. (z.d.). Docker Compose Overview. https://docs.docker.com/compose/

Dani Garcia. (z.d.). Vaultwarden Usage & HTTPS. https://github.com/dani-garcia/vaultwarden

Portainer Documentation. (z.d.). Install Portainer CE on Linux. https://docs.portainer.io/start/install-ce/server/docker/linux



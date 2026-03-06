# Verslag: SUBJECT

> Naam verslaggever: Louis Appeltants

## Beschrijving

We moesten een Databankserver leren installeren op een virtuele machine en de netwerkinstellingen veranderen. om een realistische testomgeving te hebben.

## Antwoorden op de vragen in de opdracht


### Vraag 1 - Waaraan zie je dat MySQL enkel luistert?

Je kan zien dat het enkel luistert omdat hij op het adres 127.0.0.1 zit en dit is het Loopback-adres. Dit dient enkel voor lokale verbindingen met dezelfde machine.

### Vraag 2 - Waarom 0.0.0.0 en niet 192.168.56.20?

Bij het adres 0.0.0.0 luistert MySQL naar alle netwerinterfaces, bij 192.168.56.20 luistert MySQL enkel naar het opgegeven ip adres. Dus als dit zou veranderen is de database niet meer toegankelijk.

### Vraag 3 - Waaraan zie je dat de wijziging effect heeft gehad?

Je kan zien bij de uitvoer van het commando `ss -tlnp` dat MySQL als luisteradres nu 0.0.0.0 heeft door de :3306 die erachter staat.

### Vraag 4 - Wat is het verschil met de vorige uitvoer van dit commando?

Nu is MySQL toegankelijk vanaf elke netwerkinterface, het verschil zit dus in de bereikbaarheid.
Het luisteradres voor MySQL is nu 0.0.0.0 in plaats van 127.0.0.1.

## Evaluatiecriteria

- [x] De VM start op en je kan inloggen:
  - [x] De VM heeft een host-only adapter en een NAT adapter met de correcte instellingen.
  - [x] Je kan pingen vanaf je fysieke systeem naar de host-only adapter van de VM.
  - [x] Je kan aantonen dat MySQL actief is op de VM en luistert op alle interfaces.
- [x] Je kan MySQL Workbench gebruiken om een connectie te maken met de databankserver:
  - [x] Je hebt een **werkende** connectie voor de admin-gebruiker.
  - [x] Je hebt een **werkende** connectie voor de applicatie-gebruiker.
- [x] Er is een verslag gemaakt op basis van het template.
- [x] Elk teamlid heeft de eigen cheat sheet aangevuld met nuttige commando's uit deze opdracht.
- [x] Er is een correct antwoord gegeven op de vragen die zijn aangeduid met een :question:.


## Problemen en oplossingen

Geen problemen ondervonden.




## Voorbereiding demo

# MySQL Bind-Address Aanpassing

Om te laten zien dat we MySQL konden configureren zodat het op alle netwerkinterfaces luistert, hebben we volgende stappen uitgevoerd:

## 1️⃣ Initieel: MySQL luistert enkel lokaal
- **Command:** `sudo ss -tlnp`  
- **Observatie:** `127.0.0.1:3306` → MySQL alleen lokaal bereikbaar.  
- **Configuratiebestand:** `/etc/mysql/mysql.conf.d/mysqld.cnf` met `bind-address = 127.0.0.1`.

## 2️⃣ Bind-address aanpassen
- **Command:** 
```bash
sudo nano /etc/mysql/mysql.conf.d/mysqld.cnf
# wijzig naar bind-address = 0.0.0.0
```
## Reflecties

De opdracht was vooral leerzaam omdat we inzicht kregen in hoe MySQL netwerkinterfaces gebruikt 
en hoe bind-addressen werken. Het aanpassen van het configuratiebestand en controleren met `ss` 
was eenvoudig. We hebben geleerd hoe we services herstarten en configuraties toepassen.

## Bronnen

Sreekanth, S. (2023, 11 november). What is the significance of the 127.0.0.1 IP address? [Online forum post]. Microsoft Learn. https://learn.microsoft.com/en-us/answers/questions/1444702/what-is-the-significance-of-the-127-0-0-1-ip-addre

Oracle. (2024). MySQL 8.4 Reference Manual: Server System Variables. https://dev.mysql.com/doc/refman/8.4/en/server-system-variables.html

Literatuurlijst:

Elo Support. (2024, 21 augustus). How do I disable Screen Lock and System Suspend in Ubuntu. https://elosupport.elotouch.com/hc/en-us/articles/31652913111319-How-do-I-Disable-Screen-Lock-and-System-Suspend-in-Ubuntu

Vitux. (2024, 18 mei). How to enable/disable automatic login in Ubuntu. https://vitux.com/how-to-enable-disable-automatic-login-in-ubuntu/

Arsh, J. (2024, 1 juli). How to install VS Code on Ubuntu. XDA Developers. https://www.xda-developers.com/how-to-install-vs-code-on-ubuntu/

Gregg, J. (z.d.). Software development tools. Lawrence University. https://www2.lawrence.edu/fast/GREGGJ/CMSC480/intro/software.html

Bro Code. (2022, 11 februari). Java Tutorial for Beginners ☕ [Video]. YouTube. https://www.youtube.com/watch?v=a-sOEQDUTKE

What is a Loopback Address? (2024, 15 mei). GeeksforGeeks. https://www.geeksforgeeks.org/computer-networks/what-is-a-loopback-address/

Tech for All. (2021, 28 aug). Bestanden overbrengen tussen Windows en Linux met WinSCP. https://www.youtube.com/watch?v=Pu-PCMPsOpg





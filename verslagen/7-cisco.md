# Verslag: Opdracht 7 - cisco Het opzetten, configureren en testen van een eenvoudig netwerk in Packet Tracer

> **Naam verslaggever:** Silas Pauwels

## Beschrijving
In deze opdracht hebben we geleerd om een klein netwerkje op te zetten in cisco packet tracer d.m.v PC's, switches en routers.

---

## Antwoorden op de vragen in de opdracht

### Vraag 1 - Hoe toon je de huidige configuratie?
`show running-config`

### Vraag 2 -  Hoe toon je de IOS-versie?
`show version`

### Vraag 3 -  Hoe toon je de routeringstabel op een Cisco router?
`show ip route`

### Vraag 4 - Hoeveel routes zijn aangeduid met C? Wat betekent dit?
2, Dit zijn de connected routes 1 voor LAN netwerk en 1 voor de verbinding met de andere router

### Vraag 5 - Hoeveel routes zijn aangeduid met L? Wat betekent dit?
2, een L-route is het exacte IP adres van de interface

### Vraag 6 - Hoe kan je de IP-adressen van de interfaces zien (IPv4 en IPv6) en welke interfaces up of down zijn?
`show ip interface brief`

### Vraag 7 - Hoe kan je de MAC-adressen terugvinden van de interfaces?
`show interfaces`

### Vraag 8 - Waarom schakelen we telnet uit?
Telnet is onveilig, want het is niet versleuteld

### Vraag 9 - Wat is de "SSH timeout" en "maximum authentication retries". Hoe stel ik deze in op 60 seconden en 4 retries?
SSH timeout = hoe lang de router wacht op invoer tijdens een login

maximum authentication retries = hoeveel keer je een fout wachtwoord mag ingeven

`configure terminal`

`ip ssh time-out 60`

`ip ssh authentication-retries 4`

---
## Verdeel dit netwerk in 4 subnetten van gelijke grootte
| Subnetnr. | Netwerkadres       | Broadcastadres     | Subnetmask         | Max hosts |
|----------|--------------------|--------------------|--------------------|----------|
| 1        | 20.26.64.0/20      | 20.26.79.255       | 255.255.240.0      | 4094     |
| 2        | 20.26.80.0/20      | 20.26.95.255       | 255.255.240.0      | 4094     |
| 3        | 20.26.96.0/20      | 20.26.111.255      | 255.255.240.0      | 4094     |
| 4        | 20.26.112.0/20     | 20.26.127.255      | 255.255.240.0      | 4094     |


## Evaluatiecriteria

- [x] Je hebt een correct adresseringsschema voor IPv4 uitgewerkt en kan dit toelichten.
- [ ] Je hebt een correct adresseringsschema voor IPv6 uitgewerkt en kan dit toelichten.
- [x] PC1 kan pingen naar R1, R2, PC3 en PC4 over IPv4.
- [ ] PC1 kan pingen naar PC4 over IPv6.
- [x] De begeleider selecteert willekeurig een van de routers. Je kan hierop het volgende demonstreren:
  - [x] Je kan inloggen via de consolekabel.
  - [x] Er is een wachtwoord ingesteld voor console en privileged EXEC mode.
  - [x] Er is een MOTD ingesteld.
  - [x] Wachtwoorden staan geëncrypteerd in de running config.
  - [x] Er zijn geen ongewenste DNS lookups.
  - [x] De startup config is weggeschreven.
  - [x] Je kan via IPv4 pingen naar elke PC.
- [x] Je kan vanuit PC1 een SSH-verbinding openen naar R1 en R2 via IPv4.
- [x] Er is een verslag gemaakt op basis van de template.
- [x] Elk teamlid heeft de eigen cheat sheet aangevuld met nuttige commando's uit deze opdracht.
- [x] Er is een correct antwoord gegeven op de vragen die zijn aangeduid met een :question:.

---

## Voorbereiding demo


---

## Reflectie
Welke subnetting (IPv4 of IPv6) was voor jou het eenvoudigst uit te voeren? Waarom?

IPv4 omdat ik er al bekend mee was

Wat was voor jou de moeilijkste stap van de gehele opdracht?

stap 4 de computers en routers kunnen laten pingen met elkaar
---

## Bronnen
- https://www.cisco.com/c/en/us/support/docs/ip/routing-information-protocol-rip/13788-3.html  
  (Uitleg over routing en IP-configuratie)

- https://www.cisco.com/c/en/us/docs/ios-xml/ios/iproute_pi/configuration/xe-3s/iro-xe-3s-book.html  
  (Cisco IOS routing en static routes)

- https://www.cisco.com/c/en/us/support/docs/security-vpn/secure-shell-ssh/4145-ssh.html  
  (SSH configuratie op Cisco routers)


- https://www.cloudflare.com/learning/network-layer/what-is-a-subnet/  
  (Basis uitleg subnetting)

- https://www.geeksforgeeks.org/subnetting-in-computer-network/  
  (Subnetting stap voor stap uitgelegd)


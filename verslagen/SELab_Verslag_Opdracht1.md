# Verslag: Opdracht 1 - Package Manager & Markdown

> Naam verslaggever: Alpay Cakal

## Beschrijving

In opdracht 1 kan je kennismaken met een packet manager, en het gemak en de tijdsbesparing die het teweeg brengt.
Geen tijdrovende installatie-wizards meer, maar een centrale plaats om software te installeren, en de nodige applicaties in één keer bij te werken zonder verdere afleidingen.

Daarnaast kan je hier ook leren werken met een script, hetgeen de sleutel is tot de automatisering en het beheer van computersystemen.
Ook laat een script zien hoe een terminal en zijn CLI, ondanks de minder 'elegante' indruk, een krachtig instrument is, en naast de grafische applicaties die we dagdagelijks gebruiken, toch een solide plaats behoudt in de wereld van IT.

Tot slot maak je, gezien het feit dat het hier om de eerste opdracht gaat, kennis met markdown.
Deze markup language is van essentieel belang in SELab, en zal dat ook blijven in toekomstige OLOD's en later in het professionele leven.
Het verslag wordt ook opgemaakt en de cheat sheet wordt opgesteld.

## Antwoorden op de vragen in de opdracht

### Vraag 1 - De PowerShell-prompt toont de map waar we ons nu bevinden. Wat is de naam van deze directory?

System32

### Vraag 2 - In welke map heb je het script bewaard?

C:\Users\cakal\Downloads\Toegepaste Informatica 2025-2026 (Harde schijf)\2025-2026 Semester 2\System engineering lab\SELab Opdracht 1\Installatie.ps1

### Vraag 3 - In welke map is het script bewaard in de screenshot onder stap 3?

D:\Users\BertVV\Documents\HoGent\SELab\Installatie.ps1

### Opdracht 1 - Gebruik het commando cd (change directory) om naar de map te gaan waar je je script hebt bewaard.

![cd gebruikt om naar de correcte map te gaan](image-1.png)

### Opdracht 2 - Tik .\Installatie.ps1 en druk ENTER om het script uit te voeren.

![vanuit de map waar het script staat, het script uitvoeren](image-2.png)

### Opdracht 3 - Verander de kleuren van de uitvoer, bv. groene tekst op zwarte achtergrond. Tip: Gebruik de commandolijst rechts om de juiste syntax te bepalen.

_(zie uiteindelijk script)_

### Taken WinGet

| **Taak**                                                                | **Commando**                         |
| :---------------------------------------------------------------------- | :----------------------------------- |
| Een lijst tonen van de software die nu geïnstalleerd is via WinGet      | `winget list`                        |
| Alle packages die nu geïnstalleerd zijn bijwerken tot de laatste versie | `winget upgrade --all`               |
| Via de console een package opzoeken                                     | `winget search <pakketid>`           |
| Een geïnstalleerd package verwijderen                                   | `winget uninstall -e --id <pakketid>`|

### Vraag 4 - Wat doen de opties -e en --id voor winget install?

- -e: zorgt ervoor dat er wordt nagekeken op een precieze overeenkomst
- --id: zorgt ervoor dat het unieke ID wordt gebruikt dat je ook meegeeft (<ontwikkelaar>.<naamApplicatie>)

## Evaluatiecriteria (standaard)

- [x] Je hebt een package manager voor jouw besturingssysteem geïnstalleerd.
- [x] Je hebt een script (PowerShell of Bash, afhankelijk van je besturingssysteem) geschreven en gebruikt om de opgesomde applicaties te installeren.
- [x] Je toont inzicht in de werking van een package manager en kan deze vlot kan gebruiken om basistaken uit te voeren.
- [x] Er is een verslag gemaakt op basis van het template.
- [x] Elk teamlid heeft de eigen cheat sheet aangevuld met nuttige commando's uit deze opdracht.
- [x] Je hebt GitHub correct geconfigureerd op je toestel en je hebt de basiscommando's (via CLI) in je vingers.
- [x] Er is een correct antwoord gegeven op de vragen die zijn aangeduid met een ❓.

## Evaluatiecriteria (uitbreidingen)

- [x] Het script structureren per cursus.
- [x] Het script aanvullen met andere software, bv. voor andere vakken of voor eigen gebruik.
- [x] Het script interactief maken, zodat de gebruiker nog kan kiezen welke software hij/zij wenst te installeren.
- [ ] Een andere package manager op een ander besturingssysteem installeren en gebruiken.
  - Gezien het feit dat ik werk met een Windows-laptop voor mijn studies, heb ik deze laatste uitbreiding helaas niet kunnen realiseren.

## Problemen en oplossingen

### Probleem 1 - Scripts runnen uitgeschakeld op mijn systeem

Bij het proberen runnen van het eerste script kreeg ik onderstaande foutmelding op mijn systeem:

![foutmelding bij runnen script](image.png)

In de opdracht stond er opvallend genoeg meteen een oplossing voor dit probleem vermeld. Dit zou willen zeggen dat meerdere studenten dit probleem gehad zullen hebben...

## Voorbereiding demo

- 'Run ISE as Administrator', en klik daarna gewoon op 'Ja'
- gebruik cd gewoon met het gehele pad (of `.\...` om vanuit de huidige map te vertrekken)
- gebruik `winget --help` of gewoon je cheat sheet voor winget-commando's
- open je script linksboven, en voeg een nog gevraagde install toe d.m.v. de website van winget.run
- run je script met de groene driehoek bovenaan, maar typ eerst `Set-ExecutionPolicy Bypass -Scope Process` in, en klik daarna op 'Yes'

## Reflecties

Zelf gebruik ik hoofdzakelijk _Windows_ voor mijn studies, en bij het doornemen van de instructies voor _Linux_ en _macOS_ vielen mij toch een aantal zaken op.

Het feit dat een distributie van _Linux_ zelf reeds een package manager heeft, en bepaalde standaardapplicaties, zoals een PDF-viewer en mediaspeler, standaard al geïnstalleerd zijn, deed mij de meerwaarde inzien van dit besturingssysteem. Wanneer je naar de gebruikerscijfers kijkt, lijkt het tenslotte alsof Linux "de slechtste keuze" is.

Wat betreft _macOS_ viel het mij op dat dit besturingssysteem ook een terminal heeft waarin verschillende 'soorten' shells beschikbaar zijn.
Nochtans was ik er tot nu toe van overtuigd dat mijn macBook niet het apparaat was geschikt voor een opleiding in de informatica.
Dit besturingssysteem biedt dan wel weer standaard geen package manager aan, maar gelukkig biedt (onder andere) Homebrew hier een oplossing voor.

Tot slot komen we aan bij _Windows_, het besturingssysteem dat ik persoonlijk hoofdzakelijk gebruik voor mijn studies.
De rechtstreeks geïntegreerde PowerShell en de reeds geïnstalleerde package manager WinGet maakten dat ik vlotter met de opdrachten van start kon gaan.
Je merkt toch wel dat Windows de OS is die nog steeds het meest gebruikt wordt. Bijna alles is (of toch lijkt het zo) ook geoptimaliseerd voor Windows en werkt naar behoren. Uiteraard is het voor mij ook aangenaam werken gezien het feit dat ik ermee opgegroeid ben.

Leren werken met Markdown was in het begin wat intimiderend doordat ik het nog nooit gebruikt had, maar al snel bleek het gebruik ervan eigenlijk erg intuïtief te zijn. Ook de integratie in VS Code was handig, zeker de mogelijkheid om op ieder moment een preview te kunnen bekijken van het bestand.

Al bij al vond ik dat de eerste opdracht voor dit labo erg aangenaam verlopen is. Het feit dat we voor deze opdracht individueel moesten werken, heeft ervoor gezorgd dat ik in alle rust de nodige programma's en commando's kon leren kennen.
Ik heb nu al opvallend veel bijgeleerd, en kijk ernaar uit om samen met de rest van mijn groep het beste van onszelf te geven.

## Bronnen

- de takenlijst opmaken voor de evaluatiecriteria voor het verslag: [GitHub](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#task-lists)
- VS Code, meer bepaald in verband met de .md-extensie en het toevoegen van afbeeldingen: [VS Code](https://code.visualstudio.com/docs/languages/markdown)
- tekst in mijn script van opmaak voorzien: [Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/write-host?view=powershell-7.5)
- zoeken naar ID's om te gebruiken in mijn script samen met `winget install -e --id`: [Winget Run](https://winget.run/)
- de switch-structuur gebruiken om de gebruiker keuzemogelijkheden te geven in het script: [Microsoft Learn](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_switch?view=powershell-7.5)
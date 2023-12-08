# Setup: Die sieben Schulen der TDD

Bitte erstellt euch ein lokales Setup, mit dem ihr während des gesamten Workshops arbeiten könnt.
Ihr könnt eine Programmiersprache und ein Tool eurer Wahl mitbringen und mitmachen.
Wir stellen zwei Beispiel-Setups für Typescript und Java zur Verfügung.
Sollte keines der oben genannten Setups für euch geeignet sein, verwendet bitte [https://beta.cyber-dojo.org/creator/home](https://beta.cyber-dojo.org/creator/home) als Ausweichmöglichkeit.

## Beschreibung
Unabhängig von der Kata und dem Ablauf des Dojos erschafft euch einen Startpunkt, der ggf. alle folgenden Punkte erfüllt:
- Compiler
- Build-tool
- Git
- Basisprojekt mit Main-funktion und nötigen Abhängigkeiten für Unit-tests sowie einem initialen git Branch z.B. main
- Auf der Kommandozeile lässt sich das Basisprojekt über Aufrufe des Basisprojekts bauen, testen und starten
- IDE mit geladenem, fehlerfreien Basisprojekt
- Funktionierende Funktionen in der IDE mit dem Basisprojekt: Projekt bauen, testen, starten

### Java
* Java (>= 21)
* maven (>= 3.8)
* https://github.com/srose/marsrover
* mvn clean verify

### Typescript / JavaScript
* https://github.com/marcoemrich/kata-starter
* npm install
* npm test
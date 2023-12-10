# Setup: Die sieben Schulen der TDD

Bitte erstellt Euch ein lokales Setup, mit dem ihr während des gesamten Workshops arbeiten könnt.
Ihr könnt eine Programmiersprache und ein Tool Eurer Wahl mitbringen.
Wir stellen zwei Beispiel-Setups für Typescript und Java zur Verfügung.
Sollte keines der genannten Setups für Euch geeignet sein, verwendet bitte [https://beta.cyber-dojo.org/creator/home](https://beta.cyber-dojo.org/creator/home) als Ausweichmöglichkeit.

## Beschreibung
Unabhängig von der Kata und dem Ablauf des Dojos erschafft euch einen Startpunkt, der ggf. alle folgenden Eigenschaften erfüllt:
- Die nötigen Basiswerkzeuge sind vorhanden: Compiler, Build-Tool, Git
- Basisprojekt mit Main-funktion und nötigen Abhängigkeiten für Unit-Tests sowie einem initialen git Branch z.B. main
- Auf der Kommandozeile lässt sich das Basisprojekt 'mvn clean verify' bauen und die Tests werden ausgeführt
- IDE mit geladenem, fehlerfreien Basisprojekt
- Funktionen in der IDE: Projekt bauen, testen, debuggen sind einsatzbereit

### Java
* Java (>= 21)
* maven (>= 3.8)
* https://github.com/srose/kata-starter-java
* mvn clean verify

### Typescript / JavaScript
* node (>= 18)
* npm (>= 9)
* https://github.com/marcoemrich/kata-starter
* npm install
* npm test
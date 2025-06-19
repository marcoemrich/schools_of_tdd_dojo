# TDD-Schulen - Begriffe und Bausteine

In alphabetischer Reihenfolge, damit jeder Eintrag schnell gefunden werden kann.

## Back-door Verification
Die Überprüfung des Verhaltens einer getesteten Einheit während der Testausführung erfolgt durch Back-door Verification.
Dies wird erreicht, indem **Mocks** für Abhängigkeiten einer Klasse eingefügt und die Interaktionen mit diesem Mock überprüft werden.[^10]

## Backward Calculation
Ein Refactoring, das einen Wert oder ein Ergebnis durch einen Ausdruck ersetzt, der zu diesem Wert führt. Dies wird normalerweise mehrmals hintereinander durchgeführt. Das Refactoring beginnt mit einem testspezifischen Fake-Wert und wird dann zu einer allgemeinen Lösung verallgemeinert.

Beispiel: "return 119" wird ersetzt durch "return 100 * 1.19" und dann durch "return priceValue * vatRate"

Diese Technik wird typischerweise von den München- und St.Pauli-Schulen verwendet.[^8][^9]

## Behavior Simulation
**Behavior Simulation** ermöglicht die Simulation externer Ereignisse ohne den Einsatz echter externer Systeme.
Während **Configurable Responses** das Verhalten ausgehender Aufrufe steuern, simuliert **Behavior Simulation** eingehende oder asynchrone Ereignisse.
Diese Simulation teilt so viel Code wie möglich mit der echten Ereignisbehandlung, um sicherzustellen, dass das simulierte Verhalten dem echten entspricht.
Die Simulation wird als Produktionscode geschrieben und getestet, da sie auch in echten Szenarien nützlich sein kann (z.B. für Demos oder Lasttests).
Ereignisse werden typischerweise über Observer-Pattern oder Event-Emitter implementiert.[^7]

## Configurable Responses
**Configurable Responses** ermöglichen die Steuerung des Verhaltens von Abhängigkeiten ohne Änderung ihrer Implementierung.
Tests können spezifische Antworten konfigurieren, die die **Nullables**-Instanz zurückgeben soll, wodurch verschiedene Szenarien getestet werden können.
Die Konfiguration erfolgt immer aus der Perspektive der aufrufenden Klasse, nicht aus der Perspektive der Implementierung.
Dies macht Tests leichter lesbar und verständlich, da sie in der Domänensprache des getesteten Codes geschrieben sind.
Die Antworten können sowohl einzelne Werte als auch Listen von Werten sein, die nacheinander abgearbeitet werden.[^7]

## Double Loop
Die **Double Loop**-Idee basiert auf zwei TDD-Zyklen:
1. Ein äußerer Loop mit Acceptance Tests für ein Feature oder eine Funktionalität
2. Ein innerer Loop, der den äußeren Acceptance Test durch kleine Unit Tests antreibt

Der typische Prozess beginnt mit einem Acceptance Test.
Dann wird TDD mit Unit Tests verwendet, bis der Acceptance Test vollständig erfüllt ist, d.h. grün wird.
Der nächste Acceptance Test wird geschrieben und wieder werden Unit Tests für den Acceptance Test erstellt.[^2][^11]

## Dummy
**Dummy** sind Objekte, die nur als Parameter übergeben werden, aber nie wirklich verwendet werden.
Sie erfüllen lediglich die Parameterliste einer Methode und haben keine echte Funktionalität.
**Dummy**-Objekte werden typischerweise als null-Werte oder einfache Platzhalter implementiert.
Sie sind die einfachste Form von **Test Doubles** und werden verwendet, wenn die Signatur einer Methode ein Objekt erfordert, das im Test jedoch irrelevant ist.[^1]

## Embedded Stubs
**Embedded Stubs** sind minimale Implementierungen von Drittanbieter-Abhängigkeiten, die direkt in der Produktionsklasse leben.
Sie implementieren nur die Methoden, die der umgebende Code tatsächlich verwendet, und verhalten sich genau wie die echte Abhängigkeit - nur ohne externe Seiteneffekte.
Diese **Stubs** werden indirekt durch die Tests der umgebenden Klasse getestet, nicht durch separate Stub-Tests.
Sie werden bewusst einfach gehalten und duplizieren nur das Verhalten, das für die Funktionalität erforderlich ist.
Der große Vorteil: Sie sind immer synchron für den Einsatz im echten Code, da sie in derselben Datei leben.[^7]

## Fake
**Fake** sind Objekte mit funktionierenden Implementierungen, die jedoch Abkürzungen nehmen, welche sie für die Produktion ungeeignet machen.
Ein typisches Beispiel ist eine InMemoryTestDatabase, die echte Datenbankoperationen simuliert, aber alles im Arbeitsspeicher speichert.
**Fakes** haben echte Geschäftslogik, verzichten aber auf komplexe oder langsame Aspekte der echten Implementierung.
Sie sind komplexer als **Stubs** oder **Dummies**, aber einfacher und schneller als die echten Produktionsimplementierungen.[^1]

## Front-door Verification
Die Verifikation als Teil eines Unit Tests kann auf verschiedene Weise durchgeführt werden.

Bei der Interaktion mit der getesteten Einheit durch Methoden, die in der Produktion verfügbar sind, handelt es sich um die **Front-door Verification**-Technik.
Es gibt auch eine andere Technik namens **Back-door Verification**.

Wenn die getestete Einheit während des Tests einen Wert zurückgibt, kann dieser Rückgabewert für die Verifikation verwendet werden.
Alternativ wird der Zustand einer getesteten Einheit verwendet, z.B. durch Getter.[^10]

## Inside Out Strategy
Bei der Entscheidung, wo mit einem System begonnen werden soll, kann gewählt werden, mit kleinen internen Teilen zu beginnen.
Diese Entwicklungsstrategie lässt uns über das Design kleiner Teile mit klarer und einziger Verantwortung nachdenken.
Diese Teile werden zusammengefügt, um das vollständige System zu bauen.
Das Gegenteil ist die **Outside In Strategy**.[^12][^13]

## Integration Operation Segregation Principle
Das **Integration Operation Segregation Principle** (IOSP) trennt zwischen Operationen, die Integration erfordern, und solchen, die isoliert arbeiten können.
Operationen mit externen Abhängigkeiten (Datenbank, API, Dateisystem) werden von der Geschäftslogik getrennt.
Dies ermöglicht schnelle Unit Tests für die Geschäftslogik und separate Integration Tests für die externen Abhängigkeiten.
Das Prinzip führt zu einer klaren Architektur, in der Geschäftslogik unabhängig von Infrastruktur getestet werden kann.[^7]

## Interaction-based Testing
**Interaction-based Testing** überwacht Methodenaufrufe und deren Parameter, um das Verhalten zu verifizieren.
Im Gegensatz zu **State-based Testing** interessiert sich diese Technik dafür, wie etwas implementiert wird, nicht nur was das Endergebnis ist.
**Mocks** und **Spies** sind die typischen Werkzeuge für **Interaction-based Testing**.
Diese Technik ist besonders nützlich, wenn das getestete Verhalten keine sichtbaren Zustandsänderungen produziert.[^4]

## Intermediate Test
Ein **Intermediate Test** steht zwischen Unit Tests und vollständigen Integration Tests.
Diese Tests prüfen das Zusammenspiel mehrerer Komponenten, ohne das gesamte System einzubeziehen.
Sie verwenden echte Implementierungen für kritische Abhängigkeiten, ersetzen aber externe Systeme durch **Test Doubles**.
**Intermediate Tests** bieten mehr Vertrauen als reine Unit Tests, sind aber schneller und stabiler als vollständige Integration Tests.[^14][^15]

## Mocks / Spies
**Mocks** und **Spies** werden verwendet, um zu verifizieren, dass spezifische Methodenaufrufe (möglicherweise mit spezifischen Argumenten) ausgeführt werden. **Mocks** sind vorprogrammiert mit ihren Erwartungen, während **Spies** ihre Aufrufe aufzeichnen und später inspiziert werden können.[^1][^5]

## Nullables
**Nullables** sind Produktionscode mit einem "Aus"-Schalter.
Auf den ersten Blick sehen sie aus wie **Test Doubles**, aber sie sind tatsächlich echte Produktionsimplementierungen, die ihre externe Kommunikation deaktivieren können.
Im Gegensatz zu **Mocks** oder **Stubs** werden **Nullables** nicht nur für Tests geschrieben, sondern sind vollwertige Produktionscode mit echten Anwendungsfällen.
Sie ermöglichen es, vollständige Abhängigkeitsketten zu testen, ohne auf externe Systeme wie Datenbanken, APIs oder Dateisysteme angewiesen zu sein.
Das Kernprinzip: "Echter Code, der seine Seiteneffekte ausschalten kann."[^7]

## Output Tracking
**Output Tracking** verfolgt alle Ausgaben einer Abhängigkeit, ohne deren normale Funktionalität zu beeinträchtigen.
Anstatt zu prüfen, welche Methoden mit welchen Parametern aufgerufen wurden (wie bei **Mocks**), wird dokumentiert, was tatsächlich "passiert" ist.
Dies geschieht über Event Emitter oder ähnliche Mechanismen, die parallel zur normalen Ausführung laufen.
Der große Vorteil: Die Tracking-Daten repräsentieren das Verhalten aus Sicht der aufrufenden Klasse, nicht der Implementierung.
Dies macht Tests refactoring-sicher, da sie nicht an spezifische Methodenaufrufe gekoppelt sind.[^7]

## Outside In Strategy
Bei der Entscheidung, wo mit einem System begonnen werden soll, kann gewählt werden, mit der Gesamtfunktionalität zu beginnen.
Diese Entwicklungsstrategie führt dazu, über die Erstellung einer Black Box und das Design der Schnittstelle an der Systemgrenze nachzudenken.
Normalerweise ist das sichtbare Verhalten des Systems der Ausgangspunkt.
Nach der Verwendung aller möglichen Abkürzungen und dem Faking des internen Verhaltens werden die erforderlichen Teile iterativ entdeckt.[^12][^13]

## Parameterless Instantiation
Jede Klasse muss ohne Parameter instanziiert werden können.
Dies wird durch Factory-Methoden erreicht, die sinnvolle Standardwerte bereitstellen und die gesamte Abhängigkeitskette automatisch aufbauen.
Spezifische Abhängigkeiten können in Tests injiziert werden, aber für den normalen Gebrauch funktioniert alles "out of the box".
Dieses Muster ermöglicht es, komplexe Objektgraphen einfach zu erstellen, ohne sich um die Details der Dependency Injection kümmern zu müssen.
Die Factory-Methode verbirgt die Komplexität der Initialisierung und macht den Code sowohl für die Produktion als auch für Tests verwendbar.[^7]

## Sociable Test
Eine Klasse, die Unit Tests enthält, bezieht sich auf eine Klasse in einem System.
Z.B. bezieht sich die Klasse School auf eine Klasse SchoolTest.
Eine Klasse hat Abhängigkeiten, wie andere Klassen, um die gewünschte Funktionalität zu erfüllen.
Wenn der Test auch das Verhalten der abhängigen Klassen mit der Produktionsversion testet, wird der Test als **Sociable** bezeichnet.
Das Gegenteil ist ein **Solitary Test**.[^4]

## Solitary Test
Eine Klasse, die Unit Tests enthält, bezieht sich auf eine Klasse in einem System.
Z.B. bezieht sich die Klasse School auf eine Klasse SchoolTest.
Eine Klasse hat Abhängigkeiten, wie andere Klassen, um die gewünschte Funktionalität zu erfüllen.
Wenn der Test explizit das Verhalten der Klassen ohne die Produktionsversion der abhängigen Klassen testet, wird der Test als **Solitary** bezeichnet.
Abhängige Klassen können durch **Fake**-Objekte ersetzt werden.
Das Gegenteil ist ein **Sociable Test**.[^4]

## State-based Testing
**State-based Testing** prüft die Ergebnisse und Zustandsänderungen, während **Interaction-based Testing** (**Mocks**) Methodenaufrufe überwacht.
Bei **State-based Testing** interessiert uns nicht, wie etwas implementiert wird, sondern nur was das Endergebnis ist.
Dies macht Tests robuster gegen Refactoring, da die Implementierung geändert werden kann, solange das Verhalten gleich bleibt.
**Nullables** ermöglichen **State-based Testing** auch für Code mit Infrastruktur-Abhängigkeiten, da die echten Abhängigkeiten verwendet werden - nur ohne externe Seiteneffekte.
Der Fokus liegt auf dem beobachtbaren Verhalten, nicht auf den internen Mechanismen.[^4][^7]

## Stub
**Stubs** liefern vorgefertigte Antworten auf Aufrufe, die während des Tests gemacht werden, und reagieren normalerweise überhaupt nicht auf etwas außerhalb dessen, was für den Test programmiert wurde.[^1]

## Test Double
Das Folgende ist ein Auszug aus Martin Fowlers Text über **Test Doubles**[^1]:
Gerard Meszaros arbeitet an einem Buch, um Patterns für die Verwendung der verschiedenen Xunit-Frameworks zu erfassen. Eines der umständlichen Dinge, auf die er gestoßen ist, sind die verschiedenen Namen für **Stubs**, **Mocks**, **Fakes**, **Dummies** und andere Dinge, die Menschen verwenden, um Teile eines Systems für Tests zu ersetzen. Um damit umzugehen, hat er sein eigenes Vokabular entwickelt, das meiner Meinung nach weiter verbreitet werden sollte.

Der generische Begriff, den er verwendet, ist **Test Double** (denken Sie an Stunt Double). **Test Double** ist ein generischer Begriff für jeden Fall, in dem Sie ein Produktionsobjekt zu Testzwecken ersetzen. Es gibt verschiedene Arten von Doubles, die Gerard auflistet:
- **Dummy**
- **Fake**
- **Stubs**
- **Spies**
- **Mocks**

## Triangulation
In der testgetriebenen Entwicklung werden Assertions in Tests als Leitfaden und zur Ableitung von Logik verwendet.
Eine Assertion reicht möglicherweise nicht aus, um mit der Implementierung von Logik zu beginnen.
Diese Unsicherheit kann durch die Verwendung von mehr als einer Assertion und Fake-Implementierungsschritten angegangen werden.
Wenn Klarheit entstanden ist oder Muster sichtbar werden, wird die Logik implementiert.[^6]

## Validation Test
Bei einem **Sociable Test** könnte Funktionalität implizit durch einen Test einer anderen Einheit getestet werden.
Um diese Funktionalität explizit zu schützen, kann ein dafür vorgesehener Test eingeführt werden.
Dieser nachträglich erstellte Test wird **Validation Test** genannt.

----
[^1]: https://martinfowler.com/bliki/TestDouble.html
[^2]: https://www.sammancoaching.org/learning_hours/bdd/double_loop_tdd.html
[^3]: https://arialdomartini.wordpress.com/2012/07/20/you-wont-believe-how-old-tdd-is
[^4]: https://martinfowler.com/bliki/UnitTest.html
[^5]: https://site.mockito.org/javadoc/current/org/mockito/Spy.html
[^6]: https://dmitripavlutin.com/triangulation-test-driven-development/
[^7]: https://www.jamesshore.com/v2/projects/nullables/testing-without-mocks
[^8]: https://www.heise.de/hintergrund/Testgetriebene-Entwicklung-nach-der-Muenchner-Schule-6287450.html
[^9]: https://www.heise.de/hintergrund/Testgetriebene-Entwicklung-nach-der-St-Pauli-Schule-7614333.html
[^10]: http://xunitpatterns.com/Back%20Door%20Manipulation.html
[^11]: https://talent500.com/blog/acceptance-test-driven-development-business-value/
[^12]: https://8thlight.com/insights/tdd-from-the-inside-out-or-the-outside-in
[^13]: https://softwareengineering.stackexchange.com/questions/123627/what-are-the-london-and-chicago-schools-of-tdd
[^14]: https://de.wikipedia.org/wiki/Testgetriebene_Entwicklung
[^15]: https://xebia.com/switzerland-de/course/test-driven-development/
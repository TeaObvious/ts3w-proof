# Funktionen und analysierte Daten sinnvoll benennen

[Regelindex](../index.md)

## Name aus der Verantwortung

Benennen wie in einem großen Softwareprojekt: Ein Name beschreibt die
verstandene Operation und ihren Gegenstand, nicht die Entdeckungsgeschichte.
Die Bedeutung aus Körper, realen Aufrufern, Produzenten und Verbrauchern ableiten.

PascalCase für neue Funktionsnamen verwenden; mit bestehenden geprüften
fachlichen Namen konsistent bleiben. Belegte originale Symbole erhalten.
Namespaces oder Besitzer nur einführen, wenn ihre Zuordnung nachgewiesen ist.

Beispiele für Präzision:

- TestPlatformRegion passt erst, wenn tatsächlich eine Plattformregion geprüft
  wird. Allgemeines Check, ProcessData oder HandleStuff reicht nicht.
- Eine geordnete Präfixprüfung nicht als AnyVertexMatches benennen.
- Resolve, Read, Find, TryGet, Create, Refresh, Release und Copy nur entsprechend
  tatsächlicher Fehler-, Besitz- und Änderungssemantik verwenden.
- Ein einzelner Abfragesnapshot ist kein umfassender Index. Cache setzt echte
  Wiederverwendung samt Lebensdauer voraus; Manager ist keine Ersatzbeschreibung.
- Fence nur bei tatsächlichem Zaun oder belegter Synchronisationsgrenze.
  Die fachliche Bedeutung muss aus dem Kontext eindeutig werden.

## Herkunft und Unsicherheit

Original, Runtime, Native, OpenTS3, Debug oder vermeintlich fachliche Wörter
nicht pauschal vor Namen setzen. Sie müssen eine belegte Unterscheidung tragen.
Original ist als Implementierungsvariante nur bei tatsächlich vorhandenen
Alternativen sinnvoll, nicht als allgemeines Forschungssiegel.

Analystennamen ausdrücklich als analyst-assigned markieren. Sie sind keine
wiedergefundenen EA-Symbole. Unklare Operationen behalten vorläufig ihre Adresse
und einen offen gekennzeichneten Kandidaten; keinen sicheren Namen erfinden.

Geteilte Helper nicht nach dem ersten entdeckten Verbraucher zu eng benennen.
Algorithmusnamen wie FNV-1 erst nach Operations- und Reihenfolgeprüfung vergeben.

## Parameter, Felder und Typen

Einheiten, Vorzeichen, Schlüsselart und Besitz in der Beschreibung erklären.
Eine 16-Bit-Patternkennung nicht als 32-Bit-Produktkennung ausgeben.
Provisorische Strukturen und Felder als Inferenz kennzeichnen.

Namen ersetzen keine Vertragsprüfung. Neue Erkenntnisse können einen Namen
ändern; stabile Referenz/RVA bleibt dabei erhalten.

Bestätigte Namen und Kommentare müssen nach
[Ghidra-Annotationsregel](../ghidra/annotations.md) tatsächlich in Ghidra
übernommen werden. Nur umbenannte Exportdateien reichen nicht.

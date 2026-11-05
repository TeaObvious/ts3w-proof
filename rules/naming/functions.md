# Funktionen und analysierte Daten sinnvoll benennen

[Regelindex](../index.md)

## Name aus der Verantwortung

Die folgenden Benennungsanforderungen sind verbindlich. Benennen wie in einem
großen Softwareprojekt: Ein Name beschreibt die
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

## Namen durch den gesamten erfassten Zusammenhang ziehen

Eine aufgenommene oder umbenannte Funktion ist erst synchronisiert, wenn alle
betroffenen erfassten Aufrufer, Funktionszeiger-/Tabellenzuordnungen, Guides,
Dateinamen und Indizes den aktuellen bestätigten Namen verwenden. Nach einer
Umbenennung dürfen aktuelle Aufrufe nicht weiter `FUN_Adresse(...)` verwenden,
wenn das Ziel bereits einen bestätigten Namen besitzt. Historische Belege und
ausdrücklich ungeklärte Ziele bleiben als solche erkennbar.

Parameter, Rückgabewerte, lokale Variablen und belegte Felder ebenfalls fachlich
benennen, sobald ihre Rolle durch Instruktionen und tatsächlichen Datenfluss
geklärt ist. Für neue Parameter-/Variablennamen lowerCamelCase verwenden;
belegte Originalnamen erhalten. Zähler, Index, Kapazität, Byteanzahl, Schlüssel,
Pointer und rohe Bitmuster nicht gleichsetzen. Decompiler-HighVars, die Speicher
für mehrere Rollen zusammenfassen, nicht mit einem irreführenden Einzelnamen
versehen; Gültigkeitsbereiche prüfen und die konkrete Grenze dokumentieren.

Die Namen tatsächlich in Ghidra an die geprüfte Parameter-/Variablenidentität
binden. Belegte Typ-/Signaturpräzisierungen getrennt begründen und prüfen;
eine Namenspflege erlaubt keine geratenen Typen oder geänderte ABI. Bei geänderten Funktionsnamen anschließend betroffene Funktionen und Aufrufer
frisch dekompilieren und die kanonischen Belege erneuern. Eine reine
Textersetzung im Export erfüllt diese Pflicht nicht.

Direkte Nutzerpräzisierung vom 05.11.2026: Bestehende C-Dateien während der
Forschung nicht rückwirkend für Parameter-/Variablenmappings durchgehen.
Belegte Parameter-/Variablenrollen weiterhin tatsächlich in Ghidra pflegen;
die C-Darstellung am Ende durch einen Gesamtexport aus der gepflegten DB
aktualisieren. Ältere Variablennamen in übernommenen C-Snapshots sind bis
dahin zulässig und kein Anlass für manuelle Umschreibungen oder zusätzliche
Caller-Neuexporte allein wegen dieser Variablennamen. Funktionsnamen,
Funktionsreferenzen, Dateinamen und Indexverweise bleiben davon unberührt.

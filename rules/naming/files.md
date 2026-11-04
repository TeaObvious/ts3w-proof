# Dateien, Ordner und Schemaänderungen

[Regelindex](../index.md)

## Verantwortung vor Herkunft

Datei und übergeordneter Ordner beschreiben einen fachlich zusammenhängenden
Gegenstand. Nicht bloß Original-, Runtime-, Native- oder Projektpräfixe aus
bestehenden Dateinamen übernehmen.

Ein Ordner gruppiert echte Verantwortung; beliebige World, InWorld, Common,
Misc oder Runtime-Ebenen ohne klare Unterscheidung vermeiden.
Prüfe anhand des Inhalts, ob etwas etwa Query, Datenformat, Cache, Bindung oder
Lebensdauer betrifft. Keine Namensentscheidung allein anhand einer Dateiliste.

Bekannte Fach- und Algorithmusnamen erhalten, wenn sie präzise sind.
Kanonische native Belege tragen verbindlich Adresse und aktuellen bestätigten
Funktionsnamen im Dateinamen: `Adresse_Funktionsname.c` und
`Adresse_Funktionsname.asm`. Die achtstellige VA wird großgeschrieben.
Im Namen werden Folgen außerhalb von ASCII-Buchstaben, Ziffern und Unterstrich
durch einen Unterstrich ersetzt, insbesondere Namespace-Trenner.
Solange die Bedeutung ungeklärt ist, den tatsächlichen vorhandenen Ghidra-
Identifier (gegebenenfalls `FUN_...`) im selben verbindlichen Adressschema
verwenden. Dafür keinen semantischen Namen erfinden. Ein bestätigter neuer Name
muss anschließend tatsächlich in Ghidra und im Dateinamen übernommen werden.
Die stabile Identität bleibt Referenz plus RVA, auch wenn sich der Name ändert.

## Kanonische Belege

Pro Referenz/Funktion ein finales ASM/C-Paar. Mehrere fachliche Guides verlinken
dasselbe Paar. Keine Kopie pro Aufrufer oder Subsystem.

Die bisherige OpenTS3-Referenz zunächst unverändert erhalten. Im neuen Research-
Repository ein eigenes passendes Schema entwickeln und an unterschiedlichen
Fällen erproben, bevor übernommene oder neue Bestände insgesamt umziehen.
Verbindliches Dateinamensmuster; die fachliche Unterordnerwahl richtet sich
weiterhin nach der Verantwortung:

    evidence/native/world/construction/foundations/00AFED60_TestPlatformRegion.asm
    evidence/native/world/construction/foundations/00AFED60_TestPlatformRegion.c

Geprüfte symbolische Namen, Anzeigenamen und Pfade konsistent halten.
Ein Name darf nicht mehr Sicherheit suggerieren, als die Belege hergeben.
Bei jeder bestätigten Namensänderung die betroffenen kanonischen Dateinamen und
sämtliche aktuellen Verweise verbindlich mitführen. Keine parallelen alten
Paare als Kompatibilitätskopien erzeugen. Eine Pfadzuordnung mit Referenz/RVA
bewahrt die Nachvollziehbarkeit; alte Commitlinks bleiben historisch gültig.

## Nachvollziehbare Änderung

Beim Schemawechsel alte/neue Pfade, stabile Identität und Nachfolger erfassen.
Alle Guides, API-/Adress-/Callindizes und Links im selben überprüften Paket
anpassen. Öffentliche alte Commitlinks bleiben historisch gültig; aktuelle
Einstiegspunkte müssen auf den aktuellen kanonischen Bestand führen.

Offene Vorschläge müssen Verantwortung, Lebensdauer, Zuordnungsproblem und
Beleggrund enthalten, beispielsweise in folgender Tabelle oder einer inhaltlich
gleichwertigen Darstellung:

| Current path | Responsibility and lifetime | Naming problem | Proposed path | Evidence / reason and confidence |
| --- | --- | --- | --- | --- |

Verantwortung, Lebensdauer und Zuordnungsfehler ausdrücklich dokumentieren.
Ein Vorschlag ist noch keine angewandte Umbenennung.

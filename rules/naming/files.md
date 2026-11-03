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
Adressen im Dateinamen sind als stabile Suchhilfe ausdrücklich erlaubt.
Ein verstandener Funktionsname darf zusätzlich im Namen stehen.

## Kanonische Belege

Pro Referenz/Funktion ein finales ASM/C-Paar. Mehrere fachliche Guides verlinken
dasselbe Paar. Keine Kopie pro Aufrufer oder Subsystem.

Die bisherige OpenTS3-Referenz zunächst unverändert erhalten. Im neuen Research-
Repository ein eigenes passendes Schema entwickeln und an unterschiedlichen
Fällen erproben, bevor übernommene oder neue Bestände insgesamt umziehen.
Ein mögliches, noch nicht verbindliches Muster:

    evidence/native/world/construction/foundations/00AFED60_TestPlatformRegion.asm.txt
    evidence/native/world/construction/foundations/00AFED60_TestPlatformRegion.c

Geprüfte symbolische Namen, Anzeigenamen und Pfade konsistent halten.
Ein Name darf nicht mehr Sicherheit suggerieren, als die Belege hergeben.

## Nachvollziehbare Änderung

Beim Schemawechsel alte/neue Pfade, stabile Identität und Nachfolger erfassen.
Alle Guides, API-/Adress-/Callindizes und Links im selben überprüften Paket
anpassen. Öffentliche alte Commitlinks bleiben historisch gültig; aktuelle
Einstiegspunkte müssen auf den aktuellen kanonischen Bestand führen.

Bei offenen Vorschlägen diese Tabelle nutzen:

| Current path | Responsibility and lifetime | Naming problem | Proposed path | Evidence / reason and confidence |
| --- | --- | --- | --- | --- |

Verantwortung, Lebensdauer und Zuordnungsfehler ausdrücklich dokumentieren.
Ein Vorschlag ist noch keine angewandte Umbenennung.

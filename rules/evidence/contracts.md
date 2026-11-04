# Verständliche Originalverträge

[Regelindex](../index.md)

## Ergebnis statt Decompiler-Nacherzählung

Ein Vertrag erklärt, was die Operation garantiert, welche Voraussetzungen gelten
und was bei Grenz-/Fehlerfällen geschieht. Er ist keine bloße Übersetzung der
generierten C-Zeilen und keine Liste möglicher späterer Untersuchungen.

Einen Fachguide pro zusammenhängender Verantwortung führen. Kleine Blatthelfer
darin oder im Lookup erläutern; nicht für jede Adresse eine redundante Markdown-
Datei erzeugen. Trotzdem muss jede relevante Operation zu einer konkreten
Beschreibung und ihrem kanonischen Beleg auflösbar bleiben.

Mindestens festhalten:

- Eingaben, Ausgaben, Fehler und beobachtbare Nebenwirkungen.
- Schlüsselarten, Einheiten, Grenzen, Vorzeichen und Sentinelwerte.
- Tatsächliche Aufrufer, Datenproduzenten und Verbraucher.
- Zustand, Besitzer, Gültigkeitsdauer und Invalidierung/Freigabe.
- Thread-/Callbackgrenzen und erforderliche Reihenfolge.
- Belegte Fälle, begründete Inferenz und konkrete offene Fragen.

Eine kompakte Originaltabelle kann so aussehen:

| Operation / case | Verified original behavior | Evidence | Limits / open questions |
| --- | --- | --- | --- |

Bei einem ausdrücklich beauftragten Implementierungsvergleich stattdessen die
beobachtete Implementierung getrennt vom Original und der Entscheidung führen.
Keine OpenTS3-Bewertung erfinden, wenn nur das Original analysiert wurde.

## Beziehungen und Nachprüfbarkeit

Wichtige Aufruf-, Daten-, Zustands-, Thread- und Lebensdauerbeziehungen als kleine
Tabelle oder endlichen Graphen erklären. Knoten nennen die tatsächlich belegte
Funktion bzw. den Datenbesitzer; Kanten ihre Bedeutung. Ein generischer Kontext
oder unbestimmtes "Manager owns everything" ersetzt keine Besitzklärung.

Konkrete Adressen, Datenoffsets, Methodentokens und Beleglinks ermöglichen die
Nachprüfung. Analyse-Namen und rekonstruierte Typen ausdrücklich kennzeichnen.
Verträge, Funktionskopf und Belege verwenden dieselben bestätigten Namen.
Geklärte Parameter-/Variablenrollen vollständig nach der verbindlichen
[Benennungsregel](../naming/functions.md) in Ghidra und den Exporten führen.

Widersprüche zum bisherigen Guide nicht still übergehen. Betroffene Aussage und
Belege korrigieren; die lokale Forschung bewahrt die Herleitung. Öffentliche
Guides beschreiben den aktuellen überprüften Vertrag, keine Arbeitschronik.

Statische Rekonstruktion ist keine beobachtete Ausführung. Verbleibende Grenzen
stehen dort, wo sie die Aussage einschränken, nicht nur in einem allgemeinen
Disclaimer am Dateiende.

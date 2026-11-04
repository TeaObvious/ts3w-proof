# Erkenntnisse tatsächlich in Ghidra pflegen

[Regelindex](../index.md)

## Verbindlichkeit und Umfang

Die neue Nutzeranforderung für dieses Research-Projekt lautet: bestätigte
Funktionsnamen und Erläuterungen auch im vorhandenen Ghidra-Programm aktualisieren.
Ein Dateialias allein erfüllt das nicht. Diese gezielte Annotationsarbeit gehört
nach ausdrücklichem Forschungsstart zum Auftrag; sie startet durch das Schreiben
dieser Regeln noch nicht.

Gilt für das verifizierte Programm /TS3W.exe. Die ältere Read-only-Service-Regel
des Messageboard-Workers wird dadurch nicht geändert. Annotationen im Research-
Auftrag mit dessen Betreiber und anderen DB-Nutzern koordinieren.

Bei geklärter Bedeutung verpflichtend sind belegte analyst-assigned
Funktions-/Datenlabels, Parameter-/Variablen-/Feldnamen und semantische Kommentare.
Durch ABI/Reader/Writer abgesicherte Typ-/Signaturpräzisierungen sind zusätzlich
erlaubt und benötigen eine getrennte Begründung, Freigabe und Vor-/Nachprüfung.
Aus der Benennungspflicht keine pauschale Typ-/Signaturänderung ableiten.
Keine Originalbyte-Patches, pauschale Reanalyse, neuen Imports oder automatische
Änderungen von Funktionsgrenzen daraus ableiten.

## Ablauf je geprüftem Paket

1. Zielidentität, exakte Adressen, bestehende Namen, Signaturen und Kommentare
   lesen. Geprüfte fremde Annotationen erhalten; Widersprüche erst klären.
2. Fachlich begründete Änderungen mit Preimage und Belegreferenz lokal festhalten.
   Vermutete Namen oder Typen nicht als sichere DB-Wahrheit anwenden.
   Bei Variablen zusätzlich Storage/Decompiler-Identität und Gültigkeitsbereich
   prüfen. Betroffene Aufrufer und ihre bisherigen Exporte ermitteln.
3. Unter exklusiv koordinierter DB-Schreibberechtigung nur diese Änderungen
   über tatsächlich verfügbare, passende GhidrAssist-Werkzeuge anwenden.
4. Jeden Task bis terminal verfolgen, dann Namen, Kommentar, Signatur und
   betroffene Decompilation zurücklesen. Ein gesendeter Request ist kein Erfolg.
5. Kanonische finale ASM/C-Belege aus dem aktualisierten Stand gewinnen bzw.
   gezielt erneuern, einschließlich betroffener erfasster Aufrufer. Namen müssen
   aus frischer Decompilation der gepflegten DB stammen. Bedeutung gegen
   unveränderte Originalbytes prüfen; keine reine Export-Textersetzung.
6. DB- und Exportnamen, Inline-Kommentare, Guides und Indizes abgleichen.
   Status und geprüfte Ergebnisse lokal dokumentieren.

## Kommentare und Unsicherheit

Jede aufgenommene Funktion erhält verbindlich einen verständlichen
Funktionskopf-/Plate-Kommentar in Ghidra. Er erklärt die Aufgabe, belegte
Ein-/Ausgaben, entscheidende Nebenwirkungen, Fehler-/Grenzfälle und offene
Abhängigkeiten. Konkrete ABI-/Registerhinweise ergänzen den Verhaltensvertrag.
Ein reiner Identitäts-/Registrierungsnachweis ersetzt diese Erklärung nicht.
Der Kopfkommentar steht auch unmittelbar vor der Funktion im kanonischen C.
Für vorhandene Funktionen ohne solchen Kommentar ist die Ergänzung offen,
nicht stillschweigend erfüllt.

Kommentare erklären konkrete Instruktionen, Datenfelder, Verzweigungen,
Rückgaberegister und Lebensdauer. Keine langen Chatprotokolle in Ghidra ablegen.
Inferenz und offene ABI-/Typfragen sichtbar halten.

Die semantischen Kommentare gehören auch in den kanonischen Pseudocode.
Nach Möglichkeit aus der gepflegten DB übernehmen; wenn der Exportweg Kommentare
nicht transportiert, nachweislich konsistent einarbeiten und die Grenze angeben.
Eine sidecar JSON-Datei ersetzt weder DB-Kommentar noch annotierten Pseudocode.

## Persistenz und Fehler

Session-Readback beweist nicht, dass die DB dauerhaft gespeichert wurde.
Den tatsächlich unterstützten Persistenzweg des bestehenden Projekts mit seinem
Besitzer koordinieren und prüfen. Kein fremdes Projekt schließen, kopieren oder
ersetzen und keinen unbekannt ausgegangenen Save erneut senden.

Transportfehler/Timeout: Status des ursprünglichen Tasks und aktuelle Preimages
prüfen; keinen Mutator blind wiederholen. Nur Exporte umzubenennen und eine
erfolgte DB-Änderung zu behaupten ist unzulässig.

Fehlende Schreib-/Persistenzfähigkeit bleibt ein konkreter offener Paketpunkt.
Andere Offlinearbeit darf fortgesetzt werden; das Paket ist hinsichtlich
Ghidra-Synchronisation noch nicht vollständig abgeschlossen.

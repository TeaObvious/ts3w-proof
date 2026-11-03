# Nativezugriff, Locks und Parallelität

[Regelindex](../index.md)

## Ziel und vorhandene Sitzung

Vorhandene GhidrAssist-Werkzeuge und Programmidentität prüfen.
Nativeaufrufe immer ausdrücklich an /TS3W.exe richten. Nicht aufgrund eines
aktiven TSM-Fensters auf das falsche Programm zugreifen. Ghidra-Projekt des
Nutzers erhalten; keine zweite DB als unbegründeten Standardweg erzeugen.

Der bisherige gemeinsame Lock:

    /home/lego/WorldTool/workqueue/root/test-branch-integration.lock

Für die Research-Aufgabe ist ein zusätzlicher Forschungslock erlaubt:

    /home/lego/WorldTool/TS3W-Research/coordination/ghidra-access.lock

## Schutz muss alle Nutzer erfassen

Zwei verschiedene Locks schützen dieselbe Ghidra-DB nicht gegenseitig.
Vor Einrichtung gemeinsamen Zugriffsplan mit bestehenden Nutzern festlegen.
Bis dahin bestehendes gemeinsames Protokoll verwenden, keinen belegten Lock
mit dem Forschungslock umgehen.

Eine eindeutige Lockreihenfolge dokumentieren. Nur nötige Transaktionen halten,
nicht während Offlineanalyse oder Warten auf Nutzerantworten. Keine Lockdatei
löschen/ersetzen, um eine Sperre zu brechen. PID, Taskbesitzer und tatsächliche
Aktivität prüfen; Alter allein beweist keine verwaiste Transaktion.

## Kontrollierter Parallelversuch

Mit einem Native-Leser starten. Zwei Leser erst in einem begrenzten Versuch
testen. Korrekte Ziel-/Request-/Ergebnisbindung, terminale Zustände, identische
Bytes und tatsächlichen Durchsatz vergleichen. Nur bei belegter Korrektheit
und Nutzen erhöhen; sonst wieder serialisieren.

DB-Namen, Kommentare, Typen und Persistenz immer exklusiv schreiben.
Auch Leser müssen einen konsistenten Stand während Änderungen erhalten.
Keine behauptete Thread-Sicherheit aus einzelnen erfolgreichen Aufrufen ableiten.

## Task-Lebensdauer

Absicht vor Originalaufruf journalisieren, Task-ID und Antwort danach sichern.
COMPLETED/FAILED/CANCELLED sind terminal; textuelles RUNNING ist es nicht.
Timeout ist zunächst unbekannter Ausgang, kein Beweis für Nichterfolg.

Bestehende Handles weiter abholen, nicht denselben Mutator erneut senden.
Eine Native-Lease erst nach Abschluss ihrer Tasks freigeben oder mit geprüftem
Besitzer ausdrücklich übergeben. Fremde Tasks nicht abbrechen.

Batch-/Skriptfunktionen waren laut Definition standardmäßig deaktiviert.
Nur tatsächlich verfügbare autorisierte Wege verwenden, keine Konfiguration
umgehen. Werkzeugfehler und Betriebsgrenzen offen dokumentieren.

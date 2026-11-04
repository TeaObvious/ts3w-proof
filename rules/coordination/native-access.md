# Nativezugriff, Locks und Parallelität

[Regelindex](../index.md)

## Ziel und vorhandene Sitzung

Vorhandene GhidrAssist-Werkzeuge und Programmidentität prüfen.
Nativeaufrufe immer ausdrücklich an /TS3W.exe richten. Nicht aufgrund eines
aktiven TSM-Fensters auf das falsche Programm zugreifen. Ghidra-Projekt des
Nutzers erhalten; keine zweite DB als unbegründeten Standardweg erzeugen.

## Eigener Research-Lock — direkte Nutzeranweisung vom 04.11.2026

Für Research-Transaktionen ausschließlich den projektspezifischen Lock verwenden:

    /home/lego/WorldTool/TS3W-Research/coordination/ghidra-access.lock

Den globalen Workspace-/OpenTS3-Lock für diese Forschung nicht erwerben oder
halten. Research darf dadurch keine fremden Git-Fetches, Builds oder Spieltests
blockieren. Diese neuere Nutzeranweisung ersetzt die frühere doppelte Lease und
deren Lockreihenfolge. Regeln fremder Projekte werden dadurch nicht geändert.

## Schutz der gemeinsam genutzten Ghidra-Sitzung

Alle Research-Nativezugriffe unter dem eigenen Research-Lock koordinieren.
Root bleibt bis zu einem geprüften Parallelversuch einziger Native-Controller.
Bestehende andere Nutzer derselben Ghidra-Sitzung ausdrücklich abstimmen: Zwei
unabhängige Locks bieten keinen gemeinsamen DB-Schutz. Vor jeder Native-Lease
Programmidentität, bekannte Taskbesitzer und laufende/pending Tasks prüfen.
Bei fremder oder ungeklärter Ghidra-Aktivität Nativezugriffe zurückstellen und
Offlinearbeit fortsetzen; keinen globalen Lock als Ersatz erwerben.

Nur nötige Transaktionen halten, nicht während Offlineanalyse oder Warten auf
Nutzerantworten. Keine Lockdatei löschen/ersetzen, um eine Sperre zu brechen.
PID, Taskbesitzer und tatsächliche Aktivität prüfen; Alter allein beweist keine
verwaiste Transaktion. Git-Arbeit im Research-Repo zusätzlich über eindeutige
Checkoutbesitzer und einen Publisher koordinieren; der globale Lock entfällt.

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

# Prüfung und Abnahme

[Regelindex](../index.md)

## Unabhängige Prüfung

Die erneute Zusammenfassung derselben Decompiler-C-Datei ist keine unabhängige
Bestätigung. Originalbytes, Instruktionen, IL, tatsächliche Aufrufer und
Reader/Writer gegen die jeweilige Aussage prüfen.

Repräsentative Grenzfälle herleiten: signed/unsigned, Null/Leer/Sentinel,
erste/letzte Zelle, Masken, Breite/Überlauf, Kapazität, Reihenfolge und Freigabe.
Konkrete Gegenbeispiele verwenden, statt Implementierungsnamen nachzusprechen.
Erfundene Runtimewerte und gesperrte Fixtureläufe sind kein Prüfweg.

## Paketcheck vor "fertig"

- Referenz, Funktionen und exakte Besitzbereiche stimmen.
- Erfassung ist vollständig oder konkret als teilweise/fehlgeschlagen markiert.
- Belegte Aussagen stimmen mit ASM/IL und tatsächlichen Aufrufern überein.
- Daten, Besitz, Fehler, Zustand, Threads und Lebensdauer sind erklärt.
- Analystennamen und Unsicherheit sind klar; bestätigte Ghidra-Änderungen sind
  angewandt und zurückgelesen, Persistenzstatus ist belegt.
- Exportkommentare, Namen, kanonische Paare, Guides und Indizes sind konsistent.
- Verständliche Funktionsköpfe und belegte Parameter-/Variablennamen sind in
  Ghidra gepflegt und im frischen Export enthalten. Betroffene erfasste Caller
  wurden neu dekompiliert; bekannte Ziele tragen aktuelle Namen. Dateinamen
  entsprechen verbindlich Adresse_Funktionsname.c/.asm.
- Offene Fragen, Reviewerbefund und Belegverweise sind nachvollziehbar.
- Bei Veröffentlichung stimmen tatsächlicher Remote-Commit und Quittierung.

Ein fachlich nützlicher Teilbefund darf veröffentlicht werden, wenn sein Umfang
und die offenen Punkte ausdrücklich benannt sind. Er macht das Gesamtpaket
nicht automatisch vollständig.

## Gesamtabschluss

Jede inventarisierte Funktion und jeder verbleibende ausführbare Bereich hat
eine nachvollziehbare Disposition. Alle relevanten Körper und Daten sind
vollständig erfasst, relevante indirekte Ziele und fachliche Verträge geklärt.
Ausschlüsse sind belegt; unbekannte Bereiche bleiben nicht still verschwunden.

Statische Erreichbarkeit, Exportvollständigkeit und Verstehen sind getrennt.
Nicht verfügbare Originalruntime bleibt ausdrücklich nicht geprüft.
Ein OpenTS3-Spieltest beweist keine native Funktionsabdeckung.

Ein versioniertes Referenzrelease erst nach nachvollziehbarer Gesamtprüfung
veröffentlichen. Neue Binärversionen erhalten eigene Identitäten.
Nutzungslimit, Zeitablauf oder fehlende sichtbare Aktivität sind kein Abschluss.

# Zusätzliche Suchhilfe: rekonstruierter Managed-Quellbaum

Lokaler Pfad:

    /home/lego/WorldTool/decompproject/TheSims3-source-managed/

## Rolle im Research

Der Schwerpunkt bleibt unsere eigene ILSpy-/IL-Auswertung der identifizierten
Originalassemblies aus den passenden S3SA-Ressourcen.
Der rekonstruierte Quellbaum kann Suchbegriffe, Methodennamen, Aufrufstellen,
Registrierungen und fachliche Zusammenhänge schneller auffindbar machen.
Er ersetzt weder die Originalassembly noch deren IL.

Einen Treffer erst als Suchhinweis führen, dann zur Originalmethode/Signatur
zuordnen und die für die Aussage relevanten Instruktionen prüfen.
Quellbaumfund, ursprüngliche Assembly und selbst geprüfter Befund sind getrennte
Belegarten. Nicht "Original bestätigt" schreiben, nur weil zwei C#-Darstellungen
plausibel übereinstimmen.

## Gelesene Provenienzangabe am 03.11.2026

Die lokale README.txt beschreibt:

- Rekonstruierte C#-Quellen von sieben Managed-DLLs der Version 1.67.
- Eine Kopie vom 02.10.2026 aus p4-2-fondamenta bei 7efd3045.
- Einen behaupteten IL-Vergleich ohne Unterschiede, jedoch zusätzlich
  **16 umgeschriebene Methoden im Autonomie-Subsystem**.
- Einen Verweis auf data/rewritten-methods.txt und einen Pristine-Tag im
  ursprünglichen TheSims3Decomp-Repository.

Diese Angaben wurden gelesen, aber ihr IL-Gleichheitsanspruch hier nicht
unabhängig verifiziert. Die referenzierte Liste umgeschriebener Methoden liegt
nicht im bereitgestellten Quellbaum; ein erwähnter fremder Tag ist keine
nachgewiesen verfügbare lokale Pristine-Referenz.

Vorhandene Projektgruppen: ScriptCore, SimIFace, Sims3Metadata, UI,
Sims3GameplaySystems, Sims3GameplayObjects und Sims3StoreObjects.
Das ist eine Navigationshilfe, kein Nachweis, dass alle aktuellen Originalpakete
oder Methoden vollständig erfasst sind.

## Grenzen

Autonomie-Befunde besonders am Retail-IL prüfen. Auch sonst keine Gleichheit
allein aus Dateiname, Projektgruppe oder fehlendem Rewrite-Kommentar ableiten.
Den Quellbaum unverändert als Eingabe verwenden. Keine vollständige Kopie in das
neue Forschungsrepository oder den späteren OpenTS3-Proof-Branch hochladen.
Die nachvollziehbar gewonnenen Erkenntnisse und zulässigen Belege versionieren.

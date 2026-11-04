# Fortschritt, Unterbrechung und Wiederaufnahme

[Regelindex](../index.md)

## Dauerhafter Arbeitsstand

Unter TS3W-Research kompakt und maschinenlesbar führen:

- Referenzmanifest, Inventarversion und beobachtete Toolfähigkeiten.
- Pakete, Besitzer, aktuelle Fragen und Abhängigkeiten.
- Native-Intents, ursprüngliche Taskhandles und terminale Ergebnisse.
- Geplante/angewandte Ghidra-Annotationen mit Preimages und Readbacks.
- Geprüfte Variablen-/Parameter-Storagebindungen, betroffene Caller und noch
  ausstehende Neu-Exporte oder Namens-/Pfadmigrationen.
- Finale Ergebnisse, Prüfungen, offene Grenzen und veröffentlichte Commits.

Der globale Workspace-Handoff bleibt
/home/lego/WorldTool/OpenTS3-EssentialData/handoffs/chatstate.md.
Dort nur die nötige Zusammenfassung und aktuelle Research-Verweise ergänzen.
Allgemeine Forschung gehört nicht in awesomemod/chatstate.md.

## Vor einer Übergabe

Tatsächlichen HEAD, Index, Arbeitsbaum und untracked-Dateien der eigenen
Checkouts prüfen. Benötigte unveröffentlichte Arbeit außerhalb build/workqueue
sichern und ihre Wiederherstellbarkeit prüfen. Ein veröffentlichter Commit
ersetzt nicht die Sicherung zusätzlicher untracked-Werkzeuge.

Native-Tasks terminal abholen oder mit geprüftem Besitzer ausdrücklich
übergeben. Keine fremden Sessions schließen. Eigene temporäre Prozesse/Leases
geordnet beenden; reale Ghidra-Persistenz und offene Mutationen dokumentieren.

Erreichten Umfang, konkrete Restfragen und nächsten sicheren Schritt nennen.
Teilabschluss nicht als vollständige Gesamterfüllung ausgeben.

## Fortsetzen

Erst aktuellen Zustand und ursprüngliche Handles prüfen, dann weiterarbeiten.
Keine bereits ausgeführten Mutatoren, Exports oder Saves blind wiederholen.
Locks und Claims verfallen nicht aufgrund ihres Alters.

Kein automatisches Wiederanlaufen aus diesem Regelbuch, einem Timerrest oder
dem Datum ableiten. Maßgeblich bleibt der aktuelle Nutzerauftrag.

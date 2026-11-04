# Inventar, Reihenfolge und Abdeckung

[Regelindex](../index.md)

## Verbindliche Reihenfolge

1. Vorhandene ältere Fensterexporte zuerst prüfen und echte Lücken beheben.
   Einen kleinen repräsentativen Pilot für Korrektheit und Durchsatz nutzen.
2. Danach vollständiges Funktions-/Codeinventar und sämtliche auffindbaren
   Adressen aus Original-Assemblies, Registrierungen und weiteren Wurzeln sammeln.
3. Vollständige Belege und zusammenhängende fachliche Verträge systematisch
   ergänzen; Relevanz- und Ausschlussgrenzen prüfen.

Vorhandene gültige Ergebnisse wiederverwenden. Alle alten Exporte pauschal neu
erzeugen ist ebenso falsch wie alle cap_applied=false-Einträge als vollständig
abzuhaken. Ein Vertrag befreit nicht von Körper-/Abhängigkeitsprüfung.

## Stabile Identität

Primärschlüssel: Referenzidentität plus RVA. Imagebase, VA, bekannte Namen,
exakte Besitzbereiche und Belegverweise zusätzlich führen.
Veränderliche Namen und Pfade sind keine alleinigen Schlüssel.
Jede Namens-/Signaturänderung erhält eine betroffene Caller-/Referenzmenge.
Solange aktuelle Callerexports, Dateinamen oder Indizes noch alte bestätigte
Zielnamen enthalten, bleibt die Ghidra-/Exportsynchronisation offen. Das ändert
weder die stabile Identität noch die fachliche Vollständigkeitsbewertung.

Inventar umfasst definierte Funktionen, Thunks, Aliase, Imports und verbleibende
ausführbare Bereiche. Ghidras definierte Funktionen sind kein Beweis, dass alle
realen Funktionen erkannt oder korrekt abgegrenzt sind.

Direkte Calls, Tailcalls, virtuelle Tabellen, Funktionszeiger, Callbackregister,
Initialisierung, Threads, Fehler und Abbau verbinden. Indirekte Ziele anhand
tatsächlicher Tabellen/Zuweisungen eingrenzen; offene Ziele explizit führen.

## Statusdimensionen getrennt halten

| Dimension | Zulässige Einordnung |
| --- | --- |
| Relevanz | benötigt; bedingt benötigt; vorhandener Ersatz; ausgeschlossen; ungeklärt |
| Belege | fehlt; teilweise; vollständig erfasst; unabhängig geprüft |
| Semantik | offen; teilweise geklärt; fachlich geprüft |
| Ghidra | offen; Änderungen geplant; angewandt und zurückgelesen; Persistenz geprüft |
| Runtime | nicht geprüft; genaue Beobachtung und Grenzen verlinkt |

"Vorhandener Ersatz" macht Originalbelege nicht überflüssig.
Teilweise, fehlgeschlagen und unbekannt werden nicht als erledigt gezählt.
Pro Status nachvollziehbare Begründung und verbleibende Lücken führen.

Ein Gesamtabschluss verlangt auch eine Disposition der Rest-Codebereiche.
Keine Prozentzahl aus Exportzahl geteilt durch Ghidra-Funktionszahl als
semantische Abdeckung ausgeben. Inventarversion und Nenner immer benennen.

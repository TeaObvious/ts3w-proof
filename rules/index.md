# TS3W-Research-Regelbuch

Einstieg: [Projektanweisungen](../AGENTS.md). Der lokale startprompt.md führt
zusätzlich durch die rechnerbezogene Einrichtung und ist nicht Teil des Git-Exports.
Dieses Regelbuch gilt für die ausdrücklich gestartete Forschung. Seine bloße
Anwesenheit startet keine neue Arbeit und hebt den laufenden Auftrag nicht auf.
Direkte aktuelle Nutzeranweisungen haben Vorrang; Ausnahmen mit ihrem konkreten
Umfang dokumentieren und nicht auf andere Dienste übertragen.
Benennungsregeln sind verbindlich: Adresse_Funktionsname.c/.asm, bestätigte
Funktions-/Parameter-/Variablennamen tatsächlich in Ghidra, verständliche
Funktionsköpfe und frische Neu-Exporte für geänderte Funktionsbezüge.
Direkte Nutzerpräzisierung vom 05.11.2026: Die rückwirkende Variablenzuordnung
in bestehenden C-Dateien entfällt während der Forschung; die tatsächliche
Variablenpflege in Ghidra bleibt verbindlich. Den abschließenden C-Gesamtexport
aus Ghidra erst am Ende durchführen.
Siehe [Funktionsnamen](naming/functions.md), [Dateien](naming/files.md) und
[Ghidra-Pflege](ghidra/annotations.md). Ungeklärte Rollen bleiben explizit offen.

## Zuerst lesen

Jeder Worker liest vor seiner ersten Aufgabe:

1. [Auftrag und Umfang](mission/scope.md).
2. [Suchen und Zusammenhänge prüfen](research/search.md).
3. [Dauerhafte Ablage](storage/preservation.md).
4. Vor Nativezugriff: [Zugriff und Locks](coordination/native-access.md).
5. Vor Benennung/Veröffentlichung: [Funktionsnamen](naming/functions.md) und
   [Ghidra-Annotationen](ghidra/annotations.md).

Danach die für das konkrete Paket nötigen Kapitel lesen. Bereits gelesene Regeln
nicht bei jedem Toolaufruf erneut laden.

## Kapitel nach Aufgabe

| Kapitel | Inhalt |
| --- | --- |
| [Umfang](mission/scope.md) | Spielumfang, Ausschlüsse, Vorrang neuer Nutzerentscheidungen |
| [Recherche](research/search.md) | Vorhandene Belege, Suchstrategie, Aufrufer, Produzenten und Verbraucher |
| [Inventar und Abdeckung](research/coverage.md) | Reihenfolge, stabile Identitäten, Status und Restlücken |
| [Native Belege](evidence/native.md) | Besitzbereiche, ASM, Bytes, ABI, Daten und Decompilergrenzen |
| [Managed-Belege](evidence/managed.md) | S3SA, Herkunft, ILSpy, IL und native Anbindung |
| [Originalverträge](evidence/contracts.md) | Verständliche Garantien, Grenzfälle und tatsächliche Beziehungen |
| [Funktionsnamen](naming/functions.md) | Fachliche Namen, Unsicherheit, präzise Rollen und Signaturen |
| [Dateien und Ordner](naming/files.md) | Verantwortungsgruppen, kanonische Paare und Schemaänderungen |
| [Ghidra-Annotationen](ghidra/annotations.md) | Bestätigtes Wissen tatsächlich in Ghidra aktualisieren und zurücklesen |
| [Nativezugriff](coordination/native-access.md) | Gemeinsame Sitzung, Forschungslock, Parallelität und Taskabschluss |
| [Arbeitspakete](coordination/work-packages.md) | Agenten, Zuständigkeiten, asynchrone Fragen und Messageboard |
| [Ablage](storage/preservation.md) | Unersetzbare Daten, Speichergrenzen und löschbare Ausgaben |
| [Veröffentlichung](publication/proof.md) | Proof-Regeln, Git-Guards, Indizes und öffentliche Belege |
| [Prüfung und Abnahme](verification/acceptance.md) | Unabhängige Prüfung, Fertigkriterien und ehrliche Grenzen |
| [Fortsetzung](operations/handoff.md) | Journale, Unterbrechung, Wiederaufnahme und Übergabe |

## Referenzen statt Regeln

- [Rechner, Originale und Werkzeuge](../references/pc-167.md)
- [Historischer Ausgangspunkt vom 03.11.2026](../references/baseline-20261103.md)
- [Zusätzlicher Managed-Quellbaum](../references/managed-source-tree.md)
- [Forschungsrepository und spätere Integration](../references/repositories.md)

Referenzpfade, Toolverfügbarkeit, alte Zahlen und SHAs sind bei Benutzung frisch
zu prüfen. Sie ersetzen keine aktuellen Guards.

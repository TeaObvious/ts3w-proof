# Dauerhafte Ablage und löschbare Ausgaben

[Regelindex](../index.md)

## Neue Forschung

Die ausdrücklich vereinbarte dauerhafte Ablage ist:

    /home/lego/WorldTool/TS3W-Research

Der Nutzer löscht diesen Ordner erst nach Rücksprache. Neue Vorbereitung,
Inventare, Rohbelege, Werkzeugquellen, Entscheidungen und Übergaben liegen hier.
Die 5-GB-Grenze von OpenTS3-EssentialData gilt nicht für diesen eigenen
Forschungsordner. EssentialData behält für seine übrigen Inhalte die bestehende
Grenze; keine verdeckte Umgehung durch zusätzliche Essential-Teilordner.

Sinnvolle Gruppen nach Bedarf: inventory, raw, managed, analysis, tools,
coordination, validation und handoffs. Suchbare Textdateien/JSON/TSV verwenden.
Keine Tar-Sammlung als einzige lesbare Forschungsbasis.

Versionierbare Ergebnisse zunächst im neuen TeaObvious/ts3w-proof versionieren.
Proprietäre Inputs und Betriebsdaten bleiben lokal und ignoriert. Ein lokaler
Git-Ignore ersetzt keine dauerhafte Aufbewahrung wichtiger Ergebnisse.

## Entbehrliche Orte

build, workqueue und /tmp dürfen keine einzige Fassung wichtiger Ergebnisse,
offener Änderungen, Skripte oder Wiederherstellungsinformationen enthalten.
Alle Research-Checkouts, auch Agenten-Worktrees, liegen ausschließlich unter
TS3W-Research/checkouts. Eigene Ausgaben, temporäre Profile und Werkzeuge bleiben
ebenfalls unter TS3W-Research, etwa outputs/, local/ und tools/. workqueue, build
und EssentialData sind keine Ablage für neue Research-Arbeit. Externe Originale
und vorhandene Referenzrepos nur lesen; sie werden deshalb nicht vollständig kopiert.

Live-Worktrees und Betriebsdaten nicht pauschal ins Forschungs-Git stagen.
Einzigartige Änderungen und unveröffentlichte Commits zusätzlich lesbar und
wiederherstellbar innerhalb TS3W-Research sichern.

Reproduzierbare Venvs, Caches und Builds sind keine dauerhaften Forschungsbelege.
Quellen, Abhängigkeitslisten und Wiederherstellungsanleitung dagegen schon.
Originalinstallation und Ghidra-Projekt an ihren bestehenden Orten erhalten.

## Größe und Entfernung

Freien Speicher, tatsächlichen Bedarf und Wachstum prüfen; zuerst am Pilot messen.
Keine spekulativen riesigen Exporte oder DB-Kopien erzeugen.
Bei Engpässen Ergebnisse erhalten und konkrete Lösung/Entscheidung melden.

Keine Forschungslöschung aus der Erlaubnis zum Schemawechsel ableiten.
Echte Entfernung mit exakten Pfaden, Grund und geprüfter Sicherung im geltenden
Entfernungsprotokoll dokumentieren. Verschiebungen als Verschiebungen behandeln.
Fremde Caches und Ausgaben bleiben unangetastet.

Vor jeder Übergabe einzigartige Turnarbeit gegen tatsächliche Arbeitsbäume
abgleichen. Ein alter Checkpoint ersetzt diese Prüfung nicht.

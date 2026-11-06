# Forschung versionieren und geprüfte Belege übertragen

[Regelindex](../index.md)

## Zuerst ins neue Repository

Primäres Ziel ist TeaObvious/TS3W-Research, Branch main.
Alle versionierbaren Forschungsergebnisse zuerst dort erarbeiten.
[Repository-Zuordnung](../../references/repositories.md) vor Git-Mutation lesen.

Inventare, nachvollziehbare Teilbefunde und eigene Werkzeuge dürfen auch
unfertig versioniert werden, sofern Status, Herkunft und offene Fragen klar sind.
Ein Commit oder funktionierender Export macht einen Befund nicht fachlich geprüft.
Ungeprüfte Massenausgaben niemals als bestätigte Referenz ausgeben.

Proprietäre EXE-/DLL-/Package-/Save-Dateien, ganze rekonstruierte Quellbäume und
Ghidra-Datenbanken bleiben außerhalb Git. Ebenso private Inputs, Zugangsdaten,
Transportantworten und laufende Lock-/Task-/Betriebsjournale lokal halten.
Die später benötigten Erkenntnisse, Provenienz, Lücken und zulässigen Belege
lesbar versionieren; keine Ergebnisse nur im flüchtigen Betriebsjournal belassen.

## Finale Belege

Pro Funktion ein kanonisches ASM/C-Paar. Jeder ASM-Link erhält unmittelbar den
Pseudocode-Link. Bei Managed-only-Belegen IL und annotierte Managed-Darstellung
verwenden, kein künstliches ASM.

Ghidra-Namen, Kommentare und tatsächlichen Exportstand prüfen. Guides enthalten
Originalvertrag und Beleggrenzen, keine Chat-/PR-Arbeitschronik. Offene ABI-,
Typ- und Runtimefragen explizit belassen.

Adressen, API-/Adress-/Callindizes, Namen, Paare und Links gemeinsam pflegen.
Originalidentität zentral führen, keine redundanten öffentlichen Prüfsummenlisten.
Die verbindlichen kanonischen Namen sind `Adresse_Funktionsname.c` und
`Adresse_Funktionsname.asm`. Alle betroffenen erfassten Aufrufer müssen nach
Funktionsnamens-/Signaturpflege aus Ghidra neu exportiert sein. Keine veralteten
`FUN_Adresse`-Aufrufe auf bereits bestätigte Ziele als final veröffentlichen.
Belegte Parameter-/Variablennamen und Funktionsköpfe gehören in die DB.
Direkte Nutzerpräzisierung vom 05.11.2026: Die rückwirkende Anpassung bestehender
C-Parameter-/Variablenmappings entfällt während der Forschung. Diese Darstellung
wird beim abschließenden Gesamtexport aus Ghidra erneuert. Die Pflicht zur
tatsächlichen DB-Pflege bleibt bestehen; manuelle Symbolersetzung allein ist
kein Nachweis einer DB-/Export-Synchronisation.

Der Nutzer hat die vollständige Übernahme des vorhandenen alten Proof-Bestands
ausdrücklich beauftragt. Bestehende Originalbelege wiederverwenden, ihre
Quellrevision und kanonischen Nachfolger erfassen und historische Export- und
Annotationsgrenzen sichtbar lassen. Übernommene Fenster sind keine neu
verifizierten vollständigen Körper. Fehlende Funktionsdefinitionen, Kopfkommentare
oder aktuelle Funktionsbezüge bleiben konkret offene Arbeit, verhindern aber
nicht den ehrlich gekennzeichneten Bestandsimport. Keine Neuentdeckung oder
semantische Neubestätigung aller übernommenen Funktionen verlangen, bevor
die vorhandenen Belege im Research-Repository nutzbar werden.

## Git-Transaktion

Besitzer, HEAD, Branch, Remote, Index, Arbeitsbaum und Preimages prüfen.
Frisch fetchen; fremde Beiträge reviewen und erhalten. Nur eigene geprüfte Pfade
stagen. Keine pauschale Aufnahme lokaler Inputs oder Betriebsdateien.

Ein Publisher je Integrationsindex. Gewöhnlich pushen und Remote-SHA prüfen.
Keine Force-Pushes, blinden Resets/Stashes oder Duplikatcommits bei unbekanntem
Pushausgang. Erst Remote und ursprüngliche Operation untersuchen.

## Spätere Übertragung und Antworten

Den bisherigen OpenTS3-Proof-Branch erst später gezielt integrieren.
Dorthin gehören ausschließlich finale geprüfte Belege, notwendige Daten,
Guides und Indizes nach den dortigen AGENTS.md-Regeln.
Keine parallele automatische Doppelveröffentlichung.

Öffentliche Antworten verlinken das tatsächliche Repository und den vollständigen
Commit; Privateingaben und lokale Pfade sind keine öffentlichen Belege.
Neuere Nutzerentscheidung während der laufenden Forschung: Im OpenTS3-Repository
nichts aktualisieren und keine weiteren Issue-Kommentare schreiben. Vorhandene
Kommentare bleiben stehen. TeaObvious-Forschungslinks nicht in OpenTS3 setzen;
für dessen Leser ist der bisherige Proof-Bestand das zugängliche Ziel. Der
frühere Auftrag für weitere Kommentare in Issue #307 ist damit ausgesetzt.
Forschung und Veröffentlichungen gehen weiter ausschließlich zuerst in dieses
Research-Repository. Die spätere geprüfte Übertragung in den bisherigen
`tools/ts3w-proof/`-Bestand ist eine getrennte Phase.

Bestehendes Board-Protokoll und dessen Zielrepoannahmen respektieren.
Neue Repo-Commits nicht als alte Branch-Commits ausgeben. Falls ein Boardabschluss
das alte Ziel verlangt, Repositorywechsel ausdrücklich koordinieren oder bis zur
zulässigen Integration nur den echten Zwischenstand quittieren.

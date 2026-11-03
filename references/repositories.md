# Zwei Repositories, zwei Phasen

## Jetzt: eigenständiges Forschungsrepository

    git@github.com:TeaObvious/ts3w-proof.git

Lokaler Hauptcheckout: /home/lego/WorldTool/TS3W-Research.
Arbeitsbranch: main. Das Repository war laut GitHub-Metadaten am 03.11.2026
leer und öffentlich; tatsächlichen Stand vor jeder Mutation frisch prüfen.

Neue versionierbare Forschungsergebnisse zuerst hier erarbeiten. Die
Verzeichnisstruktur darf passend zum Verständnis verbessert werden.
Vorgesehene Gruppen:

| Pfad | Zweck |
| --- | --- |
| rules/ | Kurze Research-Regeln mit Index |
| references/ | Referenzen, Provenienz und Ausgangsstand |
| evidence/native/ | Kanonische ASM/C-Paare und notwendige Datenauszüge |
| evidence/managed/ | Zulässige IL-/Managed-Belege und Bindungen |
| guides/ | Fachliche Originalverträge |
| indexes/ | Adress-, API-, Call- und Pfadzuordnungen |
| inventory/ | Versioniertes Inventar, Relevanz und explizite Lücken |
| tools/ | Eigene reproduzierbare Erfassungs-/Prüfwerkzeuge |

Die Fachverzeichnisse entstehen mit tatsächlichem Inhalt. Kein leerer Ordner
oder Initialcommit ist ein Hinweis auf bereits durchgeführte Forschung.

## Später: Integration in die bisherige Referenz

    git@github.com:JJCodes90/OpenTS3-Playtest.git
    Branch: ts3w-proof
    Zielbereich: tools/ts3w-proof/

Bisheriger lokaler Referenzclone: /home/lego/WorldTool/ts3w-proof.
Er bleibt erhalten. Sein Remote wird nicht auf das neue Repository umgestellt.
Er ist zunächst Quelle vorhandener Belege, kein paralleles Publikationsziel.

Nach Prüfung ausgewählte Ergebnisse mit vollständigen Quellcommit-IDs und
Pfadzuordnung integrieren: etwa evidence/ → tools/ts3w-proof/evidence/ und
guides/ → tools/ts3w-proof/guides/. Abweichende Indizes bewusst zuordnen.
Die Regeln des Zielbereichs gelten bei dieser späteren Integration zusätzlich.

Die Repositories haben zunächst unabhängige Historien und unterschiedliche
Wurzeln. Kein pauschales Merge mit unrelated histories und kein Übernehmen des
alten Produktbaums als Forschungsballast. Die geprüfte Inhaltsübertragung und
ihre Provenienz sind der relevante Merge-Schritt.

Lokale Startanweisungen, Betriebsjournale und Privateingaben werden nicht in
den OpenTS3-Proof-Branch übertragen. Schon veröffentlichte alte Belege nicht
als neu erforscht ausgeben; bei Übernahme ihren Ursprung dokumentieren.

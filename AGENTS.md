# TS3W-Research: Einstieg für Agenten

Beachte zuerst die zutreffenden Anweisungen des jeweiligen Host-Workspaces,
dann den [Research-Regelindex](rules/index.md) und die dort für deine Aufgabe
genannten Kapitel. Diese Research-Regeln sind ohne OpenTS3-Produktcheckout lesbar.

Dieses Projekt erarbeitet die umfassende Originalanalyse von TS3W PC 1.67.
Der Nutzer hat den Forschungsauftrag ausdrücklich gestartet und fortgesetzt.
Die bloße Anwesenheit dieser Dateien startet keine neue Arbeit; maßgeblich
bleiben der aktuelle Nutzerauftrag und seine neueren Präzisierungen.

Nach ausdrücklichem Forschungsstart gelten die im Startprompt dokumentierten
neueren Nutzerentscheidungen zu Forschungsablage, parallelen Agenten und
Forschungslock. Sie sind kein Umbau der Regeln eines fremden Board-Workers.

Primäres Repository: TeaObvious/TS3W-Research, Branch main. Ergebnisse zunächst hier
erarbeiten; später geprüfte Inhalte gezielt in den bisherigen OpenTS3-Proof-Branch
übertragen. Vor Veröffentlichung [Repo-Zuordnung](references/repositories.md)
und [Proof-Regeln](rules/publication/proof.md) lesen.

Der Hauptcheckout liegt direkt in TS3W-Research. Auch weitere Research-Worktrees,
eigene Ausgaben und Betriebsdaten bleiben vollständig in diesem Projektordner;
keine neue Research-Arbeit nach workqueue, build oder EssentialData auslagern.

Die Regeln beschreiben Originalforschung; Kenntnisse der OpenTS3-Modulstruktur
sind dafür nicht erforderlich. Keine alte Migration oder Spieltestserie starten.

Direkte Nutzeranweisung vom 04.11.2026: Research verwendet ausschließlich den
[eigenen Projektlock](rules/coordination/native-access.md). Den globalen
Workspace-Lock dafür nicht erwerben; fremde Git-Fetches dürfen durch Research
nicht gesperrt werden. Die gemeinsame Ghidra-Sitzung weiterhin ausdrücklich
koordinieren und tatsächliche Task-/Programm-Guards beibehalten.

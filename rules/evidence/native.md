# Native Belege

[Regelindex](../index.md)

## Identität und Vollständigkeit

Nur die verifizierte Originalreferenz analysieren; das Programm bei jedem
Nativeaufruf ausdrücklich wählen. Originaldatei, geladene Identität und Adressen
verbinden. Ein aktives GUI-Fenster wählt den Zielprozess nicht aus.

Die tatsächliche Vereinigung aller Funktionsbesitzbereiche erfassen, auch wenn
sie disjunkt ist. Eine Hülle von Anfang bis Ende enthält möglicherweise fremde
Bytes, Daten oder andere Funktionen. next_entry und entry+8192 sind keine
verlässlichen Körpergrenzen. Shared Tails und nicht eindeutig definierte
Funktionsgrenzen ausdrücklich erklären.

Listing, vollständige Instruktionen und ursprüngliche Bytes unabhängig
abgleichen, etwa über PE-Dateioffsets und eine zweite Disassembly.
Bei Abweichung anhalten und Ursache klären: Mapping, Relokation, Disassembly,
Funktionsgrenze oder falsche Referenz. Keine beschädigte DB automatisch reparieren.

## ASM und Pseudocode

Eine Funktion besitzt genau ein kanonisches finales ASM-/Pseudocodepaar.
Rohfassung und revidierte geprüfte Fassung lokal unterscheiden, nicht als mehrere
konkurrierende öffentliche Exporte führen.

Pseudocode mit konkreten Instruktionsbezügen annotieren: Branches, Feldbreiten,
Vorzeichen, Rückgaberegister, arithmetische Operationen, Pointerbesitz und
Nebenwirkungen. Kommentiere die Bedeutung, nicht bloß die C-Zeile.
Die Erläuterungen stehen IM Pseudocode, keine ausgelagerte Kommentar-Sidecar-Datei.

## ABI und Datenfluss

Signatur, Calling Convention, this-Pointer, Stackcleanup, Rückgaberegister und
Callergebrauch prüfen. Ein generiertes void oder bool ist kein Beleg.
x87/SSE-Rundung, Überlauf, Casts und Sentinelwerte an Instruktionen prüfen.

Feldoffsets, Breiten, Bitmasken, Arraystride, Kapazität/Länge und Einheiten
explizit erfassen. Inferenz als solche markieren. Keine Typen nur zuweisen,
damit Decompiler-C angenehmer aussieht.

Referenzierte Daten umfassen bei Bedarf Tabellen, Konstanten, Strings,
Sprungtabellen, vtables, Callbackslots und relevante Ressourcenformate.
Produzent, Leser, Schreiber, Invalidierung und Freigabe verfolgen.

Die fachliche Bedeutung nach der [Vertragsregel](contracts.md) zusammenfassen;
vollständige Rohdaten ersetzen keinen verständlichen Originalvertrag.

Fehlende oder fehlerhafte Decompilation offen führen. ASM kann eine konkrete
Aussage belegen, ersetzt aber kein vorgetäuschtes erfolgreiches C-Ergebnis.
Undefinierte Einträge nicht als erfundene vollständige Funktionen publizieren.

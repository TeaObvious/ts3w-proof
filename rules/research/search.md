# Suchen und Zusammenhänge prüfen

[Regelindex](../index.md)

## Vorhandenes Wissen zuerst

Vor einem neuen Originalzugriff bestehende Guides, API-/Adressindizes,
kanonische ASM/C-Paare, Managed-Belege und lokale Forschung durchsuchen.
Dateisuche mit rg --files, Textsuche mit rg beginnen. Erst eng nach bekannten
Adressen, Tokens oder Fachbegriffen suchen, danach anhand realer Kanten erweitern.

Große Antworten gezielt paginieren. Ein abgeschnittener Tool-Preview ist kein
vollständiges Ergebnis. Vorhandene vollständige Ergebnisse lesen, statt denselben
Export oder dieselbe Analyse erneut zu erzeugen.

## Von der Frage zur belegten Operation

1. Die konkrete Frage, Referenzidentität und benötigte Belegart festhalten.
2. Einen tatsächlichen Einstieg wählen: Managed-Methode, Registrierung,
   Aufrufer, beobachteter Fehler, Datenproduzent oder bestätigte Adresse.
3. Aufrufkette über Managed/native Übergänge, Wrapper und Tailcalls verfolgen.
4. Eingaben bis zum Produzenten und Ausgaben bis zum Verbraucher verfolgen.
   Bei Persistenz Leser UND Schreiber, bei Cachefragen Invalidierung und Besitz,
   bei Callbacks Registrierung UND Aufruf und Freigabe prüfen.
5. Rückgaben, Grenzen, Vorzeichen, Fehler, Nebenwirkungen und Lebensdauer
   gegen Originalinstruktionen bzw. IL prüfen.
6. Alle noch offenen Abhängigkeiten als konkrete Fragen erfassen.

Aufrufer können die Bedeutung eines Blatts ändern. Eine Funktion, die drei
Bytes schreibt, beweist nicht, wer das vierte Byte setzt. Ein Wrapper mit
scheinbar leerer Rückgabe kann ein Registerergebnis weiterreichen.

## Nach links und rechts suchen

Zum unmittelbaren Treffer auch Geschwisteroperationen, Konstruktion/Abbau,
inverse Operationen, Fehlerpfade und ähnliche Datenzugriffe prüfen.
Nicht wahllos fremde Subsysteme vollständig dekompilieren: Erweiterung durch
eine konkrete Frage oder belegte Abhängigkeit begründen.

Funktionsnamen, Strings, Namenspräfixe und frühere Kommentare liefern Kandidaten,
keine Semantik. Weitere Kandidaten aus Registrierungen, indirekten Dispatches,
Datentabellen und noch nicht erfasstem Code finden. Unbenannte Funktionen bleiben
im Inventar; eine Suche nur nach sprechenden Namen reicht nicht.

## Suchgrenzen offenlegen

"Nicht gefunden" nennt Quelle, Version, Suchraum und Methode.
Ein fehlender Treffer oder unbeobachteter Pfad beweist keine Abwesenheit.
Widersprüche zwischen ASM, IL, Pseudocode, Kommentar und Runtime weiter verfolgen;
nicht die angenehmste Darstellung auswählen.

Quellen und offene Fragen so festhalten, dass ein anderer Worker ohne den
gesamten Chat weiterarbeiten kann. Keine Vermutung als bestätigten Befund publizieren.

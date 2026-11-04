# Managed-Belege und native Anbindung

[Regelindex](../index.md)

Originale Managed-Namen, Tokens und IL-Operanden unverändert belegen. Neue native
Analystennamen in den Bindungs-/Callindizes zusätzlich zuordnen; sie ersetzen
keine Original-Importnamen. Nach nativen Namensänderungen diese Zuordnungen
gemeinsam mit den betroffenen nativen Callerbelegen aktualisieren.

## Originalquelle

Retail-Assemblies aus den passenden S3SA-Paketressourcen gewinnen.
Paketidentität, Resource-Key, Assemblyversion, MVID, SHA256 und relevante
Methodentokens nachvollziehbar führen. Eine lose DLL gleichen Namens genügt nicht.

Retail, Modersatz, ältere Erweiterungsstände und retargetete/prepared Assemblies
getrennt identifizieren. Bei Versionsvergleichen alle benötigten Fassungen
explizit auswählen. Nicht still PC 1.67 mit 1.69 oder einer Mac-Fassung mischen.

## Zusätzlicher rekonstruierter Quellbaum

Primär bleibt die eigene ILSpy-/IL-Auswertung identifizierter Originalassemblies.
Ein vorhandener rekonstruierter C#-Baum hilft bei Suche, Navigation und Kandidaten,
ist aber kein Ersatz für diese Auswertung. Namen und Logik am Original bestätigen.

Die bereitgestellte TheSims3-source-managed-README beschreibt neben ihrem
IL-Gleichheitsanspruch ausdrücklich 16 umgeschriebene Autonomie-Methoden.
Beides ist zunächst eine Herkunftsangabe, kein von uns geprüfter Nachweis.
Ein fehlender Umschreibungsvermerk an einer Datei beweist keine Retail-Gleichheit.
Quelle, Fundstelle und Originalabgleich getrennt dokumentieren.
Siehe [Quellbaum-Referenz](../../references/managed-source-tree.md).

## Auswertung

Eine tatsächlich funktionierende ILSpy-/Managed-Analyseroute verwenden.
Vorhandene lokale Werkzeuge und Quittungen prüfen, keine defekte CLI durch
wiederholten identischen Aufruf "testen". Werkzeugquellen und reproduzierbare
Abhängigkeiten dauerhaft im Research-Projekt sichern.

Metadaten und IL belegen Methodensignaturen, Aufrufziele, Konstanten und
Kontrollfluss. Bei verdächtigem dekompiliertem C# die zugrunde liegende IL prüfen.
Statische Analyse lädt oder führt die untersuchte Assembly nicht zwangsläufig aus;
keine Runtimebeobachtung daraus ableiten.

## Übergänge schließen

Registrierungsname, Managed-Methode/Token, Marshaling, native Zieladresse und
Rückkanal verbinden. Breiten, Enumwerte, String-/Arraybesitz und Fehlerkonvention
an beiden Seiten prüfen. Callbackregistrierung und Lebensdauer verfolgen.

Bei Serialisierung Leser, Schreiber, Versionen und konsumierende Pfade verbinden.
Bei generischen APIs nicht aus einem konkreten Aufrufer auf alle Typen schließen.

Managed-only-Belege mit IL und annotierter Managed-Darstellung verlinken;
kein künstliches ASM-Paar erfinden. Proprietäre Assemblies und ungeprüfte
Voll-Decompilationen nicht veröffentlichen.

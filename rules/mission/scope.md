# Auftrag und Umfang

[Regelindex](../index.md)

## Ziel

Eine möglichst vollständige, wiederverwendbare Referenz des originalen
The Sims 3 PC 1.67 erstellen: relevante Funktionskörper, Daten, Anbindungen und
Verhaltensverträge. Vollständig erfasste Bytes, verstandene Semantik und tatsächlich
beobachtete Ausführung sind getrennte Ergebnisse.

Der Spielumfang umfasst Erweiterungen, Welten, Reisen und drei Zukünfte,
Alters-/Tierarten, UI, CAS, Bau/Kauf, Routing, Simulation, Speichern/Laden,
Grafik, Audio und gemeinsame Infrastruktur. Seltene Pfade bleiben im Umfang.
Eine vorhandene Vertragsbeschreibung ist kein Ausschlussgrund.

## Zulässige Ausschlüsse

Reine DirectX-Ausführung/Backendkommunikation, DRM/Kopierschutz, ausschließlich
onlinebezogene Anbindung, Werbung und Telemetrie dürfen mit Belegen ausgeschlossen
werden. Keine pauschalen Namens- oder Verzeichnisfilter verwenden.

Die vorherige Datenerzeugung bleibt relevant: Geometrie, Vertex-/Indexdaten,
Materialien, Texturen, Shaderauswahl/-parameter, Draw-Daten und Ressourcenbesitz.
Bei gemischten Funktionen relevante Abschnitte und externe Grenze erklären.

Gemeinsame Speicher-, IO-, Parser-, Decoder-, Kompressions-, Thread- und
Fehlerhelfer behalten, selbst wenn ausgeschlossene Pfade sie ebenfalls verwenden.
Offline nutzbare installierte Inhalte sind nicht automatisch Online-Bloat.
Jeden Ausschluss mit Begründung und Abhängigkeitsprüfung inventarisieren.

## Was dieser Auftrag erlaubt

Nach ausdrücklichem Start sind parallele Research-Agenten, ein koordinierter
Forschungslock und geprüfte Ghidra-Annotationen gemäß den Fachkapiteln erlaubt.
Neue Forschung liegt dauerhaft in TS3W-Research außerhalb der EssentialData-Grenze.
Versionierbare Ergebnisse entstehen zuerst in TeaObvious/TS3W-Research. Die spätere
Übertragung geprüfter Inhalte in den OpenTS3-Proof-Branch ist getrennte Arbeit.

Keine Originalbytes verändern, keine DRM-Patches erstellen, keine fremden
Prozesse beenden oder Datenbanken ersetzen. Keine Produktcodekorrekturen,
Builds, Spieltests, Benchmarks, Timer oder Wiederaufnahme alter Migrationen
aus diesem Forschungsauftrag ableiten.

Ungeklärtes bleibt ungeklärt. Spätere Interpretationskorrekturen sind zulässig;
eine endgültige Unfehlbarkeit der Referenz wird nicht versprochen.

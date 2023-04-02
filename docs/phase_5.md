# Analyse von Datenquellen und der elektronischen Varianten

## Aufgabenstellung

**In einer der verdienten Frühstückspausen unterhalten Sie sich mit einem Ihren Mitarbeitern über die schlechte Qualität der als Beispiel bereitgestellten Grundrisse auf Papier. Sie wundern sich, dass diese nicht elektronisch zur Verfügung stehen.**

* Identifizieren Sie notwendige Daten, die als Voraussetzung für die Angebotserstellung dienen.
* Analysieren Sie die Datenquellen hinsichtlich der Bereitsteller/Orte und möglicher Datenformate in denen diese bereitgestellt werden können.
* Untersuchen Sie die Datenformate/Datenquellen im Detail:
    * welche Daten werden dargestellt
    * wie werden Daten in den Datenquellen dargestellt
    * wie können diese importiert und sinnvoll weiterverarbeitet werden
    * welche Metainformationen sind zur Datenquelle vorhanden
* Entscheiden Sie, wer die Daten innerhalb der ITSystemHausDD GmbH nutzen und verarbeiten darf.
* Entscheiden Sie sich für ein Datenformat für das Angebot.

## Identifizierung der notwendigen Daten als Voraussetzung für die Angebotserstellung

* persönliche Kundendaten (Name, Anschrift, Telefonnummer etc.)
* Raummaße (analog oder als Datei, dabei als Plan oder nur als Werte), wenn vorhanden, ansonsten angefertigte Skizzen des Außendienstmitarbeiters bei der Vorort-Begehung
* genaue Einordnung der benötigten IT-Komponenten
* bereits vorhandener Netzwerkplan, wenn es diesen gibt, ansonsten eine genaue Auflistung aller Geräte und deren Verkabelung

## Analyse der Datenquellen hinsichtlich der Bereitsteller/Orte und möglicher Datenformate

* mögliche Bereitsteller:
    * Daten können direkt vom Kunden kommen (persönliche Kundendaten, Raummaße)
    * Daten kommen vom Bauamt (Grundriss des Gebäudes)
    * Daten kommen vom Außendienstmitarbeiter (Raummaße)
* mögliche Orte:
    * direkte Speicherung der Daten in einer Datei im Programm, was für Außendienstmitarbeiter geeignet ist, da diese eventuell keinen Zugriff auf die Datenbank haben (die Daten können später mit der Datenbank synchronisiert werden)
    * Speicherung der Daten in einer Datenbank, mit der sich das Programm auf allen Geräten verbindet, um die gewünschten Informationen abzurufen
* mögliche Datenformate:
    * Daten können als  fast jede Form eines Dateiformates (CSV-Datei, PDF-Datei, XML-Datei, Excel-Tabelle etc.) vorhanden sein
    * Daten können auch bereits im CAD- oder BIM-Format abgespeichert sein


## Untersuchung der Datenformate/Datenquellen im Detail

### Welche Daten werden dargestellt?

* persönliche Kundendaten (Metainformation)
* weitere Metainformationen zur Datenquelle (siehe weiter unten)
* Daten der IT-Komponenten
* Raumpläne (vor allem Maße der Räume)
* Gesamtnetzwerkplan

### Wie werden Daten in den Datenquellen dargestellt?

* Daten vom Kunden oder Bauamt:
    * können in den bereits erwähnten Datenformaten dargestellt werden 
    * jedoch könnten Daten auch in Papierform (handschriftlich oder gedruckt) als Grundriss des Gebäudes oder nur als Werte vorhanden sein
* Daten in der Datenbank:
    * können als viele verschiedene Datentypen abgespeichert werden (INT, FLOAT, STRING, BLOB etc.)
    * diese Datentypen können sich je nach verwendeter Datenbank unterscheiden
* Daten in einer Datei des Programmes:
    * können als Text oder als Binärdatei gespeichert werden (viele verschiedene Datenformate sind möglich, wie XML, JSON etc. für gespeicherten Text)

### Wie können diese importiert und sinnvoll weiterverarbeitet werden?

* analoge Datenformate in Papierform müssen in mühevoller Handarbeit in der Datenbank eingetragen werden, was dem Unternehmen in Rechnung gestellt wird (hoher Zeitaufwand)
* Dateien können besser verarbeitet werden, was jedoch vom genauen Datenformat abhängig ist
    * CSV-Dateien sind beispielsweise einfach in eine Datenbank einzupflegen, Excel-Tabellen und PDF-Dateien schon deutlich schwieriger (somit wird auch hier ein erhöhter Zeitaufwand benötigt)
    * CAD- oder BIM-Dateien können eventuell in das genaue benötigte BIM-Format konvertiert werden (kommt auf das genaue Datenformat an und darauf, ob es ein proprietäres Datenformat, welches nur von zugelassene Softwares gelesen werden kann, ist oder nicht)

### Welche Metainformationen sind zur Datenquelle vorhanden?

* Kundendaten (Name, Adresse, Telefonnummer etc.)
* Raumhöhe, da zur Einfachheit nur 2D-Modelle erstellt werden sollen
* Hardwareinformationen (CPU, RAM, Gehäuse, Netzteil etc.)
* Informationen zur Verkabelung (verwendete Kabeltypen etc.)
* Kosten der IT-Komponenten
* Höchsttemperatur der Räume, in der sich die IT-Komponenten befinden
* Höchstluftfeuchtigkeit der Räume, in der sich die IT-Komponenten befinden

## Entscheidung, wer die Daten innerhalb der ITSystemHausDD GmbH nutzen und verarbeiten darf

* Außendienstangestellte, welche die Begehung des Objektes des Kunden durchführen
* Innendienstangestellte, welche mit dem Projekt zu tun haben und die Software bedienen

## Entscheidung für ein Datenformat für das Angebot

* verwendet werden soll ein BIM-Datenformat
* BIM (Building Information Modeling) ist eine Methode, welche die Erstellung eines 3D-Modells von einem Bauwerk, sowie die Verwaltung aller damit verbundenen Informationen (wie z.B. Kosten, Zeit, thermische und akustische Eigenschaften usw.) ermöglicht
* deshalb müssen BIM-Dateien im Gegensatz zu CAD-Dateien ([Übersicht über CAD-Datenformate](https://www.laserscanning-europe.com/de/news/uebersicht-von-cad-datenformaten)) die Möglichkeit bieten, über das 3D hinauszugehen und alle anderen Informationen des Projekts anzeigen ([Beispiel eines CAD-Modells](legal/pdfs/MENISCAS_180_CAD-Modell.pdf))
* in unserem Fall müssen Kundendaten, Hardwareinformationen, Höchsttemperatur der Räume, in der sich die IT-Komponenten befinden, Kosten der IT-Komponenten etc. als Metadaten gespeichert werden
* verwendet werden soll ein offenes Dateiformat, denn diese sind Formate deren Struktur bekannt ist, und daher herstellerunabhängig sind
* dies bedeutet, dass sie von jeder Software gelesen und geändert werden können und somit die Interoperabilität fördern 
* deswegen fiel die Entscheidung auf das Datenformat **IFC (Industry Foundation Classes)** ([Übersicht über BIM-Datenformate](https://biblus.accasoftware.com/de/bim-dateien-die-wichtigsten-bim-formate-fuer-die-planung/))
* dies ist das am weitesten verbreitete nicht-proprietäre BIM-Format
* es handelt sich um ein offenes und neutrales Dateiformat, das ein Modell eines Gebäudes oder Tragwerk enthält, einschließlich räumlicher Elemente, Materialien und Formen
* das IFC-Dateiformat ist unabhängig von der verwendeten Software und kann von zahlreichen Programmen geöffnet werden.
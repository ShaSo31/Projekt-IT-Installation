# Erstellung eines IT-Sicherheitskonzeptes

## Aufgabenstellung

**Bei einem Telefongespräch fragt der Kunde nach, ob die Daten im zu erstellenden Software-System auch sicher sind. Der Kunde äußerst Sorgen, dass Hacker oder ein nicht loyaler Mitarbeiter wichtige Unternehmensdaten unbemerkt entwenden können. Sie beruhigen Ihn und stellen Ihm ein Sicherheitskonzept in Aussicht.**

* Recherchieren Sie nach technischen und organisatorischen Schutzmaßnahmen (TOM).
    * Nutzen Sie die folgenden Internetquellen: [Technische Maßnahmen](https://sichere-it.org/technische-massnahmen/) und [Organisatorische Maßnahmen](https://sichere-it.org/organisatorische-massnahmen/)
    * Erstellen Sie ein Konzept in tabellarischer Form, wie Sie die einzelnen gefundenen Datenquellen konkret mit TOM schützen werden.

## Konzept zum Schutz der Datenquellen mit technischen und organisatorischen Maßnahmen (TOM)

* gemäß § 9 BDSG sind alle Stellen, welche personenbezogene Daten verarbeiten, erheben oder nutzen verpflichtet, technische und/oder organisatorische Maßnahmen zu treffen um zu gewährleisten, dass die Sicherheits- und Schutzanforderungen des BDSG erfüllt sind
* unter technischen Maßnahmen sind alle Schutzversuche zu verstehen, die im weitesten Sinne physisch umsetzbar sind oder Maßnahmen die in Soft- und Hardware umgesetzt werden
* als organisatorische Maßnahmen sind solche Schutzversuche zu verstehen die durch Handlungsanweisung, Verfahrens- und Vorgehensweisen umgesetzt werden
* in unserem Fall geht es konkret um die Datenbank des Programmes und das Programm selber (Daten innerhalb von Dateien gespeichert) als Datenquelle

|Kategorien von TOM gemäß Anlage zu § 9 BDSG    |Beschreibung der Kategorie und Nennung konkreter möglicher Möglichkeiten zum Schutz                                                  |
|-----------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
|Zutrittskontrolle                              |- gemeint sind Maßnahmen um zu verhindern, dass Unbefugte Zutritt (räumlich zu verstehen) zu Datenverarbeitungsanlagen erhalten, mit welchen personenbezogene Daten verarbeitet werden </br> - Gebäudesicherung: Zäune, Pforte, Videoüberwachung </br> - Sicherung der Räume: Sicherheitsschlösser, Chipkartenleser, Codeschlösser, Sicherheitsverglasung, Alarmanlagen                                                                                                                                    |
|Zugangskontrolle                               |- gemeint sind Maßnahmen um zu verhindern, dass Datenverarbeitungsanlagen von Unbefugten benutzt werden können </br> - Zugang zu Rechnern/Systemen (Authentifizierung): Benutzerkennung mit Passwort, biometrische Benutzeridentifikation, Firewall, zertifikatsbasierte Zugangsberechtigung                           |
|Zugriffskontrolle                              |- es muss gewährleistet werden, dass die zur Benutzung von DV-Anlagen berechtigten Nutzer ausschließlich auf Inhalte zugreifen können für welche sie berechtigt sind und das personenbezogene Daten bei der Verarbeitung und Nutzung und nach dem Speichern nicht unbefugt kopiert, verändert oder gelöscht werden können </br> - Berechtigungskonzept, Benutzerkennung mit Passwort, gesicherte Schnittstellen (USB, Firewire, Netzwerk etc.), Datenträgerverwaltung, zertifikatsbasierte Zugriffsberechtigung   |
|Weitergabekontrolle                            |- es muss verhindert werden, dass personenbezogenen Daten bei der elektronischen Übertragung, beim Transport oder bei der Speicherung auf Datenträgern unbefugt gelesen, kopiert, verändert oder gelöscht werden können </br> - Sicherung bei der elektronischen Übertragung: Verschlüsselung, VPN, Firewall, Fax-Protokoll </br> - Sicherung beim Transport: verschlossene Behälter, Verschlüsselung </br> - Sicherung bei der Übermittlung: Verfahrensverzeichnis, Protokollierungsmaßnahmen                    |
|Eingabekontrolle                               |- es muss sichergestellt werden, dass nachträglich überprüft werden kann ob und von wem personenbezogene Daten eingegeben, verändert oder gelöscht worden sind </br> - Protokollierung, Benutzeridentifikation                                                                                                             |
|Auftragskontrolle                              |- es muss sichergestellt werden, dass personenbezogene Daten, die im Auftrag verarbeitet werden, gemäß den Weisungen des Auftraggebers verarbeitet werden </br> - Weisungsbefugnisse festlegen, Vor-Ort-Kontrollen, Datenschutzvertrag gemäß den Vorgaben nach § 11 BDSG, Stichprobenprüfung, Kontrollrechte   |
|Verfügbarkeitskontrolle                        |- es muss sichergestellt werden, dass personenbezogene Daten gegen zufällige Zerstörung oder Verlust geschützt werden </br> - Brandschutzmaßnahmen, Überspannungsschutz, unterbrechungsfreie Stromversorgung, Klimaanlage, RAID (Festplattenspiegelung), Backupkonzept, Virenschutzkonzept, Schutz vor Diebstahl    |
|Trennungsgebot                                 |- es ist sicher zu stellen, dass personenbezogene Daten, die zu unterschiedlichen Zwecken erhoben wurden, getrennt verarbeitet werden können </br> - Trennung von Produktiv- und Testsystemen, getrennte Ordnerstrukturen (Auftragsdatenverarbeitung), separate Tables innerhalb von Datenbanken, getrennte Datenbanken     |

* welche Maßnahmen genau umgesetzt werden, muss mit dem Kunden besprochen werden (Sinnhaftigkeit und Kostenfaktor)
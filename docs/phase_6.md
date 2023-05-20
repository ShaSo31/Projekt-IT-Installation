# Erstellung einer Benutzerverwaltung

## Aufgabenstellung

**Bei einem der üblichen längeren Projektbesprechungen weist ein Mitarbeiter darauf hin, dass ein Kunde eines vorhergehenden Software-Projektes gerade Probleme macht und dieser mit der Software sehr unzufrieden ist, da ein Praktikant beim Kunden versehentlich den gesamten Datenbestand gelöscht hat.**

* Identifizieren Sie die Nutzer des zukünftigen Software-Systems und dessen Datenbestandes.
    * Notieren Sie für alle Nutzer die notwendigen Rechte auf die Datenquellen.
* Entscheiden Sie, wie Sie die Nutzerverwaltung praktisch im System umsetzen können. Hinweis: [SQLServer - Kapitel 9](legal/pdfs/sql_server_2012_kapitel_9.pdf)
    * Definieren Sie die Schnittstelle zwischen eigenen Software-Anwendungen und der gewählten Nutzerverwaltung.

## Identifikation der Nutzer des zukünftigen Software-Systems und die notwendigen Rechte der Nutzer auf die Datenquellen

* als Datenquelle wird hier nur die Datenbank betrachtet (Dateien im Programm selbst, werden mit dieser synchronisiert und auf externe Datenquellen, wie Kunden, kann kein Einfluss geübt werden)

|Nutzer des zukünftigen Software-Systems|notwendigen Rechte der Nutzer auf Datentabellen (Kundendaten, Grundriss, Metadaten)|notwendigen Rechte der Nutzer auf System- und Logtabellen|
|---------------------------------------|-----------------------------------------------------------------------------------|---------------------------------------------------------|
|Einkauf                                |kann Datensätze in Tabellen verändern, anlegen und löschen                         |kein Lese- und Schreibzugriff                            |
|Verkauf                                |kann Datensätze in Tabellen verändern, anlegen und löschen                         |kein Lese- und Schreibzugriff                            |
|Außendienst                            |kann Datensätze in Tabellen verändern, anlegen und löschen                         |kein Lese- und Schreibzugriff                            |
|Innendienst                            |kann Datensätze in Tabellen verändern, anlegen und löschen                         |kein Lese- und Schreibzugriff                            |
|Administrator                          |kann Tabellen in der Datenbank und Datensätze in Tabellen verändern, anlegen und löschen|kann Tabellen in der Datenbank und Datensätze in Tabellen verändern, anlegen und löschen|

* die Rechte von Einkauf, Verkauf, Außendienstangestellte und Innendienstangestellte sind ausreichend für normale Angebotserstellungen (Bearbeitung ganzer Tabellen ist nicht notwendig, weil diese Struktur vorgegeben ist)
* die Rechte des Administrators sind umfassend, er kann prinzipiell alles und sollte nur von geschulten Personal genutzt werden und auch nur, wenn es die Situation erfordert (Logik der Datenbank ändert sich, Auswertung von Logs etc.)

## Entscheidung über die praktische Umsetzung der Nutzerverwaltung im System

* genutzt wird das **Sicherheitskonzept bei Datenbankmodul-Instanzen vom Microsoft SQL Server** (Zugriff mit dem Microsoft SQL Server Management Studio)
* mit diesem kann man:
    * die Anmeldung am SQL Sever (login) bestimmen und eingrenzen
    * Zugriff auf die entsprechenden Datenbanken gewähren und verbieten
    * die Berichtigungen auf die Objekte einer Datenbank setzen
* somit können die oben genannten Rechte relativ einfach umgesetzt werden

## Definition der Schnittstelle zwischen eigenen Software-Anwendungen und der Nutzerverwaltung

* die Nutzerverwaltung wird vom Microsoft SQL Server durchgeführt, deswegen muss man sich an diesem nur mit den jeweiligen (vorher angelegten und Rechte zugeordneten) Nutzer anmelden
* genutzt wird als Schnittstelle die **Java Database Connectivity (JDBC)**, welche eine Datenbankschnittstelle der Java-Plattform ist, die eine einheitliche Schnittstelle zu Datenbanken verschiedener Hersteller bietet und speziell auf relationale Datenbanken ausgerichtet ist
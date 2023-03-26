# Phase 2: Einrichtung der gemeinsamen Dokumentenablage mit git

## Aufgabenstellung

**Sie haben festgestellt, dass es bis zur Angebotserstellung ein längerer Weg ist, und auf diesem sicherlich eine größere Anzahl elektronischer Dokumente zu erstellen ist. Sie haben auch erkannt, dass in der Gruppe gemeinsam auf die Dokumente zugegriffen werden sollte.**

* Informieren Sie sich im Internet über das Versionskontrollsystem git. Die git-Shell ist auf den Rechnern
installiert. → Link: [git-Tutorial](https://lerneprogrammieren.de/git/) sowie das Video [git-Einführung](https://www.youtube.com/watch?v=GOX1C1qdSys)
* folgende Begriffe sollten Sie dabei verstehen: Repository, Remote Repository, Commit, Push, Pull, Clone
* Erstellen Sie ein lokales Repository und fügen Sie diesem die bisher in Ihrer Gruppe erstellten Dateien hinzu.
* Erstellen Sie ein Remote Repository, z.B. mit GitHub und laden Sie die Dateien des lokalen Repositorys in das Remote Repository
* Geben Sie allen Gruppenmitglieder Lese- und Schreibzugriffe auf das Remote Repository.
* Alle Gruppenmitglieder führen einen Clone-Vorgang des Remote Repositorys auf ihren eigenen Rechnern aus und erhalten lokale Kopien vom Remote Repository.

## Klärung der grundlegenden Begrifflichkeiten

* Repository: In ein Repository bzw. einem Repo befinden sich alle Dateien inklusive derer vorangegangenen Versionen. Dadurch stehen stets alle Änderungen zur Verfügung, die von einer Datei ins Repo gespielt wurden und es kann nachvollzogen werden Wer, Wann, welche Änderungen durchgeführt hat. Es existieren somit mehrere Kopien der Repos, der, der einen Klon besitzt, kann daran arbeiten - inklusive kompletter History, auch offline und ohne Abhängigkeit von einem zentralen Server.
* Remote Repository: Remote Repositories sind Versionen des Projektes, welche nicht lokal, sondern im Internet oder im Netzwerk gehostet sind. Von diesen können Daten gepullt oder Daten auf diesen gepusht werden.  
* Commit: Die Aufnahme der Änderungen als Entwicklungsschritt in die Chronik werden mit „git commit“ bewirkt. Zusätzlich zum Commit gibt man eine kurze Nachricht an, die anderen Entwicklern in der Chronik angezeigt wird. Darin wird kurz beschrieben, welche neuen Änderungen der Commit mit sich bringt z.B. “Changes header color to blue”. Ein Commit entspricht einem “Entwicklungsstand” zu dem jederzeit zurückgesprungen werden kann.
* Push: Die Änderungen aus dem eigenen Repo/der Working Copy können in das Remote-Repo „gepusht“ werden („git push“).
* Pull: Die Änderungen aus dem Remote-Repo können in dem eigenen Repo/der Working Copy „gepullt“ werden („git pull“).
* Clone: Erstellung einer lokalen Working Copy eines Users (ein „Klon" - via „git clone“), welches wieder ein vollständiges, eigenes, lokales Repo darstellt.

## Git Cheat Sheet

![Git Cheat Sheet](legal/images/git-cheatsheet.png)

## Git-Repository

[Link zu unserem Repository](https://github.com/ShaSo31/Projekt-IT-Installation)

[Link zu unserer GitPage](https://shaso31.github.io/Projekt-IT-Installation) (funktioniert mit kostenloser Version wahrscheinlich nicht)
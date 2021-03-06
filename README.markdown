Cirsium
==================

Dies ist eine Auskopplung der Statik[^1] Funktion aus
[Rumex](http://www.it-bayer.de/rumex) [@rumex] und ermöglicht es eine
einfache HTML Seite[^2] zu erstellen.

Verweise auf externe Literatur *"Literaturverzeichnis"* werden
unterstützt.

Makefile
========

Die Seite wird mittels `make` erstellt

-   `make`

oder einzeln

-   `make html` bzw. `make index.html`
-   `make pdf` bzw. `make index.pdf`
-   `make README.markdown`

Dabei wird auch die github.com README Datei aus den Einzel Dateien
aktualisiert.

**Achtung:** Hier muss in der [Makefile](Makefile) Datei evtl. nach
editiert werden. Zur Zeit wird die README.markdown aus den Dateien

-   100-vorwort.md
-   200-makefile.md
-   300-datei\_aufbau.md

erstellt.

Einstellung der Verzeichnistiefe
--------------------------------

In der Datei `Makefile` kann über die Variabel `TD` die Verzeichnistiefe
eingestellt werden. Die angegebene Zahl bestimmt die Tiefe. Wird die
Variable kommentiert, wird kein Verzeichnis angezeigt.

Standard = 1.

Siehe dazu auch
[`Makefile`](https://raw.github.com/itbayer/cirsium/gh-pages/Makefile).

Installation
============

-   Download: <https://github.com/itbayer/cirsium/archive/gh-pages.zip>
-   Verzeichnis erstellen
-   Archiv im Verzeichnis entpacken
-   Dateien editieren
-   make
-   Dateien veröffentlichen

Datei Aufbau
============

Die Sortierung der Text Daten wird durch eine Vornummer bestimmt.

Beispiel:

-   000-start.md
-   100-vorwort.md
-   200-makefile.md
-   300-datei\_aufbau.md
-   999-ende.md

Bugs
====

-   ~~Sprach - Einstellung für PDF Ausgabe~~
-   ~~Überschrift Literaturverzeichnis wird in der PDF Ausgabe nicht
    angezeigt.~~

[^1]: Als Formatierung wird die Vorlage der `statik.css` aus Rumex
    verwendet.

[^2]: Funktioniert natürlich auch auf github.com.

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

Einstellung der Verzeichnistiefe
--------------------------------

In der Datei `Makefile` kann über die Variabel `TD` die Verzeichnistiefe
eingestellt werden. Die angegebene Zahl bestimmt die Tiefe. Wird die
Variable kommentiert, wird kein Verzeichnis angezeigt.

Standard = 1.

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
-   200-k1.md
-   300-k2.md
-   400-k3.md
-   999-ende.md

[^1]: Als Formatierung wird die Vorlage der `statik.css` aus Rumex
    verwendet.

[^2]: Funktioniert natürlich auch auf github.com.

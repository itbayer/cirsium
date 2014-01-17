# Makefile

Die Seite wird mittels `make` erstellt

- `make`

oder einzeln

- `make html` bzw. `make index.html`
- `make pdf` bzw. `make index.pdf`
- `make README.markdown`

Dabei wird auch die github.com README Datei aus den Einzel Dateien
aktualisiert. 

**Achtung:** Hier muss in der [Makefile](Makefile) Datei evtl. nach editiert werden.
Zur Zeit wird die README.markdown aus den Dateien 

- 100-vorwort.md 
- 200-makefile.md 
- 300-datei_aufbau.md

erstellt.



## Einstellung der Verzeichnistiefe

In der Datei `Makefile` kann über die Variabel
`TD` die Verzeichnistiefe eingestellt werden.
Die angegebene Zahl bestimmt die Tiefe.
Wird die Variable kommentiert, wird kein Verzeichnis angezeigt.

Standard = 1.

Siehe dazu auch [`Makefile`](https://raw.github.com/itbayer/cirsium/gh-pages/Makefile).


# Installation

- Download:
<https://github.com/itbayer/cirsium/archive/gh-pages.zip>
- Verzeichnis erstellen
- Archiv im Verzeichnis entpacken
- Dateien editieren
- make
- Dateien veröffentlichen





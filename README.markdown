Dies ist eine Auskopplung der Statik[^1] Funktion aus
[Rumex](http://www.it-bayer.de/rumex) [@rumex] und ermöglicht es eine
einfache HTML Seite zu erstellen.

Makefile
========

Erstellt wird die `index.html` Datei mittels `make`. Der Aufbau der
`Makefile` Datei:

~~~~ {.makefile}
# Makedatei für die Erstellung der
# html Datei
#


html: Makefile
    make -s index.html

index.html: *.md haupt.bib 
    pandoc -f markdown -t html5 \
        -s \
        --css statik.css \
        --toc \
        --bibliography=haupt.bib \
        --csl=din-1505-2.csl \
        --toc-depth=2 \
        -o index.html *.md
~~~~

Erklärung der pandoc Parameter
------------------------------

-   **`-f`** Eingabe Sprache
-   **`-t`** Ausgabe Sprache
-   **`-s`** HTML Grundgerüst
-   **`--bibliography`** Literatur Einträge
-   **`--csl`** Vorlage für das Literaturverzeichnis
-   **`--toc`** Inhaltsverzeichnis anzeigen
-   **`--toc-depth`** Anzahl der Überschriften die angezeigt werden
-   **`-o`** Ziel Datei

Datei Aufbau
============

Die Einzeldateien sind folgendermaßen aufgebaut. Können aber ohne
weiteres erweitert werden.

-   000-start.md
-   100-vorwort.md
-   200-kapitel1.md
-   300-kapitel2.md
-   400-kapitel3.md
-   999-ende.md

[^1]: Als Formatierung wird die Vorlage der `statik.css` aus Rumex
    verwendet.

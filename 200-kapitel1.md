# Makefile

Erstellt wird die `index.html` Datei mittels `make`.
Der Aufbau der `Makefile` Datei: 

~~~{.makefile}
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

~~~

## Erklärung der pandoc Parameter

- **`-f`** Eingabe Sprache
- **`-t`** Ausgabe Sprache
- **`-s`** HTML Grundgerüst
- **`--bibliography`** Literatur Einträge
- **`--csl`** Vorlage für das Literaturverzeichnis
- **`--toc`** Inhaltsverzeichnis anzeigen
- **`--toc-depth`** Anzahl der Überschriften die angezeigt werden
- **`-o`** Ziel Datei 



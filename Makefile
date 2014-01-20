# ---------------------------------------------
# Makedatei für die Erstellung der
# cirsum Daten html und pdf
# ---------------------------------------------




# ---------------------------------------------
# Einstellung

# Pandoc
PD = /usr/local/bin/pandoc

# Ausgabe Dateien
PDF = index.pdf
HTML = index.html

# Literatur
BIB = haupt.bib
CSL = din-1505-2.csl

# CSS Formatierung für HTML
CSS = statik.css 

# Verzeichnis Tiefe
# bzw. Verzeichnis anzeigen
TD = 1

ifdef TD 
	TOC = --toc --toc-depth=$(TD)
endif

# Sprache für die PDF Erstellung
LANG = ngermanb

ifdef LANG
	PDF_LANG_OPTION = -V lang=$(LANG)
endif





# ---------------------------------------------
#
all: Makefile
	make -s html
	make -s pdf
	make -s README.markdown




# ---------------------------------------------
#
html: 
	make -s index.html

$(HTML): *.md $(BIB)
	$(PD) -f markdown -t html5 \
		-s \
		--css $(CSS) \
		$(TOC) \
		--bibliography=$(BIB) \
		--csl=$(CSL) \
		-o $(HTML) *.md




# ---------------------------------------------
#
pdf:
	make -s index.pdf

$(PDF): *.md $(BIB)
	$(PD) -f markdown -t latex \
		-s \
		$(TOC) \
		$(PDF_LANG_OPTION) \
		--bibliography=$(BIB) \
		--csl=$(CSL) \
		-o $(PDF) *.md




# ---------------------------------------------
#
README.markdown: 100-vorwort.md 200-makefile.md 300-datei_aufbau.md
	pandoc -f markdown -t markdown \
		100-vorwort.md \
		200-makefile.md \
		300-datei_aufbau.md \
		> README.markdown


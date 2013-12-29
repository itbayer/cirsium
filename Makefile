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


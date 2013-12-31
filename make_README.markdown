#!/bin/sh

pandoc -f markdown -t markdown 100-vorwort.md 200-makefile.md 300-datei_aufbau.md > README.markdown



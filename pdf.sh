#!/bin/bash
rm -rf main.bbl main.fdb_latexmk main.out main.toc main.fls main.blg main.aux main.run.xml main.bcf main.log indent.log

# file=$(ls *.md)
# base_name=$(basename "$file" .md)
# pandoc $file -o "${base_name}".pdf --variable geometry:a4paper --variable geometry=margin=1in
# pandoc $file -o "${base_name}".pdf --template=template.tex
# pandoc $file -o "${base_name}".pdf --template=template.tex --pdf-engine=xelatex
# latexmk -pdf -silent "${base_name}".tex >/dev/null 2>&1
# latexmk -C >/dev/null 

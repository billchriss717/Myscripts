#!/bin/bash

latexmk -pdf -interaction=nonstopmode -synctex=1 main.tex

# rm -rf main.bbl main.fdb_latexmk main.out main.toc main.fls main.blg main.aux main.run.xml main.bcf main.log indent.log

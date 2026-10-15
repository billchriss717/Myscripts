#!/bin/bash
read -p "Include title page (y/n)? " title
dir=$1
mkdir -p "$dir/figures" "$dir/sections"
touch "$dir/references.bib" 

if [ "$title" == "y" ]; then
    touch "$dir/titlepage.tex"
    cp "$HOME/latex/template_preamble.tex" "$dir/preamble.tex"
    cp "$HOME/latex/template_main_titlepage.tex" "$dir/main.tex"
    echo "Directory Successfully Created With Titlepage!"
else 
    cp "$HOME/latex/template_preamble.tex" "$dir/preamble.tex"
    cp "$HOME/latex/template_main.tex" "$dir/main.tex"
    echo "Directory Successfully Created Without Titlepage"
fi

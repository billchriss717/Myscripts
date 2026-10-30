#!/bin/bash
#Colours
#!/bin/bash

# Formatting aesthetics
BLUE='\033[1;34m'
CYAN='\033[1;36m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RESET='\033[0m'

printf "\n${BLUE}╭──────────────────────────────────────╮${RESET}\n"
printf "${BLUE}│${RESET}       ${CYAN}DOCUMENT CONFIGURATION${RESET}         ${BLUE}│${RESET}\n"
printf "${BLUE}├──────────────────────────────────────┤${RESET}\n"
printf "${BLUE}│${RESET}  ${YELLOW}1.${RESET} Document with Titlepage          ${BLUE}│${RESET}\n"
printf "${BLUE}│${RESET}  ${YELLOW}2.${RESET} Document with Title              ${BLUE}│${RESET}\n"
printf "${BLUE}│${RESET}  ${YELLOW}3.${RESET} Document with Title (Academics)  ${BLUE}│${RESET}\n"
printf "${BLUE}│${RESET}  ${YELLOW}4.${RESET} Professional Letter (English)    ${BLUE}│${RESET}\n"
printf "${BLUE}│${RESET}  ${YELLOW}5.${RESET} Professional Letter (German)     ${BLUE}│${RESET}\n"
printf "${BLUE}│${RESET}  ${YELLOW}6.${RESET} Professional Presentation        ${BLUE}│${RESET}\n"
printf "${BLUE}╰──────────────────────────────────────╯${RESET}\n\n"

read -r -p "$(printf "${GREEN}Select an option [1-6]: ${RESET}")" title #  NOTE: "$()" is a command substitution and its output is substituted into the surrounding command

dir=$1
mkdir -p "$dir/figures" "$dir/sections"
touch "$dir/references.bib"

case "$title" in
1)
    read -r -p "$(printf "\n${GREEN}Enter the Title for your document: ${RESET}")" new_title
    read -r -p "$(printf "\n${GREEN}Enter the Scope of your document: ${RESET}")" new_scope

    cp "$HOME/latex_templates/titlepage.tex" "$dir"
    cd "$dir" || exit
    sed -i "s/mytitle/$new_title/" titlepage.tex
    sed -i "s/myscope/$new_scope/" titlepage.tex
    cd ../ || exit

    cp "$HOME/latex_templates/template_preamble.tex" "$dir/preamble.tex"
    cp "$HOME/latex_templates/template_main_titlepage.tex" "$dir/main.tex"
    printf "\n${CYAN}Document Successfully Generated With Title Page! ${RESET}\n"
    ;;
2)

    read -r -p "$(printf "\n${GREEN}Enter the Title for your document: ${RESET}")" new_title
    read -r -p "$(printf "\n${GREEN}Enter the Subtitle/Scope of your document: ${RESET}")" new_subtitle

    cp "$HOME/latex_templates/template_main_title.tex" "$dir/main.tex"
    cd "$dir" || exit
    sed -i "s/mytitle/$new_title/" main.tex
    sed -i "s/mysubtitle/$new_subtitle/" main.tex
    cd ../ || exit

    cp "$HOME/latex_templates/template_preamble.tex" "$dir/preamble.tex"
    printf "\n${CYAN}Document Successfully Generated With Title! ${RESET}\n"
    ;;

3)

    read -r -p "$(printf "\n${GREEN}Enter the Title for your document: ${RESET}")" new_title
    read -r -p "$(printf "\n${GREEN}Enter the Subtitle/Scope of your document: ${RESET}")" new_subtitle

    cp "$HOME/latex_templates/template_main_academics_title.tex" "$dir/main.tex"
    cd "$dir" || exit
    sed -i "s/mytitle/$new_title/" main.tex
    sed -i "s/mysubtitle/$new_subtitle/" main.tex
    cd ../ || exit

    cp "$HOME/latex_templates/template_preamble.tex" "$dir/preamble.tex"
    printf "\n${CYAN}Academical Document Successfully Generated With Title! ${RESET}\n"
    ;;

4)

    read -r -p "$(printf "\n${GREEN}Recipient's name ${RESET}")" reci_name
    read -r -p "$(printf "\n${GREEN}Recipient's Address ${RESET}")" reci_add
    read -r -p "$(printf "\n${GREEN}Post Code, City ${RESET}")" postcode

    cp "$HOME/latex_templates/template_letter.tex" "$dir/main.tex"
    cd "$dir" || exit
    sed -i "s/Recipient's Name/$reci_name/" main.tex
    sed -i "s/Recipient's Address/$reci_add/" main.tex
    sed -i "s/Postal Code, City/$postcode/" main.tex
    cd ../ || exit

    printf "\n${CYAN}Professional Letter In English Successfully Generated! ${RESET}\n"
    ;;

5)

    read -r -p "$(printf "\n${GREEN}Recipient's name ${RESET}")" reci_name
    read -r -p "$(printf "\n${GREEN}Recipient's Address ${RESET}")" reci_add
    read -r -p "$(printf "\n${GREEN}Post Code, City ${RESET}")" postcode

    cp "$HOME/latex_templates/template_letter_de.tex" "$dir/main.tex"
    cd "$dir" || exit
    sed -i "s/Recipient's Name/$reci_name/" main.tex
    sed -i "s/Recipient's Address/$reci_add/" main.tex
    sed -i "s/Postal Code, City/$postcode/" main.tex
    cd ../ || exit

    printf "\n${CYAN}Professional Letter In German Successfully Generated! ${RESET}\n"
    ;;

6)

    read -r -p "$(printf "\n${GREEN}Enter the Title for your document: ${RESET}")" new_title
    read -r -p "$(printf "\n${GREEN}Enter the Subtitle/Scope of your document: ${RESET}")" new_subtitle

    cp "$HOME/latex_templates/presentation_template_main.tex" "$dir/main.tex"
    cp "$HOME/latex_templates/presentation_template_preamble.tex" "$dir/preamble.tex"

    cd "$dir" || exit
    sed -i "s/Engineering Design/$new_title/" main.tex
    sed -i "s/Principles, Methods and Application/$new_subtitle/" main.tex
    cd ../ || exit

    printf "\n${CYAN}Academical Presentation Document Successfully Generated! ${RESET}\n"
    ;;

7)

    read -r -p "$(printf "\n${GREEN}Enter the Title for your document: ${RESET}")" new_title
    read -r -p "$(printf "\n${GREEN}Enter the Subtitle/Scope of your document: ${RESET}")" new_subtitle

    cp "$HOME/latex_templates/presentation_template_main_pro.tex" "$dir/main.tex"
    cp "$HOME/latex_templates/presentation_template_preamble_pro.tex" "$dir/preamble.tex"

    cd "$dir" || exit
    sed -i "s/Engineering Design/$new_title/" main.tex
    sed -i "s/Principles, Methods and Application/$new_subtitle/" main.tex
    cd ../ || exit

    printf "\n${CYAN}Professional Presentation Document Successfully Generated! ${RESET}\n"
    ;;

8)

    read -r -p "$(printf "\n${GREEN}Enter the Title for your document: ${RESET}")" new_title
    read -r -p "$(printf "\n${GREEN}Enter Image name 01: ${RESET}")" file_name_01
    read -r -p "$(printf "\n${GREEN}Enter Image name 02:  ${RESET}")" file_name_02

    cp "$HOME/latex_templates/template_image_to_pdf.tex" "$dir/main.tex"

    cd "$dir" || exit
    sed -i "s/Center/$new_title/" main.tex
    sed -i "s/image_name_01/$file_name_01/" main.tex
    sed -i "s/image_name_02/$file_name_02/" main.tex
    rm "references.bib"
    rm -r "sections"
    cd ../ || exit

    printf "\n${CYAN}Conversion Document Successfully Created${RESET}\n"
    ;;

esac

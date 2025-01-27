#!/bin/bash

nano_notes() {
    #  local default_file="~/txt_files/notes.txt"
    local default_file="$HOME/txt_files/notes.txt"
    local file
    file="${1:-default_file}"
    nano "$default_file"
#  nano "$file"
}

#opens personalnotes
launshell_nano_open_p_notes() {
    notes="~/txt_files/notes.txt"
    nano "$notes"
}

#opens personalnotes
launshell_nano_open_s_notes() {
    notes="~/txt_files/notes.txt"
    nano "$notes"
}

#Prints personal notes
launshell_nano_print_notes() {
    while read -p 'Printing Personal Notes! Is the printer turned on? Press "p" to print: ' PPOWER; do
    if [[ $PPOWER == p ]]; then
        echo "print ..buzz ..buzz ..whir"
        lpr -o sides=two-sided-ln_noteong-edge -o orientation-requested=3 ~/txt_files/notes.txt
        break
    fi
    done
}

#Prints system notes
launshell_nano_print_sys() {
    while read -p 'Printing System Notes! Is the printer turned on? Press "p" to print: ' PPOWER; do
    if [[ $PPOWER == p ]]; then
        echo "print ..buzz ..buzz ..whir"
        lpr -o sides=two-sided-ln_noteong-edge -o orientation-requested=3 ~/txt_files/sys.txt
        break
    fi
    done
}

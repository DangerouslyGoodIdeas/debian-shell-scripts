#!/bin/bash
launshell_enterthematrix() {
    if ! command -v cmatrix 2>&1 >/dev/null; then
        read -p 'Program "cmatrix" could not be found. Would you like to install it? y/n: ' INST
        case $INST in
            [Yy]* )
                sudo apt-get install cmatrix -y
                pause 'Installed! Press the "Enter" key to continue...'
                clear
                launshell
                ;;
            [Nn]* )
                echo 'Not installing.'
                clear
                launshell
                ;;
            * )
                echo "Please answer yes or no."
                ;;
        esac
    else
        clear
#        printf "Type a color, your options are: green, red, blue, white, yellow, cyan, magenta, and black.\n" | lolcat
        printf "Type a color, your options are: \e[4mg\e[0mreen, \e[4mr\e[0med, \e[4mb\e[0mlue, \e[4mw\e[0mhite, \e[4my\e[0mellow, \e[4mc\e[0myan, \e[4mm\e[0magenta, and \e[4mb\e[0mlack.\n" | lolcat
        read -p '"Q|q" goes back to launshell, Pressing any button will quit cmatrix once launched: ' THEMATRIX

        # Normalize the input (first letter or full name, case insensitive)
        THEMATRIX=$(echo "$THEMATRIX" | tr '[:upper:]' '[:lower:]')

        # Set default color if input is empty or invalid
        case "$THEMATRIX" in
            g|green)
                color="green"
                ;;
            r|red)
                color="red"
                ;;
            b|blue)
                color="blue"
                ;;
            w|white)
                color="white"
                ;;
            y|yellow)
                color="yellow"
                ;;
            c|cyan)
                color="cyan"
                ;;
            m|magenta)
                color="magenta"
                ;;
            k|black)
                color="black"
                ;;
            q|Q)
                clear
                launshell
                ;;
            *)
                color="magenta"  # Default to magenta if input is invalid
                ;;
        esac

        # Run cmatrix with the selected color
        cmatrix -s -C "$color"
    fi
}

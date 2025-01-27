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
        printf "Type a color, your options are: green, red, blue, white, yellow, cyan, magenta, and black.\n" | lolcat
        read -p '"Q|q" goes nack to launshell, Pressing any button will quit cmatrix once launched: ' THEMATRIX

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

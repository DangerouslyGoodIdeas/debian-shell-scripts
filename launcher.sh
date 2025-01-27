#!/bin/bash
# madde by By RobinX
# Intalation Guide
# Add "source ~/txt_files/launcher.sh" to "~/.bashrc" at the bottom not in quotes.
# Once .bashrc is edited restart it using ". ~/.bashrc" othewise this script wont work in exiisting shells
# sudo apt install lolcat

#--------------------
# files & paths
#--------------------
#create notes file in [HOME]/txt_files/notes.txt
# alias notes="nano ~/txt_files/notes.txt"
# alias print-notes="lpr -o sides=two-sided-long-edge -o orientation-requested=3 notes.txt"

#------------------------------------------
#------------------------------------------




nano_notes() {
#  local default_file="~/txt_files/notes.txt"
 local default_file="~/txt_files/notes.txt"
 local file
 file="${1:-default_file}"
 nano "$default_file"
#  nano "$file"
}


launshell(){
   local OPTS PPOWER notes INST


#   Installs LolCat
if ! which lolcat > /dev/null; then
        echo "lolcat is a prerequsite and needs to be installed"
        sudo apt update
        sudo apt install lolcat
        clear
fi
#============ASCI=HEADER==============

# printF Colours
#Fore  Back Colour
#-----------------
# 30	40	Black
# 31	41	Red
# 32	42	Green
# 33	43	Yellow
# 34	44	Blue
# 35	45	Magenta
# 36	46	Cyan
# 37	47	White
# 90	100	Bright Black (Gray)
# 91	101	Bright Red
# 92	102	Bright Green
# 93	103	Bright Yellow
# 94	104	Bright Blue
# 95	105	Bright Magenta
# 96	106	Bright Cyan
# 97	107	Bright White

# \n = new line
# \e[0m = end colour

clear
printf "\e[1;94m  +======================================================================+\n \e[0m" | lolcat -a -d 6;
printf "\e[1;95m +======================= Welcome To Launshell =========================+\n \e[0m" | lolcat -a -d 6;
printf "\e[1;96m +======================================================================+\n \e[0m" | lolcat -a -d 6;
printf "\e[1;35m +===========================Made by RobinX=============================+\n\e[0m" | lolcat -a -d 12;
echo " "
printf "\e[1;96m ____________________________________________________\n \e[0m";
printf "\e[1;96m Edit Notes\n\e[0m";
printf "\e[1;96m  '---------------------------------------------------+\n\e[0m";
printf "\e[1;96m     \"nano_notes\" is the terminal shortcut to personal notes \n\e[0m"| lolcat;
printf "\e[1;96m  '‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾+\n\e[0m";
printf "        Would you like to \e[1;32m\"print\"\e[0m your notes or \e[1;96m\"open\"\e[0m them?\n";
printf "        Type \e[1;32m\"p\"\e[0m to print personal notes,\e[1;96m\"o\"\e[0m to open notes or,\n";
printf "        Type \e[1;32m\"ps\"\e[0m to print system notes or,\e[1;96m\"os\"\e[0m to open them\n";
echo " "
printf "\e[1;96m ____________________________________________________\n \e[0m";
printf "\e[1;33m Fun Programs\n\e[0m";
printf "\e[1;96m  '---------------------------------------------------+\n\e[0m";
printf "\e[1;96m     Fun programs for daily use \n\e[0m"| lolcat;
printf "\e[1;96m  '‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾+\n\e[0m";
printf "        Enter \e[1;33m\"aq\"\e[0m to launch asciiquarium.\n";
printf "        Enter \e[1;33m\"cm\"\e[0m to launch cmatrix.\n";
printf "        Enter \e[1;33m\"bp\"\e[0m to Launch bpytop.\n";
echo " "
printf "\e[1;96m ____________________________________________________\n \e[0m";
#Command Section
printf "\e[1;35m Enter A Predefined Command\n\e[0m";
printf "\e[1;96m  '---------------------------------------------------+\n\e[0m";
printf "\e[1;96m     Predefined commands with that are useful every day \n\e[0m"| lolcat;
printf "\e[1;96m  '‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾+\n\e[0m";
printf "        Enter \e[1;33m\"bp\"\e[0m to bpytop.\n";
#Input section
printf "\e[1;96m ____________________________________________________\n \e[0m";
read -p 'Pressing "q" will quit: ' OPTS

   case "$OPTS" in
	p)
	#Prints personal notes
	    while read -p 'Printing Personal Notes! Is the printer turned on? Press "p" to print: ' PPOWER; do
		if [[ $PPOWER == p ]]; then
           echo "print ..buzz ..buzz ..whir"
           lpr -o sides=two-sided-ln_noteong-edge -o orientation-requested=3 ~/txt_files/notes.txt
		    break
		fi
	    done
	    ;;
	ps)
	#Prints system notes
	    while read -p 'Printing System Notes! Is the printer turned on? Press "p" to print: ' PPOWER; do
		if [[ $PPOWER == p ]]; then
           echo "print ..buzz ..buzz ..whir"
           lpr -o sides=two-sided-ln_noteong-edge -o orientation-requested=3 ~/txt_files/sys.txt
		    break
		fi
	    done
	    ;;
	o)
	    notes="~/txt_files/notes.txt"
	    nano "$notes"
	    ;;
	os)
	    notes="~/txt_files/sys.txt"
	    nano "$notes"
	    ;;
	aq)
        # This if statment looks for the command before executing it
        if ! command -v asciiquarium 2>&1 >/dev/null; then
            echo "program \"asciiquarium\" could not be found"
            launshell
        else
        asciiquarium
        fi

        ;;

#Checks for cmatrix, installs or launches it
	cm)
        if ! command -v cmatrix 2>&1 >/dev/null; then
            read -p 'program "cmatrix" could not be found. Would you like to install it? y/n;' INST
            case $INST in
                [Yy]* ) sudo apt-get install cmatrix -y
                pause 'Installed Press the "Enter" key to continue...'
                clear
                launshell
                ;;
                [Nn]* ) echo 'Not installing'
                clear
                launshell
                ;;
                * ) echo "Please answer yes or no"
                ;;
            esac
        else
        clear
        cmatrix
        fi
        ;;

	bp)
        # This if statment looks for the command before executing it
        if ! command -v bpytop 2>&1 >/dev/null; then
            echo "program \"bpytop\" could not be found"
            launshell
        else
        bpytop
        fi

	    ;;

#Checks for bpytop, installs or launches it
	cm)
        if ! command -v bpytop 2>&1 >/dev/null; then
            read -p 'program "bpytop" could not be found. Would you like to install it? y/n;' INST
            case $INST in
                [Yy]* ) sudo apt-get install foo -y
                pause 'Installed Press the "Enter" key to continue...'
                clear
                launshell
                ;;
                [Nn]* ) echo 'Not installing'
                clear
                launshell
                ;;
                * ) echo "Please answer yes or no"
                ;;
            esac
        else
        clear
        bpytop
        fi
        ;;

#-------------------Start Of Case Entry---------------------
	foo)
# This if statment looks for the command before executing it, this one WILL fail and is for testing
        if ! command -v foo 2>&1 >/dev/null; then
            read -p 'program "foo" could not be found. Would you like to install it? y/n;' INST
            case $INST in
                [Yy]* ) sudo apt-get install foo -y
                pause 'Installed Press the "Enter" key to continue...'
                clear
                launshell
                ;;
                [Nn]* ) echo 'Not installing'
                clear
                launshell
                ;;
                * ) echo "Please answer yes or no"
                ;;
            esac
        else
# relaunches launshell
        launshell
        fi
        ;;
#-------------------End Of Case Entry---------------------

	q)
        # Quits without error message
        clear
        return
	    ;;
	*)
	    pause "Not a valid entry"
	    clear
	    launshell
   esac
}

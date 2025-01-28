#!/bin/bash
# made by By RobinX
# Intalation Guide
# Add the storage directory of this file to ~/.bashrc . somthing like;   source ~/git/DangerouslyGoodIdeas/debian-shell-scripts/launshell.sh
# Once .bashrc is edited restart it using ". ~/.bashrc" othewise this script wont work in exiisting shells


#--------------------
# files & paths
#--------------------
#create notes file in [HOME]/txt_files/notes.txt
# alias notes="nano ~/txt_files/notes.txt"
# alias print-notes="lpr -o sides=two-sided-long-edge -o orientation-requested=3 notes.txt"
#sources
source "$(dirname "$(realpath "$BASH_SOURCE")")/components/nanoprinting.sh"
source "$(dirname "$(realpath "$BASH_SOURCE")")/components/thematrix.sh"
source "$(dirname "$(realpath "$BASH_SOURCE")")/components/weather.sh"
#------------------------------------------
#------------------------------------------







launshell(){
   local OPTS PPOWER notes INST


#   Installs LolCat using, sudo apt install lolcat
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
printf "        Type \e[1;32m\"ps\"\e[0m to print system notes or,\e[1;96m\"os\"\e[0m to open them.\n";
echo " "
printf "\e[1;96m ____________________________________________________\n \e[0m";
printf "\e[1;33m Fun Programs\n\e[0m";
printf "\e[1;96m  '---------------------------------------------------+\n\e[0m";
printf "\e[1;96m     Fun programs for daily use (these close launshell) \n\e[0m"| lolcat;
printf "\e[1;96m  '‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾+\n\e[0m";
printf "        Enter \e[1;33m\"aq\"\e[0m to launch \U1F420 asciiquarium.\n";
printf "        Enter \e[1;33m\"cm\"\e[0m to launch \U1F48A cmatrix.\n";
printf "        Enter \e[1;33m\"bp\"\e[0m to Launch \U1F4BB \"bpytop\".\n";
echo " "
printf "\e[1;96m ____________________________________________________\n \e[0m";
#Command Section
printf "\e[1;35m Enter A Predefined Command\n\e[0m";
printf "\e[1;96m  '---------------------------------------------------+\n\e[0m";
printf "\e[1;96m     Predefined commands with that are useful every day \n\e[0m"| lolcat;
printf "\e[1;96m  '‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾+\n\e[0m";
#Command list here
printf "        Enter \e[1;33m\"speed\"\e[0m to run speedtest-cli | lolcat.\n";
printf "        Enter \e[1;33m\"weather-e\"\e[0m \U1F325 to run \"curl wttr.in/Exeter\" bpytop.\n";
printf "        Enter \e[1;33m\"weather-p\"\e[0m \U1F325 to run \"curl wttr.in/Paignton\" \n";
printf "        Enter \e[1;33m\"weather\"\e[0m or \e[1;33m\"w\"\e[0m \U1F325 to run a custom location \n";
#Input section
printf "\e[1;96m ____________________________________________________\n \e[0m";
read -p 'Pressing "q" will quit: ' OPTS

   case "$OPTS" in
	p)
	#Prints personal notes
    launshell_nano_print_notes "$1"
	    ;;
	ps)
	#Prints system notes
    launshell_nano_print_sys "$1"
	    ;;
	o)
    launshell_nano_open_p_notes
	    ;;
	os)
	launshell_nano_open_s_notes
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
        launshell_enterthematrix "$1"
        ;;

#Checks for bpytop, installs or launches it
	bp)
        if ! command -v bpytop 2>&1 >/dev/null; then
            read -p 'program "bpytop" could not be found. Would you like to install it? y/n;' INST
            case $INST in
                [Yy]* ) sudo apt-get install bpytop -y
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
# Weather in Paignton
	speed)
        speedtest-cli | lolcat
        read -p "Press ⏎ to continue..."
        launshell
	    ;;
# Weather in Paignton
	weather-p)
        launshell_weather_1
	    ;;
# Weather in Exeter
	weather-e)
        launshell_weather_2
	    ;;
	weather|w)
        launshell_weather_custom
	    ;;

	*)
	    pause "Not a valid entry"
	    clear
	    launshell
   esac
}

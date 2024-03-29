#!/bin/bash
clear
source fonctions/ChoicePlayer.sh
source fonctions/affScoreRes.sh
source fonctions/affichage.sh
source fonctions/result.sh
source fonctions/help.sh
# Call functions
affichage

if [[ $1 > "1" ]] && [[ $1 -le "10" ]]
then
	case $Choice in
		1 ) $Choice = "Rock" ;;
		2 ) $Choice = "Paper" ;;
		3 ) $Choice = "Scissors" ;;
	esac
echo -e "Ready to play Shifumi? Here we go! \n"
        Score="0"
		while [[ $Score != $1 ]]
		do
			Achoice=$[($RANDOM % ($[3 - 1] + 1)) + 1]
			echo -e "      1- rock"
			echo -e "      2- paper"
			echo -e "      3- scissors"
			echo -e "      X- Quit game \n"
			read -p "Make choice: " Choice
			if [[ $Choice == "X" ]]; then
				Score=$1 
			fi
			affShifumi
		done
		if [[ $Choice == "X" ]]; then
			Score=$1 
			echo -e "\n------------------------ You Loose ------------------------\n"
		    echo -e "	      You Loose but you can try again"
			echo -e "	      See you on rock-paper-scissors.\n"
			echo -e "\n---------------------------------------------------------\n"
		fi

elif [[ -z $i ]]; then
 	echo -e \\033[31\;7m"\n Error:"\\033[0m" Vous n'avez pas entrer les bonnes informations \n" #help option if $1 empty
fi
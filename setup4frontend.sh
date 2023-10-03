#!/bin/bash

## Arg 1 is the question
## Arg 2 is the function to execute
function question() {
    RESET="\033[0m"
    BOLD="\033[1m"
    YELLOW="\033[38;5;11m"
    REVERSE="\033[7m"

    done="false"
    while [ "$done" != "true" ]
    do
        read -p "$(echo -e $REVERSE $1  [y/n]? $RESET)" userInput
        #read -p $"\e[7m$1 [y/n]?\e[0m" userInput

        if [[ -z "$userInput" ]]; then
            printf '%s\n' "No input entered"
            exit 1
        fi

        case $userInput in
            [Yy]* ) $2; break;;
            [Nn]* ) done="true";;
            * ) echo "Please answer y or n";;
        esac
    done
    done="false"
}


#################################################################################
echo "TODO: add frontend apps here!!"
#################################################################################

#! /usr/bin/env bash

files=($(ls))
count=${#files[*]}

function guessing_game {
    while [[ guess -ne count ]] 
    do
        echo "Guess: "
        read guess
    
        if [[ guess -gt count ]]
        then
            echo "Too High"
        elif [[ guess -lt count ]]
        then
            echo "Too Low"
        else
            echo "Congratulations. You Win!"
        fi
    done
}

guessing_game
    

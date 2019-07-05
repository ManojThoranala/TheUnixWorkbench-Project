# !/bin/bash

clear 

function get_game_play {
	local file_count=$(ls -l | wc -l)
    let file_count=file_count-1
    echo $file_count
	while [[ $file_count -ne $user_guess ]]
    do
        if [[ $user_guess -eq $(($file_count-1)) ]]; then
            echo "Your Guess is high! but very close. Try Again."
        elif [[ $user_guess -gt $file_count ]]; then
            echo "Your Guess is too high!. Better luck next time!"
        elif [[ $user_guess -eq $(($file_count+1)) ]]; then
            echo "Your Guess is low! but very close. Try Again."
        elif [[ $user_guess -lt $file_count ]]; then
            echo "Your Guess is too low!. Better luck next time!"
        fi
        echo
        echo "Try again. Go Ahead and Guess: "
        read user_guess
    done
    echo
    echo "Bravo, Bravo..! You did it. Your Guess is right." 
}

echo -e "\t\t\t\t\tHi, Mates. It's game time.\n\n\r\t\t\t\t*************Try your luck**************.\n\n\r\t\t\tGuess the number of files in the Current Working Directory."
echo "Why wait...! Go Ahead and try:"
read user_guess
get_game_play
echo
echo "The current working directory contains $file_count files."
echo
echo -e "\t\t\t\t\tCongratualations!"
echo
echo -e "\t\t\t\tThank you for your participation!"
echo




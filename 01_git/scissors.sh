#!/bin/bash

# Predefinitions
option[0]="rock"
option[1]="paper"
option[2]="scissors"

size=${#option[@]}
index=$(($RANDOM % $size))

# Ask for an option and read one
echo "Please choose: rock (r) - paper (p) - scissors (s)"
read user_reply

# parse input to a chosen option name
if [[ $user_reply == 'r' ]]; then
user_reply="rock"
elif [[ $user_reply == 'p' ]]; then
user_reply="paper"
elif [[ $user_reply == 's' ]]; then
user_reply="scissors"
fi

# Show options to deside of
echo "You choose $user_reply, I choose ${option[$index]}"

# Make a decision
if [[ $user_reply == ${option[$index]} ]]; then
echo "Its a Tie"
elif [[ $user_reply ==  "rock" && ${option[$index]} == "scissors" ]]; then
echo "You win! rock beats scissors"
elif [[ $user_reply == "sissors" && ${option[$index]} == "rock" ]]; then
echo "I win! rock beats scissors"
elif [[ $user_reply == "scissors" && ${option[$index]} == "paper" ]]; then
echo "You win! scissors beats paper"
elif [[ $user_reply == "paper" && ${option[$index]} == "scissors" ]]; then
echo "I win! scissors beats paper"
elif [[ $user_reply == "paper" && ${option[$index]} == "rock" ]]; then
echo "You win! paper beats rock"
elif [[ $user_reply = "rock" && ${option[$index]} == "paper" ]]; then
echo "I win! paper beats rock"
else
echo "There was an error please try again"
main
fi

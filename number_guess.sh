#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess -t --no-align --tuples-only -c"

echo "Enter your username:"
read USERNAME

#echo "$($PSQL "TRUNCATE game_users, games")"
#Check whether USERNAME is in database
USERNAME_DB=$($PSQL "SELECT username FROM game_users WHERE username='$USERNAME'")


#if username in database
if [[ ! -z $USERNAME_DB ]]
then
	#get user_id frome game_user using username
	USER_ID=$($PSQL "SELECT user_id FROM game_users WHERE username='$USERNAME'")
	#get number of games played
	GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE user_id=$USER_ID")
	#get best_game=minimum_amount_of_guesses
	BEST_GAME=$($PSQL "SELECT MIN(number_of_guesses_before_win) FROM games WHERE user_id=$USER_ID")

	echo "Welcome back, $USERNAME_DB! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."

#else if username not in database
else
	#Store username in database
	INSERT_USER=$($PSQL "INSERT INTO game_users(username) VALUES('$USERNAME')")
	
	echo "Welcome, $USERNAME! It looks like this is your first time here."
fi

#generate random number
N=$(( RANDOM%1000 + 1 ))

VAR=0
GUESSING_FUNC(){
	read INPUT
	if [[ ! $INPUT =~ [0-9]+ ]]
	then
		echo "That is not an integer, guess again:"
		(( VAR++ ))
		GUESSING_FUNC
	elif (( $INPUT > $N ))
	then
		(( VAR++ ))
		echo "It's lower than that, guess again:"
		GUESSING_FUNC

	elif (( $INPUT < $N ))
	then
		(( VAR++ ))
		echo "It's higher than that, guess again:"
		GUESSING_FUNC
	else
		(( VAR++ ))
		
		# GET USER_ID
		USER_ID=$($PSQL "SELECT user_id FROM game_users WHERE username='$USERNAME'")

		INSERT_INTO_GAMES=$($PSQL "INSERT INTO games(number_of_guesses_before_win, user_id) VALUES($VAR, $USER_ID)")
		echo "You guessed it in $VAR tries. The secret number was $N. Nice job!"
	fi
}
echo "Guess the secret number between 1 and 1000:"
GUESSING_FUNC

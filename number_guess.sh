#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

get_username(){
# generate random number
RANDOM_NUMBER=$(( 1 + RANDOM % 1000 ))
# get username from user
echo "Enter your username:"
read USERNAME_INPUT
# check if username has been used before
USERNAME=$($PSQL "SELECT username FROM users WHERE username='$USERNAME_INPUT'")
if [[ $USERNAME ]]
then
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME_INPUT'")
  BEST_GAME=$($PSQL "SELECT MIN(attempts) FROM games WHERE user_id='$USER_ID'")
  GAMES_PLAYED=$($PSQL "SELECT COUNT(user_id) FROM games WHERE user_id='$USER_ID'")
  echo -e "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
else
  echo "Welcome, $USERNAME_INPUT! It looks like this is your first time here."
  INSERT_NEW_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME_INPUT')")
  USER_ID=$($PSQL "SELECT user_id from users WHERE username='$USERNAME_INPUT'")
fi
echo "Guess the secret number between 1 and 1000:"
GUESSED=0
ATTEMPTS=0
while [[ $GUESSED = 0 ]]
do
  read GUESS
  # check if input is number
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then   
    echo "That is not an integer, guess again:"
    # if they guess the right number
  elif [[ $RANDOM_NUMBER = $GUESS ]] 
  then
    ATTEMPTS=$(( $ATTEMPTS +1 ))
    echo "You guessed it in $ATTEMPTS tries. The secret number was $RANDOM_NUMBER. Nice job!"
    # insert game result into database
    GAME_RESULT=$($PSQL "INSERT INTO games(user_id,attempts) VALUES($USER_ID, $ATTEMPTS)")
    GUESSED=1
    # if they guess a number too small
  elif [[ $GUESS -lt $RANDOM_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
    ATTEMPTS=$(( $ATTEMPTS +1 ))
  # if they guess a number too small
  else
    echo "It's lower than that, guess again:"
    ATTEMPTS=$(( $ATTEMPTS +1 ))
  fi
done
}

get_username
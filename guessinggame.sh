echo "Welcome!"
NUMBEROFFILES=$(ls -A | wc -l)
function GuessNumber
{
GUESS=-1
while [[ $GUESS -ne $NUMBEROFFILES ]]
do
	echo "Guess the number of files in the current directory and press Enter: "
	read response
	GUESS=$response
	if [[ $GUESS =~ ^[0-9]+$ ]]
	then
		if [[ $GUESS -lt $NUMBEROFFILES ]]
		then
		echo "Your guess is too low"
		elif [[ $GUESS -gt $NUMBEROFFILES ]]
		then
		echo "Your guess is too high"
		else
		echo "Congrats, your guess is correct"
		fi
	else
	echo "Invalid input"
	break	
	fi
done
}

GuessNumber

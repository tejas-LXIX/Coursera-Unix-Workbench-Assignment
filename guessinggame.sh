echo "Welcome!"
NUMBEROFFILES=$(ls | wc -l)
function GuessNumber
{
GUESS=0
while [[ $GUESS -ne $NUMBEROFFILES ]]
do
	echo "Guess the number of files in the current directory and press Enter: "
	read response
	GUESS=$response
	if [[ $GUESS -lt $NUMBEROFFILES ]]
	then
	echo "Your guess is too low"
	elif [[ $GUESS -gt $NUMBEROFFILES ]]
	then
	echo "Your guess is too high"
	fi	
done
echo "Congrats, your guess is correct"
}

GuessNumber

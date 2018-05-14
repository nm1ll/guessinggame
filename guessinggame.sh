function guessinggame {
	echo "Type in the number of files in the current directory and press Enter:"
	read response
	number_of_files=$(ls -1q * | wc -l)
	while [[ $number_of_files -ne $response ]]
	do
		if [[ $number_of_files -gt $response ]]
		then
			echo "Your guess is too low. Please try again:"
			read response
		elif [[ $number_of_files -lt $response ]]
		then
			echo "Your guess is too high. Please try again:"
			read response
		fi
	done
	if [[ $number_of_files -eq $response ]]
	then
		echo "Congratulations! Your guess is correct!"
	fi
}

guessinggame

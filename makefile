README.md:
	echo "# Guessing game: Final assignment for course The Unix Workbench" > README.md
	echo "This makefile was executed on:" >> README.md
	date >> README.md
	echo "<br />" >> README.md
	echo "The number of lines in the file guessinggame.sh is:" >> README.md 
	cat guessinggame.sh | wc -l >> README.md

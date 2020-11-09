all: README.md
README.md:
	touch README.md
	echo "#Tejas's Unix Workbench Peer Graded Assignment\n" >> README.md
	echo "Date and time at which make was run: " >> README.md
	date >> README.md
	echo "\nNumber of lines of code in guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l >> README.md


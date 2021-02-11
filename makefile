README.md: guessinggame.sh
	echo "## Guessing Game Project" >> README.md
	echo >> README.md
	echo "Make was run to create this at"  >> README.md
	date >> README.md
	echo >> README.md
	echo "There are " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo " lines in the *guessinggames.sh* script" >> README.md

clean:
	rm README.md
	

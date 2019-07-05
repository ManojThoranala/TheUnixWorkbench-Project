all: README.md

README.md:
	echo "# The Unix Workbench | Peer-graded Assignment: Bash, Make, Git, and GitHub." > README.md
	echo -n "\n\r" >> README.md
	echo "***************guessinggame.sh**************" >> README.md
	echo -n "\n\r" >> README.md
	echo -n "* Makefile ran at: " >> README.md
	date >> README.md
	echo -n "\n\r" >> README.md
	echo -n "* Script \"guessinggame.sh\" has $$(cat guessinggame.sh | wc -l) lines." >> README.md

clean:
	rm README.md
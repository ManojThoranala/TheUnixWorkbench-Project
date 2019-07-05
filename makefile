all: README.md

README.md:
	echo "# The Unix Workbench | Peer-graded Assignment: Bash, Make, Git, and GitHub." > README.md
	echo -e "\n\r" >> README.md
	echo "***************guessinggame.sh**************" >> README.md
	echo -e "\n\r" >> README.md
	echo "* Makefile ran at:" >> README.md
	date >> README.md
	echo -e "\n\r" >> README.md
	echo "* Script \"guessinggame.sh\" has $(wc -l < ./guessinggame.sh >> README.md) lines." >> README.md

clean:
	rm README.md
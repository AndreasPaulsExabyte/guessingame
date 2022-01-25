init:

touch README.md
echo -e "# guessinggame" > README.md
echo -e " \n \nDate make was run" >> README.md
date | echo >> README.md
echo -e " \nLines of Code:" $(guessinggame.md wc -l) >> README.md

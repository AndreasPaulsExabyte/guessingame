
function Guess {

echo "plese enter your gues as to which number of files are in this directory:"
read number

local re='^[0-9]+$'
local listfiles=$(ls -a)
local numberfiles=$(ls -a | wc -l)
local dis=1
while [[  $dis == 1  ]]
do
	if ! [[ $number =~ $re ]] 
	then
   		echo "error: Not a number" >&2;
   		read number; exit
	fi
	
	if [[ $number == $numberfiles ]]
	then
		echo "weee your guess is right"
		let dis=0
		exit
	elif [[ $number -gt $numberfiles ]]
	then
		echo "$number is to high"
		read number
	elif [[ $guess -lt $numberfiles ]]
	then
		echo "$number is to low"
		read number
	else
		echo "it is $numberfile"
		read number
	fi
done
}

Guess

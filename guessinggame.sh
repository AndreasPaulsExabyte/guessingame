
function Guess {

echo "plese enter your gues as to which number of files are in thies directory:"
read number

local listfiles=$(ls)
local numberfiles=$(ls | wc -l)
local dis=1
echo "where is while?"
while [[  $dis == 1  ]] || [[ $dis == 69 ]]
do
	if [[ $number == $numberfiles ]] && [[ $dis = 69 ]]
	then
		echo "ok now you win and can explayn to me wtf yoou did."
		let dis=0
		read explanation
		echo "so what you say is $explanation i´ll pretend that i´ll do somthing to solve that"
		exit
	elif [[ $number == $numberfiles ]]
	then
		echo "weee your guess is right"
		let dis=0
		exit
	elif [[ $number > $numberfiles ]]
	then
		echo "$number is to high."
		echo "$numberfiles"
		read number
	elif [[ $guess < $numberfiles ]]
	then
		echo "$number is to low."
		echo "$numberfiles"
		read number
	else
		echo "i dont know what you did to get here but ok."
		echo "there are: "
		echo "$listfiles"
		echo "number is: $numberfiles"
		echo "now you can type in $numberfile to win"
		let dis=69
		read number
	fi
done

}


Guess

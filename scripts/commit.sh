echo -e "\nwhat type of commit is this?"
echo -e "\t 1: docs"
echo -e "\t 2: feature/addition"
echo -e "\t 3: fix"
echo -e "\t 4: refactor"
echo -e "\t 5: format"
echo -e "\t 6: override"

read option

create_message() {
	echo -e "[$(date +%m/%d)] $type\n $(git status)" >| ~/.gitmessage.txt
	git commit
	git push
}

if [ $option -eq "1" ]; then
	type="docs: "
	create_message
elif [ $option -eq "2" ]; then
	type="feature: "
	create_message
elif [ $option -eq "3" ]; then
	type="fix: "
	create_message
elif [ $option -eq "4" ]; then
	type="refactor: "
	create_message
elif [ $option -eq "5" ]; then
	type="format: "
	create_message
elif [ $option -eq "6" ]; then
	git commit
	git push
else 
	exit 1
fi


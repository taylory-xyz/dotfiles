echo -e "\nwhat type of commit is this?"
echo -e "\t 1: docs"
echo -e "\t 2: feature"
echo -e "\t 3: fix"
echo -e "\t 4: refactor"
echo -e "\t 5: format"

read option

if [ $option -eq "1" ]; then
	type="docs: "
elif [ $option -eq "2" ]; then
	type="feature: "
elif [ $option -eq "3" ]; then
	type="fix: "
elif [ $option -eq "4" ]; then
	type="refactor: "
elif [ $option -eq "5" ]; then
	type="format: "
else 
	exit 1
fi

echo -e "[$(date +%m/%d)] $type\n $(git status)" >| ~/.gitmessage.txt
git commit
git push

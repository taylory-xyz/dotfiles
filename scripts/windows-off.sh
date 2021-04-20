cup all

choco list --local-only > ~/.dotfiles/windows/choco.txt && echo "choco package list: updated!" || echo "choco package list: failed :("

code --list-extensions > ~/.dotfiles/windows/extensions.txt && echo "vscode extensions: updated" || echo "vscode extendsions: failed :("

npm update -g && npm list -g --depth=0 > ~/.dotfiles/windows/npm.txt && echo "npm: updated" || echo "npm: failed :("


for i in $(pip list -o | awk 'NR > 2 {print $1}'); do pip install -U $i; done
pip list --not-required >> ~/.dotfiles/windows/pip.txt && echo "pip: updated" || echo "pip: failed :("

# cp ~/AppData/Roaming/Code/User/settings.json settings.json && echo "vscode settings.json: updated" || echo "vscode settings.json: failed :("

fmtdate="$(date +%m/%d)"
message="[${fmtdate}]"


cd ~/.dotfiles
	git add -A
	git status
	~/.dotfiles/scripts/./commit.sh || echo "dotfiles failed :("

echo "shutdown in progress. shutdown /a to cancel"
shutdown /s

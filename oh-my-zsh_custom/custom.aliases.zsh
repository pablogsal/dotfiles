# Yaourt_update aliases

alias yaourt_update='yaourt -Syua'
alias lscustom='pacman -Qei | awk '\''/^Name/ { name=$3 } /^Groups/ { if ( $3 != "base" && $3 != "base-devel" ) { print name } }'\'''
alias lsorhpans='sudo pacman -Qdt'
alias rmorphans='sudo pacman -Rs $(pacman -Qtdq)'
alias rmjournal='sudo journalctl --vacuum-time=2d'
alias rmpycache='find . -type d -name '__pycache__' | xargs -n 1 rm -rif' 

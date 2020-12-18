#
# ~/.bashrc
#

# If not running interactively, don't do anything 
[[ $- != *i* ]] && return

LS_COLORS='di=\e[38;5;173;1:ow=\e[38;5;173;1:ex=\e[38;5;174;1:*.zip=\e[38;5;167;1:*.gz=\e[38;5;167;1:*.jar=\e[38;5;174;1:*.jpg=\e[38;5;111;1:*.jpeg=\e[38;5;111;1:*.gif=\e[38;5;111;1:*.png=\e[38;5;111;1:*.mp3=\e[38;5;111;1:*.txt=\e[38;5;108;1:*.pdf=\e[38;5;108;1'
export LS_COLORS

alias ls='ls --color=auto'
alias grep='grep --color'

# \[$purple$bold\]REPLACE[$reset\]
# \[$red$bold\]REPLACE[$reset\]
purple=$( tput setaf 5 )
red=$( tput setaf 1 )
bold=$( tput bold )
reset=$( tput sgr0 )
PS1='\[$purple$bold\][\u\[$reset\]\[$red$bold\]@\[$reset\]\[$purple$bold\]\h \[$reset\]\[$red$bold\]\W\[$reset\]\[$purple$bold\]]\$\[$reset\] '

stty -ixon

xset r rate 300 50


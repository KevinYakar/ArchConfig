#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

stty -ixon

BROWSER=/usr/bin/firefox

export PATH=$PATH:~/.local/bin
PS1='\[\e[;95;1m[\u\e[0m\[\e[;91;1m@\e[0m\[\e[;95;1m\h \e[0m\[\e[;91;1m\W\e[0m\[\e[;95;1m]\$\e[0m\]\]\]\]\]\]\]\]\]\]\]\]\]\]\]\] '

xset r rate 300 50

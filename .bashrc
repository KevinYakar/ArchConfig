#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

#\[$purple$bold\]PORTION[$reset\]
#\[$red$bold\]PORTION[$reset\]
purple=$( tput setaf 5 )
red=$( tput setaf 1 )
bold=$( tput bold )
reset=$( tput sgr0 )
PS1='\[$purple$bold\][\u\[$reset\]\[$red$bold\]@\[$reset\]\[$purple$bold\]\h \[$reset\]\[$red$bold\]\W\[$reset\]\[$purple$bold\]]\$\[$reset\] '

stty -ixon

BROWSER=/usr/bin/firefox

export PATH=$PATH:~/.local/bin

xset r rate 300 50

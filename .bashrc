#
# ~/.bashrc
#

# If not running interactively, don't do anything 
[[ $- != *i* ]] && return

LS_COLORS='di=01;33:ow=01;33:ex=01;97:*.zip=01;31:*.gz=01;31:*.jar=01;97:*.jpg=01;36:*.jpeg=01;36:*.gif=01;36:*.png=01;36:*.mp3=01;36:*.txt=32:*.pdf=34'
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

BROWSER=/usr/bin/firefox

export PATH=:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/kevin/.local/bin

# ics46 stuff 
alias ics46='ssh ics46@172.16.117.128'
mvtolin ()
{
    scp $@ ics46@172.16.117.128:~/Desktop
}


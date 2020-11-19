#
# ~/.bashrc
#

# If not running interactively, don't do anything 
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color'
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

export PATH=:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/kevin/.local/bin
# temp for assignment 4 
export PATH=$PATH:/home/kevin/school/fall2020/in4matx115/assignment4/defects4j/framework/bin

xset r rate 300 50

# ics46 stuff 
alias ics46='ssh ics46@172.16.117.128'

mvtolin ()
{
    scp $@ ics46@172.16.117.128:~/Desktop
}


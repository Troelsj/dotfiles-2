#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
#PS1=' \w $ '
# • ≡ →
export PS1=" \[\e[33m\]\w\[\e[0m\] "

export HISTCONTROL=ignoreboth:erasedups
export PATH=$PATH:~/bin/
export EDITOR=vim

#xset +fp /usr/share/fonts/local/
#xset fp rehash

# Aliases

alias ls='ls --color=auto'

alias l='ls -CF'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

#alias rm='rm -rf'
alias mkdir='mkdir -p'
alias tree='tree -C'
alias free='free -m'

alias date='date -u'

alias x='startx'

#alias yaourt\ -Rcsn='yaourt -Rcsn --color always'

#alias ~='cd ~'
#alias .='pwd'
#alias ..='cd ..'
#alias ...='cd ../../'
#alias cd..='cd ..'

alias reload="source $HOME/.bashrc"

alias mpd="mpd ~/.config/mpd/conf"

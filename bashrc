# ~/.bashrc
#
# by Ivan Sokolov

# If not running interactively, don't do anything 
[[ $- != *i* ]] && return

prompt () {
	_ERR=$?
	_UID=$(id -u)
	_JOB=$(jobs | wc -l)

	PL=""
	[ $_UID -eq 0 ] && \
	PL="\[\033[31m\]─\[\033[0m\]" || \
	PL="\[\033[30m\]─\[\033[0m\]"

	[ $_JOB -ne 0 ] && \
	PL="${PL}\[\033[32m\]─\[\033[0m\]" || \
	PL="${PL}\[\033[30m\]─\[\033[0m\]"
	
	[ $_ERR -ne 0 ] && \
	PL="${PL}\[\033[33m\]─\[\033[0m\]" || \
	PL="${PL}\[\033[30m\]─\[\033[0m\]"
	
	PL=${PL:-"\[\033[30m\]───\[\033[0m\]"}
	
	PS1=" $PL "
}

PROMPT_COMMAND=prompt

#PS1="\[$(tput setaf 4)\]┌─╼ \[$(tput setaf 7)\][\w]\n\[$(tput setaf 4)\]\$(if [[ \$? == 0 ]]; then echo \"\[$(tput setaf 4)\]└────╼\"; else echo \"\[$(tput setaf 4)\]└╼\"; fi) \[$(tput setaf 7)\]"

#PS1=" \[$([ "$(id -u)" -eq 0 ] && tput setaf 1 || tput setaf 0)\]─\[$(tput setaf 7)\]\
#\[$([ "$(jobs | wc -l)" -ne 0 ] && tput setaf 2 || tput setaf 0)\]─\[$(tput setaf 7)\]\
#\[$([ "$?" -ne 0 ] && tput setaf 3 || tput setaf 0)\]╼\[$(tput setaf 7)\] "

#
# Deprecated
#
#function selectps {
#	[[ -z "$1" ]] && exit
#	case "$1" in
#		'---')
#			export PS1=' $(prompt) ' ;;
#		'pwd')
#			export PS1=" \[\e[00;37m\]\w\[\e[0m\] " ;;
#		'def')
#			export PS1='[\u@\h \W]\$ ' ;;
#		'arr')
#			export PS1=" \[\e[01;34m\]-→\[\e[0m\] " ;;
#		    *)
#		    export PS1="$1" ;;
#	esac
#	echo "$1" > ~/.ps1
#}

export HISTCONTROL=ignoreboth:erasedups
export PATH=~/bin/:$PATH
export EDITOR=vim

# Aliases

alias ls='ls --color=auto'

alias l='ls -CF'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -al'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias cp='cp -r'
alias rm='rm -rf'
alias mkdir='mkdir -p'
alias tree='tree -C --dirsfirst'
alias free='free -m'

alias x='startx'

#alias ~='cd ~'
#alias .='pwd'
#alias ..='cd ..'
#alias ...='cd ../../'
#alias cd..='cd ..'

alias reload="source $HOME/.bashrc"

alias vid='vim -u ~/dotdev.vimrc'
alias vin='vim -u /dev/null'

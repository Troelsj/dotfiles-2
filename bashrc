# ~/.bashrc

# If not running interactively, don't do anything 
[[ $- != *i* ]] && return

prompt () {
	_ERR=$?
	_UID=$(id -u)
	_JOB=$(jobs | wc -l)

	PL=""
	[ $_UID -eq 0 ] && \
	PL="\[\033[1;31m\]╸\[\033[0m\]" || \
	PL="\[\033[1;30m\]╸\[\033[0m\]"

	[ $_JOB -ne 0 ] && \
	PL="${PL}\[\033[1;32m\]╸\[\033[0m\]" || \
	PL="${PL}\[\033[1;30m\]╸\[\033[0m\]"
	
	[ $_ERR -ne 0 ] && \
	PL="${PL}\[\033[1;33m\]╸\[\033[0m\]" || \
	PL="${PL}\[\033[1;30m\]╸\[\033[0m\]"
	
	PL=${PL:-"\[\033[1;30m\]╸╸╸\[\033[0m\]"}
	
	PS1=" $PL "
}

PROMPT_COMMAND=prompt

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

alias vin='vim -u /dev/null'

alias pacman="pacman --color always"

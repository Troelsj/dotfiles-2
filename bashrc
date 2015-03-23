# ~/.bashrc
#
# by Ivan Sokolov

# If not running interactively, don't do anything 
[[ $- != *i* ]] && return

export PS1=" [00;37m\]\w[0m\] "

prompt () {
	_ERR=$?
	_UID=$(id -u)
	_JOB=$(jobs | wc -l)

	[ $_UID -eq 0 ] && echo -n "[31m━[0m" || echo -n "[30m─[0m"
	[ $_JOB -ne 0 ] && echo -n "[32m─[0m" || echo -n "[30m─[0m"
	[ $_ERR -ne 0 ] && echo -n "[33m─[0m" || echo -n "[30m─[0m"
}

function selectps {
	[[ -z "$1" ]] && exit
	case "$1" in
		'---')
			export PS1=' $(prompt) ' ;;
		'pwd')
			export PS1=" \[\e[00;37m\]\w\[\e[0m\] " ;;
		'def')
			export PS1='[\u@\h \W]\$ ' ;;
		'arr')
			export PS1=" \[\e[01;34m\]-→\[\e[0m\] " ;;
		    *)
		    export PS1="$1" ;;
	esac
	echo "$1" > ~/.ps1
}

export HISTCONTROL=ignoreboth:erasedups
export PATH=$PATH:~/bin/
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

#alias date='date -u'

alias x='startx'

#alias yaourt\ -Rcsn='yaourt -Rcsn --color always'

#alias ~='cd ~'
#alias .='pwd'
#alias ..='cd ..'
#alias ...='cd ../../'
#alias cd..='cd ..'

alias reload="source $HOME/.bashrc"

function export_colors {
	echo '' > ~/.Xcolors
	[[ -n "$FGCOLOR" ]] && echo "*foreground: $FGCOLOR" >> ~/.Xcolors
	[[ -n "$BGCOLOR" ]] && echo "*background: $BGCOLOR" >> ~/.Xcolors
	[[ -n "$CURSORCOLOR" ]] && echo "*cursorColor: $CURSORCOLOR" >> ~/.Xcolors	
	for i in {0..15}; do
		[[ -n $(eval "echo \$COLOR$i") ]] && echo "*color$i: #$(eval "echo \$COLOR$i")" >> ~/.Xcolors
	done
	xrdb -merge ~/.Xcolors
}

function touch {
	[[ -z "$1" ]] && exit
	mkdir -p $(dirname $1)
	$(which touch) "$1"
}

[[ -f ~/.ps1 ]] && selectps $(cat ~/.ps1) || selectps 'pwd'


# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
gitst()
{
    printf "%*s" $COLUMNS "$(__git_ps1)"
}

GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWDIRTYSTATE=1
PS1='\[$(tput sc; gitst; tput rc)\]${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\W\[\033[01;32m\] > \[\033[00m\]'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

[ -r /home/user1/.byobu/prompt ] && . /home/user1/.byobu/prompt   #byobu-prompt#

shopt -s autocd  
. ~/Scripts/functions.sh
export SUDO_ASKPASS="$HOME/Scripts/askpass.sh"
export GOOGLE_APPLICATION_CREDENTIALS=~/.cre/pasture-gcp.json
export W3MIMGDISPLAY_PATH=/usr/lib/w3m/w3mimgdisplay
export PATH=~/.local/bin:$PATH
export TERM=xterm-256color
alias woff='sudo -A killall wpa_supplicant;sudo -A ifconfig wlp1s0 down'
alias won='sudo -A ifconfig wlp1s0 down&&sudo -A ifconfig wlp1s0 up&&sudo -A wpa_supplicant -D nl80211 -c /etc/wpa_supplicant/wpa_supplicant-wlp1s0.conf -B -i wlp1s0'
alias py3='python3'
alias fbterm='export TERM=fbterm && fbterm'
alias cdd='cd ~/dls'
alias rm='trash'

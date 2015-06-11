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

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Set the default editor.  We want the behavior to be "open a new
# buffer for the existing Emacs session.  If that session does not
# exist, open Emacs in daemon mode and then open a terminal frame
# connection to it."  Setting $VISUAL and $EDITOR accomplishes the
# first part, and setting $ALTERNATIVE_EDITOR to an empty string
# accomplishes the second part
# (http://stuff-things.net/2014/12/16/working-with-emacsclient/).
export EDITOR="emacsclient"
export VISUAL="emacsclient"
export ALTERNATE_EDITOR=""

# Set up FCITX
export XIM_PROGRAM=fcitx
export XIM=fcitx
# Below is required to make Emacs work
export LC_CTYPE="zh_CN.utf8"

PS1="\[\e[01;32m\]\u@\h\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[01;34m\]\W\[\e[0m\]\[\e[00;37m\](\$?)\\$ \[\e[0m\]"

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;\u@\h: \W\a\]$PS1"
    ;;
*)
    ;;
esac

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

# Store all user scripts in ~/.local/bin
export PATH="$HOME/.local/bin:$PATH"

export PATH="$HOME/.cask/bin:$PATH"

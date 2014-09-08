#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

# some more ls aliases
alias ll='ls -alFh'
alias la='ls -A'
alias l='ls -lhF'

if [ "$(uname)" = "Darwin" ]
then
    alias ls='ls -GFh'
else
    alias ls='ls --color=auto'
fi
PS1='[\u@\h \W]\$ '
alias vi=vim
# not in a screen (i.e. logging on), go to base:
PSEUDO_BASE=/home/rlm/kd/code/PythonKD/
if [ -d $PSEUDO_BASE -a "$STY" = '' ]
then
    cd $PSEUDO_BASE
fi

source ~/.bash_completion

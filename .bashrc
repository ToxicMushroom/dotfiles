#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# https://superuser.com/questions/382456/why-does-this-bash-prompt-sometimes-keep-part-of-previous-commands-when-scrollin
# The unused colors need to be shifted to the used format in order to avoid above bug
Default="\[\033[39m\]"
Black="\e[30m"
Red="\e[31m"
Green="\e[32m"
Yellow="\e[33m"
Blue="\e[34m"
Magenta="\[\033[35m\]"
Cyan="\e[36m"
Light_gray="\e[37m"
Dark_gray="\e[90m"
Light_red="\e[91m"
Light_green="\e[92m"
Light_yellow="\e[93m"
Light_blue="\e[94m"
Light_magenta="\e[95m"
Light_cyan="\[\033[96m\]"
White="\e[97m"
BPURPLE='\[\033[0;34m\]'
BPINK='\[\033[01;35m\]'
BCYAN='\[\033[01;36m\]'

export PS1="${Magenta}(\$?) ${BPINK}[\t] ${BCYAN}[\u]${BPURPLE}@${BCYAN}[\h] ${BPURPLE}[\w] ${Light_cyan}\$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\n${Default}> \[$(tput sgr0)\]"

# Use bash_aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bash prompt stuff
TERM=xterm-256color
PROMPT_USER_COLOR="$(tput bold)$(tput setaf 9)"
PROMPT_PREPOSITION_COLOR="$(tput bold)"
PROMPT_DEVICE_COLOR="$(tput bold)$(tput setaf 9)"
PROMPT_DIR_COLOR="$(tput bold)$(tput setaf 9)"
. ~/.bash_prompt # Run twolfson/sexy-bash-prompt

# Path
export PATH=$PATH://home/cjbarrac/.gem/ruby/2.2.0/bin

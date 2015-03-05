# Use bash_aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bash prompt stuff
TERM=xterm
echo "Welcome /home/"

# Path
export PS1="> "
export PATH=$PATH://home/cjbarrac/.gem/ruby/2.2.0/bin

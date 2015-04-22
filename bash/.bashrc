# Use bash_aliases
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Bash prompt stuff
TERM=xterm-256color
export PS1="> "
echo "Welcome /home/"

# Path
export PATH=$PATH://home/cjbarrac/.gem/ruby/2.2.0/bin
source /usr/share/doc/pkgfile/command-not-found.bash

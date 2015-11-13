#!/usr/bin/zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/cjbarrac/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

source "${HOME}/.zgen.zsh"
if ! zgen saved; then
	zgen oh-my-zsh
	zgen load zsh-users/zsh-history-substring-search
	zgen load zsh-users/zsh-syntax-highlighting
	zgen load zsh-users/zsh-completions src
	zgen load CarloBarraco/Dotfiles zsh/bira-modified
	zgen save
fi

export TERM=xterm

source ~/.aliases

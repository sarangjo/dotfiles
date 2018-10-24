# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# General aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Windows specific aliases and functions
if [ -f ~/.win_aliases ]; then
    . ~/.win_aliases
fi

# Attu specific global definitions
if [ -f ~/.atturc ]; then
    . ~/.atturc
fi

# Work aliases
if [ -f ~/.illumio_aliases ]; then
    . ~/.illumio_aliases
fi

# just in case the system does not have vim as the default editor
export EDITOR=vim

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# \e is needed for escape sequence
# [32m is green, [33m is yellow, [0m is white
# \u is user, \h is host, \W is working directory
export PS1="[\u@\h \W]\$(parse_git_branch) $ "
export ATTU="sarangj@attu.cs.washington.edu"
export KINSPIRE="kavmag1@durin.dreamhost.com"

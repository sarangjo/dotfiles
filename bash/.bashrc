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
if [ -f ~/.winrc ]; then
    . ~/.winrc
fi

# Linux specific global definitions
if [ -f ~/.nixrc ]; then
    . ~/.nixrc
fi

# Work aliases
if [ -f ~/.illumiorc ]; then
    . ~/.illumiorc
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

export SKIP_AUTH=1

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

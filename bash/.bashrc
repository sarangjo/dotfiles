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

# WSL-specific global definitions
KERNEL_RELEASE=$(uname -r)
if [[ -f ~/.wslrc && $KERNEL_RELEASE =~ .*Microsoft$ ]]; then
    . ~/.wslrc
fi

# Linux/*nix-specific stuff
OS=$(uname)
if [[ -f ~/.nixrc && $OS == Linux ]]; then
    . ~/.nixrc
fi

# MSYS2-specific global definitions
if [[ -f ~/.msys2rc && -n $MSYSTEM ]]; then
    . ~/.msys2rc
fi

# Work aliases
if [ -f ~/.illumiorc ]; then
    . ~/.illumiorc
fi

# Just in case the system does not have vim as the default editor
export EDITOR=vim

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# \e is needed for escape sequence
# [32m is green, [33m is yellow, [0m is white
# \u is user, \h is host, \W is working directory
export PS1="[\u@\h \W]\$(parse_git_branch) $ "

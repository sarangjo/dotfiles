# User specific aliases and functions
alias cleantemp="rm *~ .*.swp"
alias lmao="exit"
alias gr="grep -Rni"
alias ll="ls -l"
alias la="ls -lA"

# Recycle bin deletion
rb="/tmp/sarangj_recycle"

function del {
    if [ "$#" -ge 1 ]; then
        mkdir -p "$rb"
        for file in "$@"; do
            echo "Recycling ${file}"
            mv -f "$file" "$rb"
        done
    else
        echo "Provide something to recycle."
    fi
}

function clean_rb {
    rm -rf "$rb"
}

# SSH into attu
function attu {
    if [ $# -eq 0 ]; then
        ssh sarangj@attu.cs.washington.edu
    else
        host="sarangj@attu$1.cs.washington.edu"
        ssh $host
    fi
}

function cl {
    if [ "$#" -eq 1 ]; then
        cd $1 && ls
    else
        echo "Provide a directory to navigate to."
    fi
}

# Compiling
alias qcc="gcc -Wall -std=gnu99 -g -o"
alias vg="valgrind --leak-check=full"
alias q++="g++ -Wall -std=c++11 -g -o"

# Git
alias g="git"
alias gith="cd ~/git" # Git home
alias gitfr="git fetch upstream && git rebase upstream/master"
alias gitcc="git checkout -- . && git clean -fd"

# Tmux
alias tm="tmux a || tmux" # Attaches, or creates new session if not already created

# PHP
alias phps='function _phps(){ php -S localhost:$1; };_phps'

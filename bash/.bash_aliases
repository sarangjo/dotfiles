# User specific aliases and functions
# These aliases are cross-platform and should work on all bash-compatible platforms
alias cleantemp="rm *~ .*.swp"
alias gr="grep -Rni"
alias ll="ls -l"
alias la="ls -A"

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

# cd + ls
function cl {
    cd "$@" && ls
}

# Compiling
alias qcc="gcc -Wall -std=gnu99 -g"
alias vg="valgrind --leak-check=full"
alias q++="g++ -Wall -std=c++11 -g"
alias gccver="g++ -dM -E -x c++ /dev/null | grep -F __cplusplus"
alias gccinc="echo | gcc -E -Wp,-v -"

# Git
alias g="git"
alias gitfr="git fetch upstream && git rebase upstream/master"
alias gitcc="git checkout -- . && git clean -fd"
function gitpub {
    git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD) $@
}
function gitreset {
    if [ "$#" -lt 2 ]; then
        echo "Usage: gitreset <branch> <file>"
        return
    fi

    git reset "$1" -- "$2"
    git restore "$2"
    git restore --staged "$2"
}

# Tmux
alias tm="tmux a || tmux" # Attaches, or creates new session if not already created

# PHP
function phps {
    php -S "localhost:$1"
}

# Kinspire
alias kindb="mysql -h mysql.kinspire.org -u kinspire -D kinspireorg -p"

# Misc
# String rotation for funzies
function rot {
    foo=${1^^}

    for ((i = 0; i < ${#foo}; i++ )); do
        for ((j = 0; j < ${#foo}; j++ )); do
            let "idx = ( $i + $j ) % ${#foo}"
            echo -n "${foo:$idx:1} "
        done
        echo
    done
}

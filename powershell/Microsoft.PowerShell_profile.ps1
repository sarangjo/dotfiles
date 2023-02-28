Set-PSReadLineOption -EditMode emacs

Set-Alias -Name which -Value Get-Command

function gitcc {
    git checkout -- .
    if ($?) {
        git clean -fd
    }
}

function gitpub {
        git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD) $args
}

Set-Alias vi vim

function gitreset($branch, $file) {
        git reset $branch -- $file
        git restore $file
        git restore --staged $file
}

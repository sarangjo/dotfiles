Set-PSReadLineOption -EditMode emacs

Set-Alias -Name which -Value Get-Command

function gitcc {
    git checkout -- .
    if ($?) {
        git clean -fd
    }
}

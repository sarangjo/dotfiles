#!/bin/bash

mkdir -p bash/
cp ~/.bash_aliases bash/ &> /dev/null
cp ~/.bash_profile bash/ &> /dev/null
cp ~/.bashrc bash/ &> /dev/null
cp ~/.msys2rc bash/ &> /dev/null
cp ~/.winrc bash/ &> /dev/null
cp ~/.wslrc bash/ &> /dev/null

mkdir -p git/
cp ~/.gitconfig git/ &> /dev/null

mkdir -p misc/
cp ~/.minttyrc misc/ &> /dev/null

mkdir -p tmux/
cp ~/.tmux.conf tmux/ &> /dev/null

mkdir -p vim/
cp ~/.vimrc vim/ &> /dev/null

mkdir -p powershell/
# Powershell is in a weird place
cp ~/Documents/WindowsPowerShell/Microsoft.PowerShell_profile.ps1 powershell/ &> /dev/null

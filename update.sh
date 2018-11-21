#!/bin/bash

mkdir -p bash/
cp ~/.bashrc bash/ &> /dev/null
cp ~/.bash_aliases bash/ &> /dev/null
cp ~/.nixrc bash/ &> /dev/null
cp ~/.winrc bash/ &> /dev/null

mkdir -p vim/
cp ~/.vimrc vim/ &> /dev/null

mkdir -p tmux/
cp ~/.tmux.conf tmux/ &> /dev/null

mkdir -p git/
cp ~/.gitconfig git/ &> /dev/null

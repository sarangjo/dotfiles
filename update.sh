#!/usr/bin/env bash

mkdir -p bash/
cp ~/.bashrc bash/
cp ~/.bash_aliases bash/
cp ~/.win_aliases bash/
cp ~/.attu_aliases bash/
cp ~/.nix_aliases bash/

mkdir -p vim/
cp ~/.vimrc vim/

mkdir -p tmux/
cp ~/.tmux.conf tmux/

mkdir -p git/
cp ~/.gitconfig git/

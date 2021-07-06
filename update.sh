#!/usr/bin/env bash

mkdir -p .backup
mkdir -p .backup/vim 
mkdir -p .backup/vim/colors 

cp -R ~/.vim/colors/ .backup/vim/colors
cp ~/.vimrc .backup/vimrc
cp ~/.tmux.conf .backup/tmux.conf

mkdir -p ~/.vim/colors/
cp -R vim/colors/ ~/.vim/colors
cp vimrc ~/.vimrc
cp tmux.conf ~/.tmux.conf

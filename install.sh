#!/bin/bash

#======================================================
#以下参考にしたページ
#https://www.g104robo.com/entry/github-dotfiles
#https://github.com/g104robo/dotfiles
#======================================================

packagelist=(
#terminal
     "gnome-terminal" 
     "tmux"
     "zsh"
     "curl"
     "wget"
     #"terminator" 

#開発環境
     "build-essential"
     "cmake"
     "cmake-qt-gui"
     "cmake-curses-gui"
     "automake"
     "git"
     "vim"
     "python3-pip"
     "python-pip"

#グラフ描画
    "gnuplot"
    "gnuplot-x11"
)

sudo apt update -y

echo "start apt install apps..."
for list in ${packagelist[@]}; do
    sudo apt install -y ${list}
done

sudo apt update -y
sudo apt upgrade -y

./link.sh
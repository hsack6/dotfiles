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
#powerline設定
     "golang"
     "fonts-powerline"

#グラフ描画
    "gnuplot"
    "gnuplot-x11"
)

sudo apt update -y

echo "start apt install apps..."
for list in ${packagelist[@]}; do
    sudo apt-get install -y ${list}
done

sudo apt update -y
sudo apt upgrade -y

#============================================================
#powerline設定
#============================================================
is_desktop=`dpkg -l ubuntu-desktop 2> /dev/null`
if [ -n "$is_desktop" ]; then
    sudo mkdir -p ~/go
    sudo echo "export GOPATH=$HOME/go" >> ~/.zshrc
    sudo echo "export PATH=$PATH:$HOME/go/bin:/usr/local/go/bin" >> ~/.zshrc
    source ~/.zshrc
    sudo go get -u github.com/justjanne/powerline-go
fi
#============================================================
cd $(dirname $0) && pwd
./link.sh

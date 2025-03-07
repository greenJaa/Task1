#!/usr/bin/env bash
#########################################
#Develop by: Oleg Ischouk
#Purpose:
#Date: 28/02/2025
#Version: 1.0.0
set -o errexit
#set -o pipefail
########################################


if dpkg -s codium &>/dev/null; then
  echo 'dcodium is installed'

else {
    sudo wget https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg -O /usr/share/keyrings/vscodium-archive-keyring.asc
    echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.asc ] https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list
    sudo apt update && sudo apt install codium
}
fi
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#echo -e "call plug#begin()\nPlug 'preservim/NERDTree'\ncall plug#end()"> ~/.vimrc

#use vscodium

#!/usr/bin/env bash
#########################################
#Develop by: Oleg Ischouk aka Silent-Mobius
#Purpose:
#Date: 28/02/2025
#Version: 1.0.0
set -o errexit
#set -o pipefail
########################################

wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg     | gpg --dearmor     | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
   24  echo 'deb [arch=amd64,arm64 signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg] https://download.vscodium.com/debs vscodium main'     | sudo tee /etc/apt/sources.list.d/vscodium.list
   25  sudo apt update && sudo apt install codium


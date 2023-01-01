#!/bin/bash

set -xe


# echo

echo Name Github
read -r v1
echo Correo Github
read -r v2

sudo dnf up --refresh -y
sudo dnf groupinstall "Development Tools" "Development Libraries"


# Rustup

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"


# Descargas sudo dnf

sudo dnf in git fish ranger util-linux-user

git config --global init.defaultBranch main
git config --global user.name "$v1"
git config --global user.email "$v2"


# Alacritty

mkdir github
cd github
git clone https://github.com/ctronp/alacritty.git  # By Carlos (Ctronp) (tiene install.sh ya hecho para mas comodidad al actualizar)
cd alacritty

sudo dnf in cmake freetype-devel fontconfig-devel libxcb-devel libxkbcommon-devel g++

./install.sh
chsh -s /usr/bin/fish

cargo install bat cargo-update exa starship

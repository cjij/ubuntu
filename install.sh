#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade -y

sudo apt-get install -y openssh-server php5 git gnome-shell \
  vim-gtk git wine vlc terminator subdownloader qtcreator \
  ubuntu-restricted-extras rake default-jre g++ \
  nmap wireshark aircrack-ng ettercap-graphical macchanger chromium-browser \
  privoxy zsh build-essential linux-headers-generic libpam-fprintd openjdk-7-jdk \
  gnome-system-tools gimp nautilus-compare

sudo /usr/share/doc/libdvdread4/install-css.sh

gsettings set org.gnome.shell.overrides button-layout minimize,maximize,close:

sudo update-rc.d apache2 disable
sudo touch /etc/ssh/sshd_not_to_be_run

git clone https://github.com/skwp/dotfiles ~/.yadr
cd ~/.yadr && rake install



git config --global credential.helper cache
mkdir ~/.git
git config credential.helper 'cache --timeout=3600'

cd && mkdir git && cd git
git clone https://github.com/vlad-sensei/ubuntu.git
cd ubuntu

sudo cp chmac.sh /etc/init.d/chmac
sudo update-rc.d chmac defaults 10

cat vimrc >> ~/.vimrc.after
cat zshrc >> ~/.zshrc

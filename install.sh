#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade -y

sudo apt-get install -y openssh-server apache2 php5 git gnome-shell \
  vim vim-common vim-gtk git bison flex wine vlc terminator subdownloader \
  acidrip ubuntu-restricted-extras codeblocks rake

sudo /usr/share/doc/libdvdread4/install-css.sh

gsettings set org.gnome.shell.overrides button-layout minimize,maximize,close:

sudo update-rc.d apache2 disable
sudo touch /etc/ssh/sshd_not_to_be_run

cd
git clone https://github.com/skwp/dotfiles ~/.yadr
cd ~/.yadr && rake install
cd

git config --global credential.helper cache

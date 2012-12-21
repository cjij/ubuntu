#!/bin/bash

sudo apt-get update
sudo apt-get dist-upgrade -y

<<<<<<< HEAD
sudo apt-get install -y openssh-server apache2 php5 git gnome-shell vim vim-common vim-gtk git bison flex rake
=======
sudo apt-get install -y openssh-server apache2 php5 git gnome-shell vim vim-common vim-gtk git bison flex wine
>>>>>>> ee9d43ed7ddd90d75b5abe890fb908562a6e7726

sudo update-rc.d apache2 disable
sudo touch /etc/ssh/sshd_not_to_be_run

cd
git clone https://github.com/skwp/dotfiles ~/.yadr
cd ~/.yadr && rake install
cd

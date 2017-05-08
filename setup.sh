#!/bin/bash

#turn off that infernal bell sound
echo "set bell-style none" >> ~/.inputrc

#addrepos
sudo add-apt-repository ppa:pdfchain-team/ppa


#install programs
sudo apt-get install python-pip git zsh vim emacs dtrx pdftk -y &


#configure git
git config --global user.name "sumanthneerumalla"

echo "Dont forget to set up your git email"
echo "git config --global user.email"


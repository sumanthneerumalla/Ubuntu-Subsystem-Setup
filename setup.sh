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
echo "git config --global user.email <email here, in quotes>"

#transfer.sh for file transfers/uploads
echo "also add this to your .bashrc for easy uploads"
echo ""
echo " transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi 
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; }"

#!/bin/bash

FILES=".zprofile .zshrc .bash_profile .bashrc .gvimrc .screenrc .vimrc"
for FILE in $FILES
do
        test -f $HOME/$FILE && cp -a $HOME/$FILE $HOME/$FILE~
        curl -L https://raw.githubusercontent.com/fukuchiharuki/dotfiles/master/$FILE > $HOME/$FILE
done

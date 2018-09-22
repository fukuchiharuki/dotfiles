#!/bin/bash

HERE=$(cd $(dirname $0); pwd)
while read LINE
do
	test ! -e $HOME/$LINE &&
	ln -s $HERE/$LINE $HOME/$LINE &&
	echo "linked: $HOME/$LINE" ||
	echo "could not link: $HOME/$LINE"
done <<EOD
.bash_profile
.bashrc
.gvimrc
.screenrc
.vimrc
EOD

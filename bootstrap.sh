#!/bin/sh

ln -srb .inputrc ~/
ln -srb .gitconfig ~/
ln -srb .gitmessage ~/
ln -srb .bashrc ~/
ln -srb .emacs.d ~/

# Bootstrap the Emacs configuration
(cd .emacs.d/ && ./bootstrap.sh)

#!/bin/sh

do_install() {
    for file in $@; do
	printf "Installing $file\n"
	ln -s -f `pwd`/$file ~/$file
    done
}

# Link the following files.
do_install        \
    .inputrc      \
    .gitconfig    \
    .gitmessage   \
    .bashrc       \
    .bash_aliases \
    .emacs.d

# Bootstrap the Emacs configuration
(cd .emacs.d/ && ./bootstrap.sh)

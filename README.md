pniedzielski's Dotfiles
=======================
Copyright © 2014–2015, Patrick M. Niedzielski.  This code is
licensed under the GNU GPLv3+.  Please see the `COPYING` file for
details.

To bootstrap a system with these dotfiles, make sure you have
[GNU Stow][1] installed.  Then, for each package you want to install,
run

    stow -t ~ -S packages names separated by spaces

Additionally, for Emacs, you'll want to use the
`./emacs/.emacs.d/bootstrap.sh` script to install necessary packages.

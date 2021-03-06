# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# Make sure the XDG directories are set correctly.
# See <https://theos.kyriasis.com/~kyrias/basedir-spec.html>
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_LIB_HOME="$HOME/.local/lib"

# Add software installed under `~/.local` tree.
export LOCAL_PREFIX="$HOME/.local"

export PATH="$LOCAL_PREFIX/bin:$PATH"
export MANPATH="$LOCAL_PREFIX/share/man:$MANPATH"
export CFLAGS="-I$LOCAL_PREFIX/include $CFLAGS"
export CXXFLAGS="-I$LOCAL_PREFIX/include $CXXFLAGS"
export LDFLAGS="-L$LOCAL_PREFIX/lib -Wl,-rpath,$LOCAL_PREFIX/lib $LDFLAGS"
export LD_RUNPATH="$LOCAL_PREFIX/lib:$LD_RUNPATH"
export PKG_CONFIG_PATH="$LOCAL_PREFIX/lib/pkgconfig:$PKG_CONFIG_PATH"
export ACLOCAL_FLAGS="-I $LOCAL_PREFIX/share/aclocal/"

# The following environment variables make certain applications play
# more nicely with XDG directories.
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export TEXMFVAR="$XDG_CACHE_HOME/texmf-var"

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

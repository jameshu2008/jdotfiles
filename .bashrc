# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

  if [ -f ~/.bash_vars_aliases ]; then
      . ~/.bash_vars_aliases
  fi

  if [ -f ~/GoogleDrive/gdotfiles/.bashrc ]; then
      . ~/GoogleDrive/gdotfiles/.bashrc
  fi

  if [ -f ~/.inputrc ]; then
      . ~/.inputrc
  fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
  if [ -f /etc/bash_completion ] && ! shopt -oq posix && [ "$OSTYPE" == "linux-gnu" ]; then
      . /etc/bash_completion
  fi

  if [ -f $/usr/local/etc/etc/bash_completion ]; then
      . $/usr/local/etc/etc/bash_completion
  fi

# Add ~/bin
  export PATH=$HOME/bin:$PATH
  export PATH=/home/jameshu/.npm-global-packages/bin:$PATH

# Default to VI Key Mapping in Terminal
  export EDITOR=vi
  export P4EDITOR=vi
  # export EDITOR="rmate -w"
  # export P4EDITOR="rmate -w"
  set -o vi

# Disabling Beeping.
# setterm -blength 0

# Color settings
  export TERM=screen-256color
  force_color_prompt=yes

# Don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
  HISTCONTROL=ignoreboth

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
  HISTSIZE=100000
  HISTFILESIZE=200000

# append to the history file, don't overwrite it
  shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
  shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
  if [[ "$OSTYPE" == "linux-gnu" ]]; then
    shopt -s globstar
  fi

# make less more friendly for non-text input files, see lesspipe(1)
  [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


# MISC
  # Unmap ctrl-s keybinding, for vim-ipython
  # stty stop undef # to unmap ctrl-s
  #[ "$PS1" ] && /usr/bin/setup-corp-loasd.sh -q


# OS specific settings

if [[ "$OSTYPE" == "darwin"* ]]; then

  # npm global packages location
  export NPM_PACKAGES="${HOME}/.npm-global-packages"

  # Adding relevant (bin) directories to $PATH
  # THE LOWER THE HIGHER ON THE $PATH LIST
    # Node.js stuff
    export PATH="/usr/local/share/npm/bin:$PATH"
    export PATH="$NPM_PACKAGES/bin:$PATH"
    export NODE_PATH="/usr/local/lib/node:/usr/local/lib/node_modules"
    export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
    # Adding ~/GoogleDrive/SHARED/bin
    export PATH="$HOME/GoogleDrive/SHARED/bin:$PATH"
    # Adding /usr/local/sbin
    export PATH="/usr/local/sbin:$PATH"
    # Adding /usr/local/bin
    export PATH="/usr/local/bin:$PATH"
    # Adding Anaconda path.
    export PATH="/Users/jameshu/anaconda3/bin:$PATH"
    # Adding my bin path
    export PATH="~/jdotfiles/bin:$PATH"

  # Enable colored terminal for Mac OSX
  export CLICOLOR=1
  export LSCOLORS=GxFxCxDxBxegedabagaced
  export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

  # VirtualEnvWrapper Setup
  export WORKON_HOME="$HOME/GoogleDrive/DEV/.virtualenvs"
  if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
      source /usr/local/bin/virtualenvwrapper.sh
  fi

fi

# PALETTE="#070736364242:#D3D301010202:#858599990000:#B5B589890000:#26268B8BD2D2:#D3D336368282:#2A2AA1A19898:#EEEEE8E8D5D5:#00002B2B3636:#CBCB4B4B1616:#58586E6E7575:#65657B7B8383:#838394949696:#6C6C7171C4C4:#9393A1A1A1A1:#FDFDF6F6E3E3"
# BG_COLOR="#00002B2B3636"
# FG_COLOR="#65657B7B8383"
#
# gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_background" --type bool false
# gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_theme_colors" --type bool false
# gconftool-2 --set "/apps/gnome-terminal/profiles/Default/palette" --type string "$PALETTE"
# gconftool-2 --set "/apps/gnome-terminal/profiles/Default/background_color" --type string "$BG_COLOR"
# gconftool-2 --set "/apps/gnome-terminal/profiles/Default/foreground_color" --type string "$FG_COLOR"

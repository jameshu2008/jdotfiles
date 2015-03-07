# Personal .bash_aliases, no work-related stuff in here.

# Critical
  alias mv='mv -i'
  alias rm='rm -ir'
  alias rmr='rm -ir'

# Mine
  # Quick Access & Actions
  alias shared='gds'

  alias notes='gdsnotes'
  alias takenote='gdsnotes && vim'
  alias dotfiles='gdsdotfiles'
  alias bin='gdsbin'
  alias sandbox='gdssandbox'
  alias queries='gdqueries'
  alias script='gdscript'

  alias chmodgd='chmod -R 770 $gdoutput $gdscript'
  alias chmodcns='fileutil chmod -R 770 $cns'

  # Print some critial environment variables
  alias printpath='echo $PATH'
  alias printterm='echo $TERM'
  alias printshell='echo $SHELL'

  # Homebrew
  # alias brewdoctor='brew update && brew doctor'
  # Productivity
  alias hgrep='history | grep'

# General Commands
alias c='clear'
alias diff='colordiff'
alias h='history'
alias hgrep='history | grep'
alias vbashrc='vim ~/.bashrc'
alias vbasha='vim ~/GoogleDrive/SHARED/dotfiles/.bash_aliases'
alias vbashv='vim ~/GoogleDrive/SHARED/dotfiles/.bash_variables'
alias vbashp='vim ~/GoogleDrive/SHARED/dotfiles/.bash_profile'
alias vtmx='vim ~/GoogleDrive/SHARED/dotfiles/.tmux.conf'
alias j='jobs -l'
alias mkdir='mkdir -pv'
alias mount='mount |column -t'
alias path='echo -e ${PATH//:/\\n}'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'
alias ports='netstat -tulanp'
alias rcb='R CMD BATCH'
# alias top='atop'
alias wget='wget -c'

# Navigational
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../../'

alias gds='cd "$gds" && ll'
alias gdsbin='cd "$gdsbin" && ll'
alias gdsdotfiles='cd "$gdsdotfiles" && ll'
alias gdsnotes='cd "$gdsnotes" && ll'
alias gdsproject='cd "$gdsproject" && ll'
alias gdssandbox='cd "$gdssandbox" && ll'

# GREP
alias grep='grep'
alias egrep='grep'
alias fgrep='fgrep'

# Listing
alias ls='ls -G'
alias ll='ls -laG'
alias l.='ls -dG .*'

# SU (access)
alias su='sudo -i'
alias root='sudo -i'

# UPDATE (Debian Linux Server)
# alias update='sudo apt-get update && sudo apt-get upgrade'

# VIM
if [[ "$OSTYPE" == "darwin"* ]]; then
    # alias mvim="reattach-to-user-namespace mvim -v" # CRITICAL, tmux stuff
    # alias vi="reattach-to-user-namespace mvim -v" # CRITICAL, tmux stuff
    # alias vim="reattach-to-user-namespace mvim -v" # CRITICAL, tmux stuff
    alias mvim="mvim -v" # CRITICAL
    alias vi="mvim -v" # CRITICAL
    alias vim="mvim -v" # CRITICAL


    alias vimb='cd ~/.vim/bundle'
    alias vimruntime='cd /usr/local/Cellar/macvim/7.4-73_1/MacVim.app/Contents/Resources/vim/runtime'

    alias vvimrc='vim ~/.vimrc'
else
    alias vimb='cd ~/.vim/bundle'

    alias vvimrc='vim ~/.vimrc'
fi

# Power Related
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

# Time
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%y"'

# System (info)
alias meminfo='free -m -l -t'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias cpuinfo='lscpu'
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

# this one saved by butt so many times ##
# alias ff4='/opt/firefox4/firefox'
# alias ff13='/opt/firefox13/firefox'
# alias chrome='/opt/google/chrome/chrome'
# alias opera='/opt/opera/opera'
# alias ff=ff13
# alias browser=chrome

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

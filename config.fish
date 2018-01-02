# prasanna's fish shell config

# ##############################

switch (uname)
case Darwin
  set --export EDITOR mvim
case Linux
  set --export EDITOR gvim
case '*'
  set --export EDITOR vim
end

# ##############################

# no welcome message
set fish_greeting

# ##############################

### $PATH

set PATH /usr/local/bin ~/bin $PATH

switch (uname)
case Darwin
  set PATH (brew --prefix coreutils)"/libexec/gnubin" $PATH
  set PATH (brew --prefix coreutils)"/libexec/gnuman" $PATH
end

# ##############################

## chruby
# (installed via chruby-fish. I think it makes loading fish terminal session slow.
# find and fix it.)
source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish

# ##############################

### Aliases

alias ll='ls -llh --group-directories-first'
alias lla='ls -llh --group-directories-first -a'
alias la='ls --group-directories-first -ACF'
alias l='ls --group-directories-first -CF'
alias ..='cd ..; and l'
alias ...='cd ../..; and l'
alias ....='cd ../../..; and l'
alias rm='rm -i'
alias cd-='cd -'
alias netstats="netstat -nlpt | grep "
alias murder="echo 'cmd: kill -9 '; and kill -9 "
alias rmrf="echo 'cmd: rm -rf'; and rm -rf "
alias g="git "

# size commands
alias size="echo 'dush - current dir size'; and
            echo 'dirszsort - sort dir contents by size'; and
            echo 'disksz - disk size'"
alias dush="echo 'cmd: du -sh'; and du -sh"
alias disksz="echo 'cmd: df -h'; and df -h"
alias dirszsort="echo 'cmd: du -sh * | sort -k1,1rn | head'; and 
du -sh * | sort -k1,1rn | head"

# ruby
alias be="bundle exec "
alias r="bundle exec rails"
alias serve="echo 'ruby -run -e httpd . -p 3000'; and ruby -run -e httpd . -p 3000"

# git
alias gs="git status"
alias gf="git flow"
alias gdf="git diff "
alias gdfc="git diff --cached "

# tarsnap
alias tshelp="echo 'TARSNAP aliases:'; and\
          echo '================'; and\
          echo 'tslist   - list the archived backups'; and\
          echo 'tsstats - stats and size of all backups'; and\
          echo 'tsbackup - backup files in /opt/backup_here'; and\
          echo 'tsrestore - restore any of the archives'; and\
          echo 'tsdelete - delete a backup archive from cloud'; and\
          echo 'tsdryrun - find how much size the compressed backup of a folder would be if we create a backup'"
alias tslist='sudo tarsnap --list-archives | sort'
alias tsstats='sudo tarsnap --print-stats -f "*"'
alias tsbackup='sudo /root/tarsnap-backup.sh'
alias tsrestore='sudo tarsnap -x -f '
alias tsdelete='sudo tarsnap -d -f '
alias tsdryrun='sudo tarsnap --dry-run -v --no-default-config --print-stats --humanize-numbers -c '

# directories
alias desk="cd ~/Desktop; and clear; and l"
alias pub="cd ~/Public; and clear; and l"
alias doc="cd ~/Documents; and clear; and l"
alias dld="cd ~/Downloads; and clear; and l"

# directories - code
alias src="cd ~/src; and clear; and l"
alias srcwork="cd ~/src/work; and clear; and l"
alias srcself="cd ~/src/self; and clear; and l"
alias srcproj="cd ~/src/self/projects; and clear; and l"

# directories - *.npras.in sites
alias npsites="cd ~/src/self/sites/npras.in.sites; and clear; and l"
alias np="cd ~/src/self/sites/npras.in.codes/npras.in; and clear; and l"
alias nptech="cd ~/src/self/sites/npras.in.codes/tech.npras.in; and clear; and l"
alias npbooks="cd ~/src/self/sites/npras.in.codes/books.npras.in; and clear; and l"
alias npdiary="cd ~/src/self/sites/npras.in.codes/diary.npras.in; and clear; and l"

# directories - Dotfiles
alias dot='cd ~/.dotfiles; and clear; and l'
alias dvim='cd ~/.dotfiles/dotvim; and clear; and l'
alias dbash='cd ~/.dotfiles/dotbash; and clear; and l'
alias dfish='cd ~/.dotfiles/fish; and clear; and l'

# directories - Dropbox
alias drop="cd ~/Dropbox; and clear; and l"

# ##############################

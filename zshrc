ZSH=$HOME/.oh-my-zsh

ZSH_THEME="pure"
#ZSH_THEME="lambda-mod"
#{{{ ZSH Modules

autoload -U compinit promptinit zcalc zsh-mime-setup
compinit
promptinit
zsh-mime-setup
prompt pure

#}}}

#{{{ Options

# why would you type 'cd dir' if you could just type 'dir'?
setopt AUTO_CD

# Now we can pipe to multiple outputs!
setopt MULTIOS

# Spell check commands!  (Sometimes annoying)
setopt CORRECT

# This makes cd=pushd
setopt AUTO_PUSHD

# This will use named dirs when possible
setopt AUTO_NAME_DIRS

# If we have a glob this will expand it
setopt GLOB_COMPLETE
setopt PUSHD_MINUS

# No more annoying pushd messages...
# setopt PUSHD_SILENT

# blank pushd goes to home
setopt PUSHD_TO_HOME

# this will ignore multiple directories for the stack.  Useful?  I dunno.
setopt PUSHD_IGNORE_DUPS

# 10 second wait if you do something that will delete everything.  I wish I'd had this before...
setopt RM_STAR_WAIT

# use magic (this is default, but it can't hurt!)
setopt ZLE

setopt NO_HUP

setopt VI

# only fools wouldn't do this ;-)
export EDITOR="vi"
export NVIM_TUI_ENABLE_TRUE_COLOR=1

# Segment AWS
export AWS_DEFAULT_REGION=us-west-2

setopt IGNORE_EOF

# If I could disable Ctrl-s completely I would!
setopt NO_FLOW_CONTROL

# beeps are annoying
setopt NO_BEEP

# Keep echo "station" > station from clobbering station
setopt NO_CLOBBER

# Case insensitive globbing
setopt NO_CASE_GLOB

# Be Reasonable!
setopt NUMERIC_GLOB_SORT

# I don't know why I never set this before.
setopt EXTENDED_GLOB

# hows about arrays be awesome?  (that is, frew${cool}frew has frew surrounding all the variables, not just first and last
setopt RC_EXPAND_PARAM

#}}}

alias simulator='xcrun instruments -w "iPhone 6 (8.1 Simulator)"'

#Aliases
##ls, the common ones I use a lot shortened for rapid fire usage
alias drop='rake db:drop && rake db:create && rake db:migrate && rails c'
qkill_func() {
    kill $(ps | grep $1 | awk {'print $1'})
}
alias qkill=qkill_func
alias fuckyobranches='git branch | grep -v "master" | xargs git branch -D'
#alias json="jq '.'"
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias vi='nvim'
alias vim='nvim'
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias googlechrome='open -a Google\ Chrome'

## alias for opening files with marked
marked () {
  open -a marked\ 2.app $1
}

## Reload
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"

alias proxy='open -a /Applications/Google\ Chrome.app --args --proxy-server="127.0.0.1:8888"'
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
 DISABLE_AUTO_UPDATE="false"

# Uncomment following line if you want to disable colors in ls
 DISABLE_LS_COLORS="false"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git brew vi-mode)
plugins=(autojump zsh-syntax-highlighting)
#{{{ Shell Conveniences

alias sz='source ~/.zshrc'
alias ez='vim ~/.zshrc'
alias mk=popd
alias ls='pwd; ls --color=auto'

#}}}

#{{{ SSH

# Set CLICOLOR if you want Ansi Colors in iTerm2
#export CLICOLOR=1
#}}}

# copy with a progress bar.
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"

source $ZSH/oh-my-zsh.sh

bindkey "\e\e[D" backward-word # alt + <-
bindkey "\e\e[C" forward-word # alt + ->

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# Customize to your needs...
# export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin
export PATH=/opt/local/bin:/usr/local/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:/usr/local/go/bin:$PATH

# Node modules
#export TERM=xterm-256color
export NODE_PATH=/usr/local/bin

function chpwd() {
    emulate -L zsh
    ls -a
}

# Vim in terminal
# ESC to quit
# bindkey -v

# Remove annoying lag from ESC
# export KEYTIMEOUT=1

PATH=$PATH:$HOME/Library/Haskell/bin
PATH=$PATH:$HOME/bin

export GOBIN=$HOME/go/bin
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOBIN
#export GOPATH=$HOME/go
#export GOROOT=/usr/local/opt/go/libexec
#export PATH=$PATH:$GOBIN:$GOPATH/bin
#export PATH=$PATH:$GOROOT/bin

 [[ -s `brew --prefix`/etc/autojump.zsh ]] && . `brew --prefix`/etc/autojump.zsh
autoload -U compinit && compinit -u

# Man now pipes to vim
export MANPAGER="col -b | vim -MR - "


NPM_PACKAGES="/Users/johnbauer/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

export ANDROID_HOME=/usr/local/opt/android-sdk

setopt nocdablevars
hash -rd

source ~/.nvm/nvm.sh

NPM_PACKAGES="/Users/johnbauer/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# docker defaults
#export DOCKER_HOST=tcp://192.168.99.100:2376
#export DOCKER_CERT_PATH=$HOME/.docker/machine/certs
#export DOCKER_TLS_VERIFY=1

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

BULLETTRAIN_RUBY_SHOW=false
BULLETTRAIN_NVM_SHOW=true

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

# ruby

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source /Users/johnbauer/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dev/src/github.com/segmentio/dotfiles/index.sh



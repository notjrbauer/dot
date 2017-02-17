ZSH=$HOME/.oh-my-zsh

ZSH_THEME="pure"
#ZSH_THEME="lambda-mod"
#{{{ ZSH Modules

autoload -U compinit promptinit zcalc zsh-mime-setup

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
export EDITOR="nvim"

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


qkill_func() {
    kill $(ps | grep $1 | awk {'print $1'})
}
#Aliases
alias qkill=qkill_func
alias simulator='xcrun instruments -w "iPhone 6 (8.1 Simulator)"'
alias drop='rake db:drop && rake db:create && rake db:migrate && rails c'
alias fuckyobranches='git branch | grep -v "master" | xargs git branch -D'

alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable

alias vi='nvim'
alias vim='nvim'

alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"

alias googlechrome='open -a Google\ Chrome'

alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias sz='source ~/.zshrc'
alias ez='vim ~/.zshrc'
alias mk=popd

# copy with a progress bar.
alias cpv="rsync -poghb --backup-dir=/tmp/rsync -e /dev/null --progress --"

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
plugins=(autojump history vi-mode zsh-syntax-highlighting)
#{{{ Shell Conveniences

source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit -u
bindkey "\e\e[D" backward-word # alt + <-
bindkey "\e\e[C" forward-word # alt + ->
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

export CLICOLOR=1
export KEYTIMEOUT=30 # Remove annoying lag from ESC
export HIST_STAMPS="yyyy-mm-dd" # Set schema for parsing time stamps
setopt hist_ignore_dups

# Customize to your needs...
export PATH=/opt/local/bin:/usr/local/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share/npm/bin:/usr/local/go/bin:$PATH

# Node modules
export NODE_PATH=/usr/local/bin

PATH=$PATH:$HOME/bin
export GOPATH=$HOME/dev
export GOROOT=/usr/local/go
export PATH=$GOPATH/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Man now pipes to vim
export MANPAGER="col -b | vim -MR - "

function cover () {
  t="/tmp/go-cover.$$.tmp"
  godep go test -coverprofile=$t $@ && go tool cover -html=$t && unlink $t
}

# Vim in terminal
# ESC to quit
bindkey -v

precmd() { RPROMPT="" }
function zle-line-init zle-keymap-select {
   VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
   RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
   zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
bindkey -M viins 'jj' vi-cmd-mode

# Node
NPM_PACKAGES="/Users/johnbauer/.npm-packages"
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH  # delete if you already modified MANPATH elsewhere in your config
MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

setopt nocdablevars
hash -rd

BULLETTRAIN_RUBY_SHOW=false
BULLETTRAIN_NVM_SHOW=true


source ~/.nvm/nvm.sh

# goenv version manager
if which goenv > /dev/null; then eval "$(goenv init -)"; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

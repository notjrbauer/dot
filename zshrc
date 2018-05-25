#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

export PATH=$PATH:$HOME/bin
export GOPATH=$HOME/cf-repos
PATH=$PATH:$GOPATH/bin:/usr/local/bin:$PATH
# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
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
alias cat='ccat'
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"


bindkey -M viins 'jj' vi-cmd-mode
bindkey "\e\e[D" backward-word # alt + <-
bindkey "\e\e[C" forward-word # alt + ->
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line




export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
export PAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
export CLICOLOR=1
export KEYTIMEOUT=30 # Remove annoying lag from ESC
export HIST_STAMPS="yyyy-mm-dd" # Set schema for parsing time stamps
setopt hist_ignore_dups
unsetopt CORRECT

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

zle -N zle-line-init
zle -N zle-keymap-select
bindkey -M viins 'jj' vi-cmd-mode

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source $HOME/.cargo/env

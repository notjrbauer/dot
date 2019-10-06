#zmodload zsh/zprof
#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

PATH=$PATH:$HOME/bin:$HOME/.bin:$HOME/.npm-packages/bin
export GOPATH=$HOME/cf-repos
export GOROOT="$(brew --prefix golang)/libexec"
#export GOBIN=$GOPATH/bin
export PATH=$PATH:${GOPATH}/bin:${GOROOT}/bin:/usr/local/bin:/usr/local/sbin:$PATH
#fpath=(~/.zsh/completion $fpath)
export GO111MODULE=

# Use vi mode
bindkey -v

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
#fpath=(/usr/local/share/zsh-completions $fpath)

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

source ~/.zplug/init.zsh
zplug "b4b4r07/zsh-vimode-visual", use:"*.zsh", defer:3
zplug "zsh-users/zsh-completions"
#zplug "zsh-users/zsh-history-substring-search", defer:3
zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "glidenote/hub-zsh-completion"
zplug 'Valodim/zsh-curl-completion'
zplug "changyuheng/fz", defer:1
zplug "plugins/autojump", from:oh-my-zsh #needs to be installed via homebrew
#zplug "rupa/z", use:z.sh
zplug "docker/compose", use:contrib/completion/zsh
zplug "docker/docker", use:contrib/completion/zsh

# Install plugins if there are plugins that have not been installed
#if ! zplug check --verbose; then
#    printf "Install? [y/N]: "
#    if read -q; then
#        echo; zplug install
#    fi
#fi

# Then, source plugins and add commands to $PATH
zplug load

#alias j=z
alias dk='docker'
alias dc='docker-compose'
alias ctags="`brew --prefix`/bin/ctags"

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
alias cat='bat'
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"


bindkey -M viins 'jj' vi-cmd-mode
bindkey "\e\e[D" backward-word # alt + <-
bindkey "\e\e[C" forward-word # alt + ->
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line




#export MANPAGER="page -C -e 'au User PageDisconnect sleep 100m|%y p|enew! |bd! #|pu p|set ft=man'"
#export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
#export PAGER="page -q 90000"
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
export VISUAL="$EDITOR"

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

### VIM
# ci"
#autoload -U select-quoted
#zle -N select-quoted
#for m in visual viopp; do
#  for c in {a,i}{\',\",\`}; do
#    bindkey -M $m $c select-quoted
#  done
#done

# ci{, ci(
#autoload -U select-bracketed
#zle -N select-bracketed
#for m in visual viopp; do
#  for c in {a,i}${(s..)^:-'()[]{}<>bB'}; do
#    bindkey -M $m $c select-bracketed
#  done
#done

# surround
#autoload -Uz surround
#zle -N delete-surround surround
#zle -N add-surround surround
#zle -N change-surround surround
#bindkey -a cs change-surround
#bindkey -a ds delete-surround
#bindkey -a ys add-surround
#bindkey -M visual S add-surround

zle -N zle-line-init
zle -N zle-keymap-select

bindkey -M viins 'jj' vi-cmd-mode

# Use ~~ as the trigger sequence instead of the default **
export FZF_COMPLETION_TRIGGER='**'

# Options to fzf command
export FZF_COMPLETION_OPTS='+c -x'
export FZF_TMUX=1

export PS_FORMAT="pid,ppid,user,pri,ni,vsz,rss,pcpu,pmem,tty,stat,args"

export FD_OPTIONS="--follow --exclude .git --exclude node_modules --exclude vendor"
export FZF_DEFAULT_OPTS="--no-mouse --height 50% -1 --reverse --multi --inline-info --preview='[[ \$(file --mime-type {}) =~ binary ]] && echo {} is a binary file || (bat --style=numbers --color=always {} || cat {}) 2> /dev/null | head -300' --preview-window='right:hidden:wrap' --bind='f3:execute(bat --style=numbers {} || less -f {}),f2:toggle-preview,ctrl-d:half-page-down,ctrl-u:half-page-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)'"

export FZF_DEFAULT_COMMAND="git ls-files --cached --others --exclude-standard | fd --type f --type l $FD_OPTIONS"
export FZF_CTRL_T_COMMAND="fd $FD_OPTIONS"
export FZF_ALT_C_COMMAND="fd --type d $FD_OPTIONS"
export BAT_PAGER="less -R"
#export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git --exclude node_modules --exclude vendor --color=always'
#export FZF_DEFAULT_OPTS="--ansi"


# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

#export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export JIRA_USERNAME='jbauer'
export JIRA_DEFAULT_PROJECT='BILL'

#eval "$(jira --completion-script-zsh)"
source $HOME/.cargo/env
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias help='tldr'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

 # fe [FUZZY PATTERN] - Open the selected file with the default editor
 #   - Bypass fuzzy finder if there's only one match (--select-1)
 #   - Exit if there's no match (--exit-0)
 fe() {
   local files
   IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
   [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

# fcd [FUZZY PATTERN] - Open the selected folder
# - cd to selected directory
fcd() {
   local dir
   dir=$(fd ${1:-.} --type d 2> /dev/null | fzf +m) &&
   cd "$dir"
}
alias bubu='brew cleanup && brew update && brew upgrade && brew doctor `brew doctor --list-checks | grep -v stray_headers`'

#zprof

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/johnbauer/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/johnbauer/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/johnbauer/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/johnbauer/google-cloud-sdk/completion.zsh.inc'; fi

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"

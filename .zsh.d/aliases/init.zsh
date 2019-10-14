# vim:ft=zsh:

# Useful
alias cp="${aliases[cp]:-cp} -iv"
alias ln="${aliases[ln]:-ln} -iv"
alias mv="${aliases[mv]:-mv} -iv"
alias rm="${aliases[rm]:-rm} -i"
alias mkdir="${aliases[mkdir]:-mkdir} -p"
alias e="${(z)VISUAL:-${(z)EDITOR}}"
alias type='type -a'
alias which='which -a'
alias history='fc -il 1'
(( $+commands[htop] )) && alias top=htop


if (( $+commands[exa] )); then
  alias ll="exa --tree --all --group-directories-first"
elif (( $+commands[tree] )); then
  alias ll="type tree >/dev/null && tree --dirsfirst -a -L 1 || l -d .*/ */ "
else
  alias ll="echo 'You have to install exa or tree'"
fi

# TERMINAL
alias vi='nvim'
alias vim='nvim'
alias cat='bat'
alias reload=". ~/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"
alias fuckyobranches='git branch | grep -v "master" | xargs git branch -D'
alias dk='docker'
alias dc='docker-compose'
alias ctags="`brew --prefix`/bin/ctags"
alias k=kubectl
alias "?"="pwd"
alias c="clear "
alias KABOOM="yarn global upgrade --latest;brew update; brew upgrade; brew cleanup -s; brew doctor"
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes;sudo rm -rfv ~/.Trash"
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias fs="stat -f '%z bytes'"
alias flushdns="sudo killall -HUP mDNSResponder"
if (( $+commands[jq] )) then;
  alias formatJSON='jq .'
else
  alias formatJSON='python -m json.tool'
fi
alias dots="cd $DOTFILES"
alias work='mx lightspeed'
alias play='mx ϟ'
alias cask="brew cask"
alias apache="sudo apachectl "
# alias r="ranger" # overrides built-in r command

[[ $TERM == *"tmux"* ]] && alias :sp='tmux split-window'
[[ $TERM == *"tmux"* ]] && alias :vs='tmux split-window -h'

# Conditional aliases
# https://gist.github.com/sos4nt/3187620#gistcomment-1452131
[[ $TERM == *"tmux"* ]] && alias ssh="TERM=xterm-256color ssh"
[[ $TERM == *"tmux"* ]] && alias vagrant="TERM=xterm-256color vagrant"
[[ $TERM == *"tmux"* ]] && alias brew="TERM=xterm-256color brew"

(( $+commands[emacs] )) && alias emacs="TERM=xterm-256color emacs "
(( $+commands[stow] )) && alias stow='stow --ignore ".DS_Store"'
(( $+commands[bat] )) && alias cat='bat '
(( $+commands[python3] )) && alias server="python3 -m http.server 80"

if (( $+commands[hub] )); then
  alias git=hub
  compdef g=hub
else
  compdef g=git
fi

(( $+commands[yarn] )) && alias y=yarn

[[ -x "/Applications/Alacritty.app/Contents/MacOS/alacritty" ]] && alias alacritty='/Applications/Alacritty.app/Contents/MacOS/alacritty'

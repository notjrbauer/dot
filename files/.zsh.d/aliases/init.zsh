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


if (( $+commands[lsd] )); then
  alias ls="lsd "
  alias ll="lsd --tree --almost-all --group-dirs first "
elif (( $+commands[tree] )); then
  alias ll="type tree >/dev/null && tree --dirsfirst -a -L 1 || l -d .*/ */ "
else
  alias ll="echo 'You have to install lsd or tree'"
fi


# TERMINAL
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

#alias ls='exa'
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable

alias bubu='brew cleanup && brew update && brew upgrade && brew doctor `brew doctor --list-checks | grep -v stray_headers`'
alias dk='docker'
alias dc='docker-compose'
alias vim="nvim"
alias dots="cd $DOTFILES"
alias r="ranger" # overrides built-in r command
alias j='z'
alias vi='nvim'
alias vim='nvim'
alias cat='bat'
alias reload=". ~/.zsh.d/.zshrc && echo 'ZSH config reloaded from ~/.zshrc'"


bindkey -M viins 'jj' vi-cmd-mode
bindkey "\e\e[D" backward-word # alt + <-
bindkey "\e\e[C" forward-word # alt + ->
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

(( $+commands[bat] )) && alias cat='bat '
(( $+commands[python3] )) && alias server="python3 -m http.server 80"
(( $+commands[fd] )) && alias fd='fd --hidden '
(( $+commands[yarn] )) && alias y=yarn

if (( $+commands[hub] )); then
  compdef g=hub
else
  compdef g=git
fi

[[ -x "/Applications/Alacritty.app/Contents/MacOS/alacritty" ]] && alias alacritty='/Applications/Alacritty.app/Contents/MacOS/alacritty'

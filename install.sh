#!/bin/sh
#
# Usage:
#
#    sh install.sh
#
# Environment variables: VERBOSE, CP, LN, MKDIR, RM, DIRNAME, XARGS.
#
#    env VERBOSE=1 sh install.sh
#
# DO NOT EDIT THIS FILE
# 
# This file is generated by rcm(7) as:
#
#   rcup -B 0 -g
#
# To update it, re-run the above command.
#
: ${VERBOSE:=0}
: ${CP:=/bin/cp}
: ${LN:=/bin/ln}
: ${MKDIR:=/bin/mkdir}
: ${RM:=/bin/rm}
: ${DIRNAME:=/usr/bin/dirname}
: ${XARGS:=/usr/bin/xargs}
verbose() {
  if [ "$VERBOSE" -gt 0 ]; then
    echo "$@"
  fi
}
handle_file_cp() {
  if [ -e "$2" ]; then
    printf "%s " "overwrite $2? [yN]"
    read overwrite
    case "$overwrite" in
      y)
        $RM -rf "$2"
        ;;
      *)
        echo "skipping $2"
        return
        ;;
    esac
  fi
  verbose "'$1' -> '$2'"
  $DIRNAME "$2" | $XARGS $MKDIR -p
  $CP -R "$1" "$2"
}
handle_file_ln() {
  if [ -e "$2" ]; then
    printf "%s " "overwrite $2? [yN]"
    read overwrite
    case "$overwrite" in
      y)
        $RM -rf "$2"
        ;;
      *)
        echo "skipping $2"
        return
        ;;
    esac
  fi
  verbose "'$1' -> '$2'"
  $DIRNAME "$2" | $XARGS $MKDIR -p
  $LN -sf "$1" "$2"
}
handle_file_ln "/Users/johnbauer/.dotfiles/README.md" "/Users/johnbauer/.README.md"
handle_file_ln "/Users/johnbauer/.dotfiles/bin/diff-highlight" "/Users/johnbauer/.bin/diff-highlight"
handle_file_ln "/Users/johnbauer/.dotfiles/bin/diff-so-fancy" "/Users/johnbauer/.bin/diff-so-fancy"
handle_file_ln "/Users/johnbauer/.dotfiles/bin/module" "/Users/johnbauer/.bin/module"
handle_file_ln "/Users/johnbauer/.dotfiles/bin/npms" "/Users/johnbauer/.bin/npms"
handle_file_ln "/Users/johnbauer/.dotfiles/bin/osx.sh" "/Users/johnbauer/.bin/osx.sh"
handle_file_ln "/Users/johnbauer/.dotfiles/bin/psgrep" "/Users/johnbauer/.bin/psgrep"
handle_file_ln "/Users/johnbauer/.dotfiles/config/font/Meslo LG S Regular for Powerline.otf" "/Users/johnbauer/.config/font/Meslo LG S Regular for Powerline.otf"
handle_file_ln "/Users/johnbauer/.dotfiles/config/nvim/init.vim" "/Users/johnbauer/.config/nvim/init.vim"
handle_file_ln "/Users/johnbauer/.dotfiles/config/themes/color-profile.md" "/Users/johnbauer/.config/themes/color-profile.md"
handle_file_ln "/Users/johnbauer/.dotfiles/config/themes/lambda-mod.zsh-theme" "/Users/johnbauer/.config/themes/lambda-mod.zsh-theme"
handle_file_ln "/Users/johnbauer/.dotfiles/config/themes/mikes-color-profile.icc" "/Users/johnbauer/.config/themes/mikes-color-profile.icc"
handle_file_ln "/Users/johnbauer/.dotfiles/config/themes/mine.itermcolors" "/Users/johnbauer/.config/themes/mine.itermcolors"
handle_file_ln "/Users/johnbauer/.dotfiles/gitconfig" "/Users/johnbauer/.gitconfig"
handle_file_ln "/Users/johnbauer/.dotfiles/install.sh" "/Users/johnbauer/.install.sh"
handle_file_ln "/Users/johnbauer/.dotfiles/mjolnir/init.lua" "/Users/johnbauer/.mjolnir/init.lua"
handle_file_ln "/Users/johnbauer/.dotfiles/tern-config" "/Users/johnbauer/.tern-config"
handle_file_ln "/Users/johnbauer/.dotfiles/tern-project" "/Users/johnbauer/.tern-project"
handle_file_ln "/Users/johnbauer/.dotfiles/tmux.conf" "/Users/johnbauer/.tmux.conf"
handle_file_ln "/Users/johnbauer/.dotfiles/vim_runtime/my_configs.vim" "/Users/johnbauer/.vim_runtime/my_configs.vim"
handle_file_ln "/Users/johnbauer/.dotfiles/vimrc" "/Users/johnbauer/.vimrc"
handle_file_ln "/Users/johnbauer/.dotfiles/zshrc" "/Users/johnbauer/.zshrc"
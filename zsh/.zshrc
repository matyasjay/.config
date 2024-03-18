#!/usr/bin/env bash
# 🅳🅾🆃🅵🅸🅻🅴🆂 (v0.2.468) - <https://dotfiles.io>
# Made with ♥ in London, UK by @sebastienrousseau
# Copyright (c) 2015-2024. All rights reserved
# License: MIT

HOSTNAME=$(hostname -f)                 # hostname of the machine.
INPUTRC=${HOME}/.inputrc                # set INPUTRC (so that .inputrc is respected)
OS_ARCH=$(uname -m)                     # machine hardware name.
OS_NAME=$(uname)                        # operating system name.
OS_VERSION=$(uname -r)                  # operating system version number.
SSL_CERT_FILE=${HOME}/cacert.pem        # set the SSL_CERT_FILE environment variable.
USER_LANGUAGE="en_GB.UTF-8"             # default language.
USER=$(whoami)                          # current user name.

export ARCHFLAGS="-arch ${OS_ARCH}"     # archflags for the current machine.
export DOTFILES_VERSION='0.2.468'       # version of the dotfiles.
export DOTFILES="${HOME}"/.dotfiles/lib # path to the cross plaform dotfiles.
export HOSTNAME=${HOSTNAME}             # hostname of the machine.
export INPUTRC=${INPUTRC}               # set INPUTRC (so that .inputrc is respected)
export LANG=${USER_LANGUAGE}            # default language.
export LANGUAGE=${USER_LANGUAGE}        # default language.
export LC_ALL=${USER_LANGUAGE}          # default language.
export LC_CTYPE=${USER_LANGUAGE}        # default language.
export OS_ARCH                          # machine hardware name.
export OS_NAME                          # operating system name.
export OS_VERSION                       # operating system version number.
export SSL_CERT_FILE=${SSL_CERT_FILE}   # set the SSL_CERT_FILE environment variable.
export TERM=xterm-256color              # default terminal color.
export USER                             # current user name.

## 🅻🅾🅰🅳🅴🆁🆂 - Load the dotfiles.
for loaders in "${DOTFILES}"/*.sh; do
  # shellcheck source=/dev/null
  . "${loaders}"
done

typeset -aU path

autoload -Uz compinit
compinit

autoload -Uz colors && colors
unsetopt correct_all

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="cloud"

plugins=(
  git
  brew
  colorize
  colored-man-pages
  zsh-autosuggestions
  zsh-syntax-highlighting
)

alias ip="ipconfig getifaddr en0"
alias zshsource="source ~/.zshrc"
alias ohmyzsh="cd ~/.oh-my-zsh"
alias sshhome="cd ~/.ssh"
alias sshconfig="nvim ~/.ssh/config"
alias gitconfig="nvim ~/.gitconfig"

alias tma="tmux attach"
alias tml="tmux ls"
alias tmn="tmux new"

alias gits="git status"
alias gitd="git diff"
alias gitl="git lg"
alias gita="git add ."

source /opt/homebrew/opt/nvm/nvm.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export GPG_TTY=$(tty)

export PNPM_HOME="/Users/amatyas/Library/pnpm"

case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

VIM="nvim"

alias vim="nvim"
alias vi="nvim"

export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
--color=fg:#c0caf5,bg:#1a1b26,hl:#ff9e64 \
--color=fg+:#c0caf5,bg+:#292e42,hl+:#ff9e64 \
--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff \
--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a"

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="Gozilla"

plugins=(
  git
  brew
  colorize
  colored-man-pages
)

HOSTNAME=$(hostname -f)
INPUTRC=${HOME}/.inputrc
OS_ARCH=$(uname -m)
OS_NAME=$(uname)
SSL_CERT_FILE=${HOME}/cacert.pem
USER_LANGUAGE="en_GB.UTF-8"
USER=$(whoami)
VIM="~/Downloads/nvim-macos-arm64/bin/nvim"

export ARCHFLAGS="-arch ${OS_ARCH}"
export DOTFILES_VERSION='0.2.468'
export DOTFILES="${HOME}"/.dotfiles/lib
export HOSTNAME=${HOSTNAME}
export INPUTRC=${INPUTRC}
export LANG=${USER_LANGUAGE}
export LANGUAGE=${USER_LANGUAGE}
export LC_ALL=${USER_LANGUAGE}
export LC_CTYPE=${USER_LANGUAGE}
export OS_ARCH
export OS_NAME
export OS_VERSION
export SSL_CERT_FILE=${SSL_CERT_FILE}
export USER

for loaders in "${DOTFILES}"/*.sh; do
  . "${loaders}"
done

source $ZSH/oh-my-zsh.sh

typeset -aU path

autoload -Uz compinit && compinit
autoload -Uz colors && colors

alias vim=$VIM
alias vi=$VIM

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

alias pgstop="sudo -u postgres pg_ctl -D /Library/PostgreSQL/16/data stop"
alias pgstart="sudo -u postgres pg_ctl -D /Library/PostgreSQL/16/data start"

source /opt/homebrew/opt/nvm/nvm.sh

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"

export GPG_TTY=$(tty)

 export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
 --color=fg:#c0caf5,bg:#1a1b26,hl:#D183E8 \
 --color=fg+:#c0caf5,bg+:#292e42,hl+:#D183E8 \
 --color=info:#666666,prompt:#1a1b26,pointer:#444444 \
 --color=marker:#D183E8,spinner:#D183E8,header:#D183E8"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=$PATH:~/.local/share/rojo

export PNPM_HOME="/Users/amatyas/Library/pnpm"

case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

COREPACK_ENABLE_AUTO_PIN=0
corepack enable > /dev/null 2>&1

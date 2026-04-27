export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME="$HOME/.config"

ZSH_THEME="Gozilla"

plugins=(
  git
  brew
  colorize
  colored-man-pages
)

# Core environment
export USER_LANGUAGE="en_GB.UTF-8"
export LANG="$USER_LANGUAGE"
export LANGUAGE="$USER_LANGUAGE"
export LC_ALL="$USER_LANGUAGE"
export LC_CTYPE="$USER_LANGUAGE"

export SSL_CERT_FILE="$HOME/cacert.pem"
export INPUTRC="$HOME/.inputrc"

# Static values
export OS_ARCH="$(uname -m)"
export OS_NAME="$(uname)"
export ARCHFLAGS="-arch $OS_ARCH"

export PNPM_HOME="$HOME/Library/pnpm"
export NVM_DIR="$HOME/.nvm"

# PATH setup 
typeset -aU path
export PATH="/opt/homebrew/bin:$HOME/.local/bin:$HOME/.local/share/rojo:/Users/amatyas/Downloads/worldbanc/private/bin:$PNPM_HOME:$HOME/go/bin:$PATH"

source "$ZSH/oh-my-zsh.sh"

autoload -Uz colors
colors

unset VIM

# Aliases
alias vim="nvim"
alias vi="nvim"

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

alias ls="eza --color=always --long --git --icons=never --group-directories-first"
alias python="python3"

:q() { exit }

extract() {
  if [ -f "$1" ]; then
    case "$1" in
      *.tar.bz2) tar xjf "$1" ;;
      *.tar.gz)  tar xzf "$1" ;;
      *.bz2)     bunzip2 "$1" ;;
      *.rar)     unrar x "$1" ;;
      *.gz)      gunzip "$1" ;;
      *.tar)     tar xf "$1" ;;
      *.tbz2)    tar xjf "$1" ;;
      *.tgz)     tar xzf "$1" ;;
      *.zip)     unzip "$1" ;;
      *.7z)      7z x "$1" ;;
      *.xz)      unxz "$1" ;;
      *) echo "cannot extract '$1'" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

stopwatch() {
  local start=$(date +%s)
  read -r "?Press Enter to stop..."
  local end=$(date +%s)
  echo "$((end - start))s"
}

size() {
  du -sh "$@"
}

curlstatus() {
  curl -o /dev/null -s -w "%{http_code}\n" "$1"
}

curltime() {
  curl -o /dev/null -s -w "time_namelookup:  %{time_namelookup}\ntime_connect:     %{time_connect}\ntime_appconnect:  %{time_appconnect}\ntime_pretransfer: %{time_pretransfer}\ntime_redirect:    %{time_redirect}\ntime_starttransfer:%{time_starttransfer}\n----------\ntime_total:       %{time_total}\n" "$1"
}

whoisport() {
  lsof -nP -iTCP:"$1" -sTCP:LISTEN
}

killport() {
  local pid
  pid=$(lsof -tiTCP:"$1" -sTCP:LISTEN)
  [ -n "$pid" ] && kill "$pid"
}

killport9() {
  local pid
  pid=$(lsof -tiTCP:"$1" -sTCP:LISTEN)
  [ -n "$pid" ] && kill -9 "$pid"
}

export GPG_TTY="$(tty)"

# FZF
[ -f "$HOME/.config/fzf/env.sh" ] && source "$HOME/.config/fzf/env.sh"
[ -f "$HOME/.config/fzf/zsh.sh" ] && source "$HOME/.config/fzf/zsh.sh"


source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[ -f "$HOME/.local/bin/env" ] && . "$HOME/.local/bin/env"

[ -s ~/.luaver/luaver ] && . ~/.luaver/luaver

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/amatyas/.juliaup/bin' $path)
export PATH
# Tab completion for juliaup and julia channel selection
[ -f "/Users/amatyas/.julia/juliaup/completions/zsh.zsh" ] && source "/Users/amatyas/.julia/juliaup/completions/zsh.zsh"

# <<< juliaup initialize <<<

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/amatyas/.opam/opam-init/init.zsh' ]] || source '/Users/amatyas/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration

# NVM
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
nvm use default >/dev/null 2>&1

export FZF_DEFAULT_COMMAND='fd --hidden --strip-cwd-prefix --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() {
  fd --hidden --follow --color=never --exclude .git . "$1"
}

_fzf_compgen_dir() {
  fd --type=d --hidden --follow --color=never --exclude .git . "$1"
}

# Repository Instructions

This is a macOS-local dotfiles/config repository rooted at `~/.config`. Treat it as live user configuration, not an application repo.

## Scope

These instructions apply to the whole repository.

Use the repo-local skills when the task matches:

- `skills/edit-neovim-config`: Neovim Lua config under `nvim/`.
- `skills/edit-terminal-config`: zsh, fzf, tmux, k9s, pgcli, act, fish, git ignore, and other small CLI configs.

## Working Rules

- Check `git status --short --branch` before editing. The worktree may contain staged user changes; preserve them and do not restage or unstage anything unless asked.
- Prefer `git ls-files` or `rg --files` with explicit excludes over broad filesystem scans. Many ignored directories contain app state, logs, vendored plugins, or private data.
- Do not edit generated, vendored, or runtime state unless the user explicitly asks. This includes `nvim/pack/github/start/copilot.vim`, `tmux/plugins/`, `tfenv/versions/`, `nvim/undo/`, `.DS_Store`, `pgcli/log`, and app state directories such as `AWS*`, `github-copilot/`, `iterm2/`, `zed/`, and `yarn/`.
- Do not echo, copy, summarize, or add credentials. `bootdev/config.yaml` contains tokens; other ignored app directories may also contain private local state.
- Prefer `$HOME` in new shell snippets over hard-coded `/Users/amatyas` paths. Keep existing absolute paths when changing them would alter behavior.
- Keep changes small and tool-local. Avoid sweeping reformatting of config files.

## Repository Map

- `nvim/`: Neovim config using Lua modules and `lazy.nvim`.
- `zsh/.zshrc`: primary interactive shell configuration with Oh My Zsh, Homebrew, path setup, aliases, helpers, and language managers.
- `tmux/tmux.conf` and `tmux-sessionizer`: tmux keybindings, status styling, TPM plugins, and fzf-based project/session switching.
- `fzf/`: shell integration and shared fzf defaults.
- `k9s/`: k9s config, aliases, and custom transparent skin.
- `pgcli/config`, `act/actrc`, `fish/conf.d/uv.env.fish`, `git/ignore`, `tfenv/version`: small single-tool configs.

## Style

- Lua config files use tabs in the existing code; keep `require(...)` modules small and focused.
- Shell functions use straightforward POSIX-ish shell where possible, but `zsh/.zshrc` may use zsh features such as `typeset -aU path`.
- YAML files are hand-edited config; preserve comments and key order when possible.
- Use ASCII for new docs and config unless the file already uses icons or non-ASCII symbols.

## Validation

Pick the smallest useful check for the files touched:

- Neovim config: `nvim --headless "+qa"` to load the config, when local plugins are installed.
- zsh and fzf shell snippets: `zsh -n zsh/.zshrc` and `zsh -n fzf/zsh.sh`.
- Bash script: `bash -n tmux-sessionizer`.
- tmux config: run a tmux parse/load check only if it will not install or update plugins.
- YAML config: use an available local parser such as Ruby's `YAML.load_file` or the target tool's own config check.
- Skills: `python3 /Users/amatyas/.codex/skills/.system/skill-creator/scripts/quick_validate.py skills/<skill-name>`.

When validation is skipped, state why.

# Local Config

Personal macOS configuration files for terminal tools, Neovim, Kubernetes workflows, and small CLI utilities. This repository is intended to be checked out at `~/.config` and edited in place.

This is live workstation configuration, so treat changes as operational changes rather than application code changes. Prefer small, tool-specific updates and validate only the files you touched.

## What's Here

- `nvim/`: Lua-based Neovim setup using `lazy.nvim`, Mason/LSP, `none-ls`, Telescope, Neo-tree, Harpoon, Fugitive, Tokyonight, and Copilot.
- `zsh/.zshrc`: primary interactive zsh config with Oh My Zsh, Homebrew paths, aliases, helper functions, fzf integration, syntax highlighting, and language managers.
- `tmux/tmux.conf` and `tmux-sessionizer`: tmux bindings, status styling, TPM plugins, and fzf-based project/session switching.
- `fzf/`: shared fzf defaults and shell completion helpers.
- `k9s/`: k9s config, aliases, and custom transparent skin.
- `pgcli/config`, `act/actrc`, `fish/`, `git/ignore`, and `tfenv/version`: smaller single-tool configs.
- `skills/` and `AGENTS.md`: AI-agent guidance for maintaining this repository.

## Working Guidelines

- Check `git status --short --branch` before editing. The worktree may contain staged local changes.
- Avoid broad cleanup or reformatting. Keep edits close to the tool or behavior being changed.
- Do not edit vendored/generated/runtime state unless that is the explicit task. Examples include `nvim/pack/`, `tmux/plugins/`, `tfenv/versions/`, `nvim/undo/`, logs, app caches, and `.DS_Store`.
- Prefer `$HOME` in new shell snippets instead of hard-coded user paths.
- Be careful with private local state. Audit credentials and tokens before sharing, publishing, or copying config values elsewhere.

## Validation

Run the smallest relevant check for the files you changed:

```sh
zsh -n zsh/.zshrc
zsh -n fzf/zsh.sh
bash -n tmux-sessionizer
nvim --headless "+qa"
ruby -e 'require "yaml"; ARGV.each { |path| YAML.load_file(path); puts "ok #{path}" }' k9s/config.yml k9s/custom_skin.yaml
```

For skill changes, use:

```sh
python3 /Users/amatyas/.codex/skills/.system/skill-creator/scripts/quick_validate.py skills/<skill-name>
```

If a check cannot run because a local dependency is missing, note that in the change summary.

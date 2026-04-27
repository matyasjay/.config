---
name: edit-terminal-config
description: Maintain this repository's terminal and CLI configuration. Use when editing `zsh/.zshrc`, `fzf/`, `tmux/tmux.conf`, `tmux-sessionizer`, `fish/`, `k9s/`, `pgcli/config`, `act/actrc`, `git/ignore`, `tfenv/version`, or other small shell/tool config files.
---

# Edit Terminal Config

## Overview

Use this skill to change shell, tmux, fzf, k9s, pgcli, and small CLI configs without disturbing live local state. These files are personal workstation config, so prefer guarded, reversible edits.

## Layout

- `zsh/.zshrc` is the main zsh config: Oh My Zsh setup, locale/certs, path, aliases, helper functions, fzf, syntax highlighting, Julia, Ruby, opam, and nvm.
- `fzf/env.sh` owns `FZF_DEFAULT_OPTS` and popup/preview styling. `fzf/zsh.sh` owns fd-backed fzf completion commands.
- `tmux/tmux.conf` owns tmux keybindings, status styling, terminal behavior, and TPM plugins. `tmux-sessionizer` is the fzf-based project/session switcher.
- `k9s/` contains both app-written and hand-edited config variants, aliases, and a transparent Rose Pine style skin.
- `pgcli/config`, `act/actrc`, `fish/conf.d/uv.env.fish`, `git/ignore`, and `tfenv/version` are single-tool config files.

## Editing Workflow

1. Check the target file and adjacent config before editing. Do not scan ignored app-state directories unless the task explicitly requires it.
2. Preserve ordering where it carries startup meaning: exports before sourcing, `PATH` setup before tool init, and tmux plugin declarations before TPM startup.
3. Prefer `$HOME` in new shell code. Keep existing absolute paths when changing them would change behavior.
4. Guard optional sourced files and language managers with file checks, matching existing patterns such as `[ -f ... ] && source ...`.
5. Keep aliases short and predictable. Put reusable logic in functions rather than large aliases.
6. In multiline shell strings such as `FZF_DEFAULT_OPTS`, preserve quoting and indentation carefully.
7. For tmux, preserve the current conventions unless asked otherwise:
   - `C-a` is a secondary prefix.
   - Status is at the top.
   - Mouse is off.
   - TPM plugin setup lives at the end.
8. For k9s, do not collapse `config.yaml` and `config.yml` without checking intent. `config.yml` is more commented and hand-curated; `config.yaml` looks app-written.
9. Do not add passwords, tokens, DSNs, or kube credentials to tracked files. `bootdev/config.yaml` contains tokens; do not print or copy those values.

## Validation

- zsh: `zsh -n zsh/.zshrc`
- fzf shell integration: `zsh -n fzf/zsh.sh`
- bash script: `bash -n tmux-sessionizer`
- tmux: only run a parse/load check if it will not install or update plugins.
- YAML: use a local YAML parser or the target tool's config check when available.
- INI-style pgcli config: inspect with minimal edits; avoid test connections unless the user asks.

Report skipped validation with the reason.

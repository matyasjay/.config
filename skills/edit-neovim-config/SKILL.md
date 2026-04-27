---
name: edit-neovim-config
description: Maintain this repository's Neovim Lua configuration. Use when editing `nvim/init.lua`, `nvim/lua/*.lua`, `nvim/lua/plugins/*.lua`, Neovim keymaps, LSP/Mason setup, completion, formatting, colors/highlights, plugin specs, or `nvim/lazy-lock.json`.
---

# Edit Neovim Config

## Overview

Use this skill to make focused, behavior-preserving changes to the Neovim setup. The config is modular, plugin-oriented, and tuned for a transparent dark UI with cyan/violet accents.

## Layout

- `nvim/init.lua` sets leaders, loads core modules, defines UI highlight autocmds, bootstraps `lazy.nvim`, and imports `plugins`.
- `nvim/lua/settings.lua` owns editor options and diagnostics defaults.
- `nvim/lua/keymaps.lua` owns global mappings. Search it before adding a mapping.
- `nvim/lua/commands.lua` owns user commands such as `NewFile`, `W`, and `Q`.
- `nvim/lua/colors.lua`, `ui.lua`, and `signs.lua` own palette, status column/background behavior, and signs.
- `nvim/lua/plugins/*.lua` owns plugin-specific specs. Keep new plugin setup in the closest feature file.
- `nvim/lazy-lock.json` is a plugin lockfile. Let plugin management update it; avoid manual edits unless the task is explicitly about the lockfile.

## Editing Workflow

1. Read `nvim/init.lua`, the relevant core module, and the relevant plugin spec before editing.
2. Keep plugin specs small and self-contained. Add dependencies in the plugin spec that needs them.
3. For LSP changes, keep `nvim/lua/plugins/lsp.lua` and `nvim/lua/plugins/mason.lua` aligned:
   - Configure server-specific settings with `vim.lsp.config(...)`.
   - Enable active servers with `vim.lsp.enable(...)`.
   - Add Mason-managed servers to `ensure_installed`.
4. For completion changes, update `nvim/lua/plugins/cmp.lua`. Current sources include Copilot, LSP, path, Lua, buffer, and snippets.
5. For formatting changes, update `nvim/lua/plugins/formatting.lua` and check `keymaps.lua`:
   - `none-ls` currently registers `prettierd` and `stylua`.
   - `<Leader>f` formats through LSP.
   - Normal-mode `<C-s>` formats Lua/Luau with LSP and other filetypes with `:Prettier` before writing.
6. For UI changes, prefer colors from `colors.lua` and preserve transparent-background behavior unless asked to change the look.
7. For keymaps, preserve the space leader, disabled arrow keys, clipboard mappings, quickfix/location-list mappings, and Fugitive/Telescope/Harpoon conventions unless the user asks for a remap.

## Avoid

- Do not edit `nvim/pack/github/start/copilot.vim`; it is a submodule/vendor checkout.
- Do not inspect or edit `nvim/undo/` or `.DS_Store` files.
- Do not remove a plugin from multiple places unless you have checked its spec, `plugins/init.lua`, references from keymaps/UI, and the lockfile impact.
- Do not introduce broad reformatting across the Lua tree for a narrow behavior change.

## Validation

- Run `nvim --headless "+qa"` after config changes when local plugins are installed.
- If only Lua syntax changed and `nvim` cannot load due missing local plugins, use `luac -p <file>` where available and report the limitation.
- Validate skills or docs separately; this skill has no bundled scripts or resources.

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("settings")
require("signs")
require("keymaps")
require("commands")
require("ui")

vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		local colors = require("colors")
		local groups = {
			"Normal",
			"NormalNC",
			"NormalFloat",
			"SignColumn",
			"MsgArea",
			"CursorLineNr",
			"NeoTreeNormal",
			"NeoTreeNormalNC",
			"NeoTreeWinSeparator",
			"NeoTreeEndOfBuffer",
			"TelescopeNormal",
			"TelescopeBorder",
			"TelescopePromptBorder",
			"TelescopePromptNormal",
			"TelescopeResultsBorder",
			"TelescopeResultsNormal",
			"NvimTreeNormal",
			"NvimTreeNormalNC",
			"NeoTreeDirectoryName",
			"EndOfBuffer",
		}
		for _, g in ipairs(groups) do
			vim.api.nvim_set_hl(0, g, { bg = "none" })
		end
		vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", {
			fg = colors.white,
			bold = true,
		})
		vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = colors.violet })
		vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = "#404040" })
		vim.api.nvim_set_hl(0, "NeoTreeExpander", { fg = "#606060" })
		vim.api.nvim_set_hl(0, "NeoTreeHiddenByName", { fg = "#5a5a5a" })
		vim.api.nvim_set_hl(0, "NeoTreeDotfile", { fg = "#5a5a5a" })
		---
		---------------------------------------------------------------
		-- BASE BACKGROUND / NORMAL
		---------------------------------------------------------------
		vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none", fg = colors.white })
		vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", fg = colors.white })
		vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = "#111111", bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#111111" })

		---------------------------------------------------------------
		-- DIRECTORY & FILE ICONS
		---------------------------------------------------------------
		vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = colors.white, bold = true })
		vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = colors.cyan })
		vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { fg = colors.violet })

		-- Hidden / ignored fade
		vim.api.nvim_set_hl(0, "NeoTreeHiddenByName", { fg = "#5a5a5a" })
		vim.api.nvim_set_hl(0, "NeoTreeDotfile", { fg = "#5a5a5a" })

		---------------------------------------------------------------
		-- INDENT MARKERS
		---------------------------------------------------------------
		vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = "#404040" })
		vim.api.nvim_set_hl(0, "NeoTreeExpander", { fg = "#606060" })

		-- Last leaf marker (╰)
		vim.api.nvim_set_hl(0, "NeoTreeIndentMini", { fg = "#505050" })

		---------------------------------------------------------------
		-- ROOT TITLE (FLOATISH)
		---------------------------------------------------------------
		vim.api.nvim_set_hl(0, "NeoTreeRootName", {
			fg = colors.violet,
			bold = true,
			italic = true,
		})

		---------------------------------------------------------------
		-- GIT STATUS
		---------------------------------------------------------------
		-- Symbols
		vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = colors.cyan })
		vim.api.nvim_set_hl(0, "NeoTreeGitStaged", { fg = colors.cyan })
		vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = colors.cyan })
		vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = colors.violet })
		vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = colors.violet })
		vim.api.nvim_set_hl(0, "NeoTreeGitRenamed", { fg = colors.blue })
		vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = colors.red })
		vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = colors.red })
		vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = colors.grey })

		-- File names
		vim.api.nvim_set_hl(0, "NeoTreeGitAddedName", { fg = colors.cyan })
		vim.api.nvim_set_hl(0, "NeoTreeGitStagedName", { fg = colors.cyan })
		vim.api.nvim_set_hl(0, "NeoTreeGitUntrackedName", { fg = colors.cyan })
		vim.api.nvim_set_hl(0, "NeoTreeGitModifiedName", { fg = colors.violet })
		vim.api.nvim_set_hl(0, "NeoTreeGitUnstagedName", { fg = colors.violet })
		vim.api.nvim_set_hl(0, "NeoTreeGitRenamedName", { fg = colors.blue })
		vim.api.nvim_set_hl(0, "NeoTreeGitDeletedName", { fg = colors.red })
		vim.api.nvim_set_hl(0, "NeoTreeGitConflictName", { fg = colors.red })
		vim.api.nvim_set_hl(0, "NeoTreeGitIgnoredName", { fg = colors.grey })

		---------------------------------------------------------------
		-- TABS
		---------------------------------------------------------------
		vim.api.nvim_set_hl(0, "NeoTreeTabActive", {
			fg = colors.black,
			bg = colors.violet,
			bold = true,
		})

		vim.api.nvim_set_hl(0, "NeoTreeTabInactive", {
			fg = "#888888",
			bg = "#1a1a1a",
		})

		vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorActive", { fg = colors.violet, bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorInactive", { fg = "#444444", bg = "none" })

		---------------------------------------------------------------
		-- SYMBOL DETAILS
		---------------------------------------------------------------
		vim.api.nvim_set_hl(0, "NeoTreeSymbolicLinkTarget", { fg = colors.cyan, italic = true })
		vim.api.nvim_set_hl(0, "NeoTreeDimText", { fg = "#666666" })
	end,
})

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = { { import = "plugins" } },
	install = { colorscheme = { "tokyonight-night" } },
	checker = { enabled = true },
})

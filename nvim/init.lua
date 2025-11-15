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
		vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = colors.cyan })
		vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = "#404040" })
		vim.api.nvim_set_hl(0, "NeoTreeExpander", { fg = "#606060" })
		vim.api.nvim_set_hl(0, "NeoTreeHiddenByName", { fg = "#5a5a5a" })
		vim.api.nvim_set_hl(0, "NeoTreeDotfile", { fg = "#5a5a5a" })
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

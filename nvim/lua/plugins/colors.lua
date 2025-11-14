return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local color = "tokyonight-night"
		vim.cmd.colorscheme(color)
		-- nvim default background overwrites
		--vim.api.nvim_set_hl(0, "Normal", { bg = "#333333" })
		--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		--vim.api.nvim_set_hl(0, 'LineNr', { fg = '#FFFFFF', bg = 'none' })
		--vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
		--vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#666666', bold = true })
		vim.cmd([[
      highlight! link NeoTreeDirectoryIcon NvimTreeFolderIcon
      highlight! link NeoTreeDirectoryName NvimTreeFolderName
      highlight! link NeoTreeSymbolicLinkTarget NvimTreeSymlink
      highlight! link NeoTreeRootName NvimTreeRootFolder
      highlight! link NeoTreeDirectoryName NvimTreeOpenedFolderName
      highlight! link NeoTreeFileNameOpened NvimTreeOpenedFile
    ]])
		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#666666", bold = true })
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	end,
	opts = {
		style = "night",
		light_style = "night",
		transparent = true,
		sidebars = { "qf", "vista_kind", "terminal", "packer" },
		on_highlights = function(hl, c)
			hl["@comment"] = { fg = "#FFFFFF" }
			hl["@keyword"] = { fg = "#F093FF", style = { italic = false } }
			hl.NeoTreeCursorLine = { bg = "none" }
			hl.NeoTreeDimText = { fg = "#999999" }
			hl.NeoTreeDirectoryIcon = { bg = "none" }
			hl.NeoTreeDirectoryName = { fg = "#FFFFFF", bg = "none" }
			hl.NeoTreeEndOfBuffer = { bg = "none" }
			hl.NeoTreeFileIcon = { bg = "none" }
			hl.NeoTreeFileName = { fg = "#FFFFFF", bg = "none" }
			hl.NeoTreeGitAdded = { bg = "none" }
			hl.NeoTreeGitDeleted = { bg = "none" }
			hl.NeoTreeGitModified = { bg = "none" }
			hl.NeoTreeGitModified = { fg = "#FF9933" }
			hl.NeoTreeGitStaged = { bg = "none" }
			hl.NeoTreeGitStaged = { fg = "#33FF99" }
			hl.NeoTreeGitUntracked = { fg = "#FF3333" }
			hl.NeoTreeIndentMarker = { bg = "none" }
			hl.NeoTreeNormal = { fg = "#FFFFFF", bg = "none" }
			hl.NeoTreeNormalNC = { bg = "none" }
			hl.NeoTreeWinSeparator = { bg = "none", fg = c.fg_dark }
			hl.NvimTreeFolderName = { fg = "#FFFFFF" }
			hl.NvimTreeRootFolder = { fg = "#FFFFFF" }
			hl.TelescopeBorder = { bg = "#33FF99", fg = c.bg_dark }
			hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg_dark }
			hl.TelescopePreviewTitle = { bg = c.bg_dark, fg = c.bg_dark }
			hl.TelescopePromptBorder = { bg = "#000000", fg = "#000000" }
			hl.TelescopePromptNormal = { bg = "#000000" }
			hl.TelescopePromptTitle = { bg = "#000000", fg = "#000000" }
			hl.TelescopeResultsTitle = { bg = c.bg_dark, fg = c.bg_dark }
		end,
	},
}

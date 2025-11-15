return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		local color = "tokyonight-night"
		vim.cmd.colorscheme(color)
		vim.cmd([[
      highlight! link NeoTreeDirectoryIcon NvimTreeFolderIcon
      highlight! link NeoTreeDirectoryName NvimTreeFolderName
      highlight! link NeoTreeSymbolicLinkTarget NvimTreeSymlink
      highlight! link NeoTreeRootName NvimTreeRootFolder
      highlight! link NeoTreeDirectoryName NvimTreeOpenedFolderName
      highlight! link NeoTreeFileNameOpened NvimTreeOpenedFile
    ]])
		vim.api.nvim_set_hl(0, "LineNr", { fg = "#FFFFFF", bold = true })
		vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#BD93F9", bold = true })
		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#BD93F9", bold = true })
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
		vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#ffffff", bg = "none" })
		vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#BD93F9", bg = "none" })
	end,
	opts = {
		transparent = true,
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
		on_highlights = function(hl, c)
			local black = "#000000"
			local border = "#1a1a1a"
			hl.NewTreeFileIcon = { fg = "#76aafc" }
			hl.NeoTreeIndentMarker = { fg = "#1f1f1f" }
			hl.NeoTreeDirectoryName = { fg = c.blue, bold = true }
			hl.NeoTreeDirectoryIcon = { fg = c.teal }
			hl.NeoTreeDimText = { fg = "#3a3a3a" }
			hl.NeoTreeCursorLine = { bg = "#111111" }
			hl.NeoTreeNormal = { bg = "#000000", fg = c.fg }
			hl.NeoTreeNormalNC = { bg = "#000000" }
			hl.FloatBorder = { fg = border, bg = black }
			hl.NormalFloat = { bg = black }
			hl.TelescopeBorder = { bg = black, fg = border }
			hl.TelescopeNormal = { bg = black, fg = c.fg }
			hl.TelescopeSelection = { bg = "#111111", fg = c.fg }
			hl.TelescopePromptNormal = { bg = black, fg = c.fg }
			hl.TelescopePromptBorder = { bg = black, fg = border }
			hl.LspInfoBorder = { fg = border, bg = black }
			hl.FloatTitle = { fg = c.blue, bg = black }
		end,
	},
}

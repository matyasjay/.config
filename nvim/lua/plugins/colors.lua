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
		vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#666666", bold = true })
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
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

			-- Neo-tree
			-- Indentation guides
			hl.NeoTreeIndentMarker = { fg = "#1f1f1f" }

			-- Directory names brighter
			hl.NeoTreeDirectoryName = { fg = c.blue, bold = true }

			-- Folder icons slight accent
			hl.NeoTreeDirectoryIcon = { fg = c.teal }

			-- Dim git status
			hl.NeoTreeDimText = { fg = "#3a3a3a" }

			-- Selected line highlight inside Neo-tree
			hl.NeoTreeCursorLine = { bg = "#111111" }

			-- Normal backgrounds
			hl.NeoTreeNormal = { bg = "#000000", fg = c.fg }
			hl.NeoTreeNormalNC = { bg = "#000000" }

			-- GENERAL FLOATS
			hl.FloatBorder = { fg = border, bg = black }
			hl.NormalFloat = { bg = black }

			-- Telescope
			hl.TelescopeBorder = { bg = black, fg = border }
			hl.TelescopeNormal = { bg = black, fg = c.fg }
			hl.TelescopeSelection = { bg = "#111111", fg = c.fg }
			hl.TelescopePromptNormal = { bg = black, fg = c.fg }
			hl.TelescopePromptBorder = { bg = black, fg = border }

			-- LSP popup borders
			hl.LspInfoBorder = { fg = border, bg = black }
			hl.FloatTitle = { fg = c.blue, bg = black }
		end,
	},
}

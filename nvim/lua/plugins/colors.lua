local colors = require("colors")

return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		transparent = true,
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
		on_highlights = function(hl, _)
			local bg = "none"
			local border = colors.grey

			---------------------------------------------------------------------------
			-- StatusColumn
			---------------------------------------------------------------------------
			hl.LineNr = { fg = colors.white, bg = "none" }
			hl.LineNrAbove = { fg = colors.grey, bg = "none" }
			hl.LineNrBelow = { fg = colors.grey, bg = "none" }
			hl.CursorLineNr = { fg = colors.blue, bg = "none", bold = true }

			hl.FoldColumn = { fg = colors.grey, bg = "none" }
			hl.Folded = { fg = colors.white, bg = "#111111", italic = true }

			hl.DiagnosticSignError = { fg = colors.red, bg = "none" }
			hl.DiagnosticSignWarn = { fg = colors.warning, bg = "none" }
			hl.DiagnosticSignInfo = { fg = colors.blue, bg = "none" }
			hl.DiagnosticSignHint = { fg = colors.cyan, bg = "none" }

			hl.StatusColumnBorder = { fg = colors.violet, bg = "none" }

			---------------------------------------------------------------------------
			-- Neo-tree
			---------------------------------------------------------------------------
			hl.NeoTreeNormal = { bg = bg, fg = colors.white }
			hl.NeoTreeNormalNC = { bg = bg, fg = colors.white }
			hl.NeoTreeDirectoryName = { fg = colors.white, bold = true }
			hl.NeoTreeDirectoryIcon = { fg = colors.cyan }
			hl.NeoTreeIndentMarker = { fg = colors.grey }
			hl.NeoTreeCursorLine = { bg = "#111111" }

			hl.NeoTreeTabActive = { fg = colors.black, bg = colors.violet }
			hl.NeoTreeTabInactive = { fg = colors.white, bg = colors.grey }
			hl.NeoTreeTabSeparatorActive = { fg = colors.violet, bg = bg }
			hl.NeoTreeTabSeparatorInactive = { fg = colors.grey, bg = bg }

			hl.NeoTreeGitAdded = { fg = colors.cyan }
			hl.NeoTreeGitStaged = { fg = colors.cyan }
			hl.NeoTreeGitUntracked = { fg = colors.cyan }
			hl.NeoTreeGitModified = { fg = colors.violet }
			hl.NeoTreeGitUnstaged = { fg = colors.violet }
			hl.NeoTreeGitRenamed = { fg = colors.blue }
			hl.NeoTreeGitDeleted = { fg = colors.red }
			hl.NeoTreeGitConflict = { fg = colors.red }
			hl.NeoTreeGitIgnored = { fg = colors.grey }

			hl.GitSignsAdd = { fg = colors.cyan }
			hl.GitSignsChange = { fg = colors.violet }
			hl.GitSignsDelete = { fg = colors.red }

			---------------------------------------------------------------------------
			-- Floats
			---------------------------------------------------------------------------
			hl.NormalFloat = { bg = colors.black, fg = colors.white }
			hl.FloatBorder = { bg = colors.black, fg = border }
			hl.FloatTitle = { fg = colors.blue, bg = colors.black }
			hl.LspInfoBorder = { bg = colors.black, fg = border }

			---------------------------------------------------------------------------
			-- Telescope
			---------------------------------------------------------------------------
			hl.TelescopeNormal = { bg = colors.black, fg = colors.white }
			hl.TelescopeBorder = { bg = colors.black, fg = border }
			hl.TelescopePromptBorder = { bg = colors.black, fg = border }
			hl.TelescopePromptNormal = { bg = colors.black, fg = colors.white }
			hl.TelescopeSelection = { bg = "#111111", fg = colors.white }

			---------------------------------------------------------------------------
			-- Git
			---------------------------------------------------------------------------
			hl.GitSignsAdd = { fg = colors.cyan }
			hl.GitSignsChange = { fg = colors.violet }
			hl.GitSignsDelete = { fg = colors.red }

			hl.NeoTreeGitModified = { fg = colors.violet }
			hl.NeoTreeGitRenamed = { fg = colors.blue }
			hl.NeoTreeGitUntracked = { fg = colors.cyan }
		end,
	},
	config = function()
		local color = "tokyonight-night"
		vim.cmd.colorscheme(color)
	end,
}

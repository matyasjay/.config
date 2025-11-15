local colors = require("colors")

return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		style = "night",
		transparent = true,

		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},

		on_highlights = function(hl, c)
			---------------------------------------------------------------------------
			-- GENERAL UI
			---------------------------------------------------------------------------
			hl.Normal = { bg = "none", fg = colors.white }
			hl.NormalNC = { bg = "none", fg = colors.white }

			hl.CursorLine = { bg = "#111111" }
			hl.Visual = { bg = "#222222" }

			hl.LineNr = { fg = colors.grey, bg = "none" }
			hl.LineNrAbove = { fg = "#505050", bg = "none" }
			hl.LineNrBelow = { fg = "#505050", bg = "none" }
			hl.CursorLineNr = { fg = colors.blue, bg = "none", bold = true }

			---------------------------------------------------------------------------
			-- FLOAT WINDOWS (black background + rounded + subtle border)
			---------------------------------------------------------------------------
			hl.NormalFloat = { bg = colors.black, fg = colors.white }
			hl.FloatBorder = { bg = colors.black, fg = colors.grey }
			hl.FloatTitle = { fg = colors.blue, bg = colors.black, bold = true }

			-- Rounded borders (Tokyonight supports custom border chars)
			c.border = {
				rounded = {
					"╭",
					"╮",
					"╰",
					"╯",
					"│",
					"─",
					"│",
					"─",
				},
			}

			---------------------------------------------------------------------------
			-- DIAGNOSTIC SIGNS
			---------------------------------------------------------------------------
			hl.DiagnosticSignError = { fg = colors.red }
			hl.DiagnosticSignWarn = { fg = "#e0b050" }
			hl.DiagnosticSignInfo = { fg = colors.blue }
			hl.DiagnosticSignHint = { fg = colors.cyan }

			---------------------------------------------------------------------------
			-- TELESCOPE
			---------------------------------------------------------------------------
			hl.TelescopeNormal = { bg = colors.black, fg = colors.white }
			hl.TelescopeBorder = { bg = colors.black, fg = colors.grey }
			hl.TelescopePromptBorder = { bg = colors.black, fg = colors.grey }
			hl.TelescopePromptNormal = { bg = colors.black, fg = colors.white }
			hl.TelescopeSelection = { bg = "#111111", fg = colors.white }

			---------------------------------------------------------------------------
			-- GIT SIGNS
			---------------------------------------------------------------------------
			hl.GitSignsAdd = { fg = colors.cyan }
			hl.GitSignsChange = { fg = colors.violet }
			hl.GitSignsDelete = { fg = colors.red }
		end,
	},

	config = function()
		vim.cmd.colorscheme("tokyonight-night")
	end,
}

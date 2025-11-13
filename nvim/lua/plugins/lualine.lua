--local custom_tokyonight = require('lualine.themes.tokyonight')
--
--custom_tokyonight.normal.a.bg = '#33FF99'
--custom_tokyonight.insert.a.bg = '#990033'
--custom_tokyonight.insert.a.fg = '#FFFFFF'
--custom_tokyonight.visual.a.bg = '#FF33FF'
--custom_tokyonight.visual.a.fg = '#000000'
--custom_tokyonight.command.a.bg = '#FF9933'
--custom_tokyonight.command.b.bg = '#FF9933'
--custom_tokyonight.command.a.fg = '#000000'
--custom_tokyonight.command.b.fg = '#000000'
--custom_tokyonight.normal.b.bg = '#33FF99'
--custom_tokyonight.normal.b.fg = '#000000'
--custom_tokyonight.insert.b.bg = '#990033'
--custom_tokyonight.insert.b.fg = '#FFFFFF'
--custom_tokyonight.visual.b.bg = '#FF33FF'
--custom_tokyonight.visual.b.fg = '#000000'
--custom_tokyonight.normal.c.bg = '#000000'
--custom_tokyonight.normal.c.fg = '#FFFFFF'

local M = {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			theme = "tokyonight",
			component_separators = { left = "|", right = "|" },
			section_separators = { left = " --", right = "-- " },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { { "branch", color = { fg = "#666666", bg = "none" } } },
			lualine_c = {
				{ "filetype", color = { fg = "#666666", bg = "none" } },
				{
					"filename",
					file_status = true,
					path = 1,
					symbols = {
						modified = "[+]", -- Text to show when the file is modified.
						readonly = "[-]", -- Text to show when the file is non-modifiable or readonly.
						unnamed = "[No Name]", -- Text to show for unnamed buffers.
						newfile = "[New]", -- Text to show for newly created file before first write
					},
				},
			},
			lualine_x = {},
			lualine_z = { "location" },
		},
		winbar = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		},
		config = function(_, opts)
			require("lualine").setup(opts)

			vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
			vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })

			local modes = {
				"normal",
				"insert",
				"visual",
				"replace",
				"command",
				"inactive",
			}

			local sections = { "a", "b", "c", "x", "y", "z" }

			for _, mode in ipairs(modes) do
				for _, section in ipairs(sections) do
					local group = "lualine_" .. section .. "_" .. mode
					vim.api.nvim_set_hl(0, group, { bg = "none" })
				end
			end
		end,
	},
}

return { M }

local colors = require("colors")

local bubbles_theme = {
	normal = {
		a = { fg = colors.blue, bg = colors.black },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.white, bg = colors.black },
	},

	insert = { a = { fg = colors.red, bg = colors.black } },
	visual = { a = { fg = colors.warning, bg = colors.black } },
	replace = { a = { fg = colors.red, bg = colors.black } },

	inactive = {
		a = { fg = colors.grey, bg = colors.black },
		b = { fg = colors.grey, bg = colors.black },
		c = { fg = colors.grey },
	},
}

return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			theme = bubbles_theme,
			component_separators = "",
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
			lualine_b = { "branch", "filename" },
			lualine_c = {
				"%=",
			},
			lualine_x = {},
			lualine_y = { "lsp_status", "filetype", "progress" },
			lualine_z = {
				{ "location", separator = { right = "" }, left_padding = 2 },
			},
		},
		inactive_sections = {
			lualine_a = { "filename" },
			lualine_b = {},
			lualine_c = {},
			lualine_x = {},
			lualine_y = {},
			lualine_z = { "location" },
		},
		tabline = {},
		extensions = {},
	},
}

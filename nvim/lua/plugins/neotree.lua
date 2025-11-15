local colors = require("colors")

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		default_component_configs = {
			indent = {
				indent_size = 2,
				padding = 1,
				with_markers = true,
				indent_marker = "│",
				last_indent_marker = "╰",
				highlight = "NeoTreeIndentMarker",
			},
			icon = {
				highlight = "NeoTreeFileIcon",
			},
		},
		git_status = {
			symbols = {
				added = " ",
				modified = " ",
				deleted = " ",
				renamed = " ",
				untracked = " ",
				ignored = " ",
				unstaged = " ",
				staged = " ",
				conflict = " ",
			},
		},
		window = {
			position = "current",
			mappings = {
				["e"] = function()
					vim.cmd("Neotree focus filesystem left", true)
				end,
				["b"] = function()
					vim.cmd("Neotree focus buffers left", true)
				end,
			},
		},
		source_selection = {
			highlight_tab = "NeoTreeTabInactive",
			highlight_tab_active = "NeoTreeTabActive",
			highlight_background = "NeoTreeRootName",
			highlight_separator = "NeoTreeTabSeparatorInactive",
			highlight_separator_active = "NeoTreeTabSeparatorActive",
		},
		filesystem = {
			follow_current_file = { enabled = true },
			components = {
				harpoon_index = function(config, node, _)
					local Marked = require("harpoon.mark")
					local path = node:get_id()
					local success, index = pcall(Marked.get_index_of, path)
					if success and index and index > 0 then
						return {
							text = string.format("%d ", index),
							highlight = config.highlight or "NeoTreeDirectoryIcon",
						}
					else
						return {
							text = "  ",
						}
					end
				end,
			},
			renderers = {
				file = {
					{ "icon" },
					{ "name", use_git_status_colors = false },
					{ "harpoon_index" },
					{ "diagnostics" },
					{ "git_status", highlight = "NeoTreeDimText" },
				},
			},
		},
		highlight = {
			modified = colors.violet,
			added = colors.cyan,
			deleted = colors.red,
			renamed = colors.blue,
		},
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)
	end,
}

local parser_install = {
	"css",
	"dockerfile",
	"elixir",
	"gitcommit",
	"html",
	"javascript",
	"jsdoc",
	"json",
	"json5",
	"lua",
	"markdown",
	"markdown_inline",
	"prisma",
	"regex",
	"terraform",
	"tmux",
	"tsx",
	"typescript",
	"vim",
	"vimdoc",
	"yaml",
}

local treesitter_filetypes = {
	"css",
	"dockerfile",
	"elixir",
	"gitcommit",
	"help",
	"html",
	"javascript",
	"javascriptreact",
	"json",
	"json5",
	"lua",
	"markdown",
	"prisma",
	"terraform",
	"tmux",
	"tsx",
	"typescript",
	"typescriptreact",
	"vim",
	"yaml",
}

local function configure_language_aliases()
	vim.treesitter.language.register("tsx", { "javascriptreact", "typescriptreact" })
	vim.treesitter.language.register("vimdoc", "help")
end

local function setup_treesitter()
	configure_language_aliases()
	require("nvim-treesitter").install(parser_install)

	vim.api.nvim_create_autocmd("FileType", {
		group = vim.api.nvim_create_augroup("UserTreesitter", { clear = true }),
		pattern = treesitter_filetypes,
		callback = function(args)
			vim.treesitter.start(args.buf)
		end,
	})
end

return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
		config = setup_treesitter,
	},
	{
		"windwp/nvim-ts-autotag",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("nvim-ts-autotag").setup({
				opts = {
					enable_close = true,
					enable_rename = true,
					enable_close_on_slash = true,
				},
			})
		end,
	},
}

local cmp = require("cmp")
local luasnip = require("luasnip")

return {
	cmp.setup({
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},

		mapping = {
			["<C-j>"] = cmp.mapping.select_next_item(),
			["<C-k>"] = cmp.mapping.select_prev_item(),
			["<C-Space>"] = cmp.mapping.complete(),
			["<CR>"] = cmp.mapping.confirm({ select = true }),
		},

		sources = {
			{ name = "nvim_lsp" },
			{ name = "path" },
			{ name = "nvim_lua" },
			{ name = "buffer", keyword_length = 3 },
			{ name = "luasnip" },
		},
	}),
}

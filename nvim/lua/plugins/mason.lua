return {
	"williamboman/mason.nvim",
	dependencies = { "williamboman/mason-lspconfig.nvim" },
	config = function()
		require("mason").setup()

		local mason_lsp = require("mason-lspconfig")

		mason_lsp.setup({
			ensure_installed = {
				"bashls",
				"cssls",
				"eslint",
				"html",
				"jsonls",
				"lua_ls",
				"marksman",
				"prismals",
				"terraformls",
				"yamlls",
				"luau_lsp",
			},
		})
	end,
}

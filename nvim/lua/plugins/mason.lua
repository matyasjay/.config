return {
	"williamboman/mason.nvim",
	dependencies = { "williamboman/mason-lspconfig.nvim" },
	config = function()
		require("mason").setup()

		local mason_lsp = require("mason-lspconfig")
		local lspconfig = require("lspconfig")

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

		lspconfig.tailwindcss.setup({
			settings = {
				tailwindCSS = {
					lint = {
						cssConflict = "warning",
						invalidApply = "error",
						invalidConfigPath = "error",
						invalidScreen = "error",
						invalidTailwindDirective = "error",
						recommendedVariantOrder = "warning",
						suggestCanonicalClasses = "ignore",
					},
				},
			},
		})
	end,
}

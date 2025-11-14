local mason =	require("mason")
local masonLsp = require("mason-lspconfig")

return{
  mason.setup(),
	masonLsp.setup({
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
}

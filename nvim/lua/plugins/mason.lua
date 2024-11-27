local M = {
	{
		"williamboman/mason.nvim",
		config = function()
			local lsp_zero = require("lsp-zero")
			local lspconfig = require("lspconfig")
			require("mason").setup({})
			local mason_lspconfig = require("mason-lspconfig")
			mason_lspconfig.setup({
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
				},
				handlers = {
					lsp_zero.default_setup,
					lua_ls = function()
						local lua_opts = lsp_zero.nvim_lua_ls()
						lspconfig.lua_ls.setup(lua_opts)
					end,
					luau_lsp = function()
						require("luau-lsp").setup({
							platform = {
								type = "roblox",
							},
							types = {
								roblox = true,
								roblox_security_level = "PluginSecurity",
							},
							sourcemap = {
								enabled = true,
								autogenerate = true,
								rojo_project_file = "default.project.json",
								rojo_path = "~/.local/share/bin/rojo",
							},
							plugin = {
								enabled = true,
								port = 3667,
							},
						})
					end,
				},
			})
		end,
	},
}

return { M }

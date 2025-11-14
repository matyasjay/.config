return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(args)
				local bufnr = args.buf
				local opts = { buffer = bufnr, silent = true }
				vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
				vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
				vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
				vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
			end,
		})

		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
						checkThirdParty = false,
					},
				},
			},
		})

		vim.lsp.config("luau_lsp", {
			platform = { type = "roblox" },
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

		vim.lsp.enable({
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
		})
	end,
}

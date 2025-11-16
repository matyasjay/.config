local map = vim.keymap.set

map("n", "<C-N>", function()
	local filename = vim.fn.input("New file: ", "", "file")
	if filename ~= "" then
		vim.cmd("NewFile " .. filename)
	end
end)

map("n", "<Up>", "<nop>")
map("n", "<Down>", "<nop>")
map("n", "<Left>", "<nop>")
map("n", "<Right>", "<nop>")

map("n", "<leader>pv", vim.cmd.Neotree)

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")
map("n", "J", "mzJ`z")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

map("x", "<leader>p", [["_dP]])
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])
map({ "n", "v" }, "<leader>d", [["_d]])

map("i", "<C-c>", "<Esc>")
map("n", "Q", "<nop>")

map("n", "<C-f>", "<cmd>silent !tmux neww ~/.local/scripts/tmux-sessionizer<CR>")

map("n", "<leader>f", function()
	vim.lsp.buf.format({ async = true })
end)

map("n", "<C-k>", "<cmd>cnext<CR>zz")
map("n", "<C-j>", "<cmd>cprev<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")

map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

---@diagnostic disable-next-line: deprecated
map("n", "<leader>d", vim.diagnostic.open_float)
---@diagnostic disable-next-line: deprecated
map("n", "<leader>b", vim.diagnostic.goto_prev)
---@diagnostic disable-next-line: deprecated
map("n", "<leader>n", vim.diagnostic.goto_next)
map("n", "<leader>u", vim.cmd.UndotreeToggle)
map("n", "<leader>gs", vim.cmd.Git)

map("n", "<leader><leader>", function()
	vim.cmd("so")
end)

map("n", "<C-s>", function()
	if vim.bo.filetype ~= "neo-tree" then
		if vim.bo.filetype == "lua" or vim.bo.filetype == "luau" then
			vim.lsp.buf.format({ async = false })
		else
			vim.cmd.Prettier()
			-- or vim.lsp.buf.format({ async = false })
		end
		vim.cmd("w")
	end
end)

map("n", "gd", vim.lsp.buf.definition)
map("n", "K", vim.lsp.buf.hover)
map("n", "<leader>vws", vim.lsp.buf.workspace_symbol)
map("n", "<leader>vd", vim.diagnostic.open_float)
map("n", "<leader>vca", vim.lsp.buf.code_action)
map("n", "<leader>vrr", vim.lsp.buf.references)
map("n", "<leader>vrn", vim.lsp.buf.rename)
map("i", "<C-h>", vim.lsp.buf.signature_help)

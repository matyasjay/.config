local opt = vim.opt

opt.guicursor = ""
opt.nu = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.stdpath("config") .. "/undo"
opt.undofile = true

opt.hlsearch = true
opt.incsearch = true
opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"

opt.conceallevel = 2
opt.colorcolumn = ""
opt.fillchars:append({ eob = " " })

opt.updatetime = 60
opt.isfname:append("@-@")

vim.diagnostic.config({
	float = {
		source = true,
		show_header = true,
		focusable = false,
	},
})

vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.netrw_browse_split = 0
vim.g.netrw_keepdir = 0
vim.g.netrw_list_hide = ".DS_Store"

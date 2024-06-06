vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt_local.conceallevel = 2

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 60

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.diagnostic.config({
    float = {
        source = "always",
        show_header = true,
        focusable = false,
    },
})


vim.g.noshowmode = true
vim.g.noshowcmd = true
vim.g.noruler = true
vim.g.laststatus = 0

require("amatyas.remap")
require("amatyas.packer")
require("amatyas.fugitive")
require("amatyas.harpoon")
require("amatyas.set")
require("amatyas.prettier")

vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.netrw_browse_split = 0

require('lualine').setup({
  options = {
    theme = 'tokyonight'
  }
})

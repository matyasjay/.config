vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('saadparwaiz1/cmp_luasnip')
  use('hrsh7th/cmp-nvim-lua')
  use('rafamadriz/friendly-snippets')
  use('jose-elias-alvarez/null-ls.nvim')
  use('neovim/nvim-lspconfig')
  use('MunifTanjim/prettier.nvim')
  use('norcalli/nvim-colorizer.lua')
  use('wakatime/vim-wakatime')
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      { 'neovim/nvim-lspconfig' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    },
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  use {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  }
  --use({
  --  "epwalsh/obsidian.nvim",
  --  tag = "*",
  --  requires = {
  --    "nvim-lua/plenary.nvim",
  --  },
  --  config = function()
  --    require("obsidian").setup({
  --      workspaces = {
  --        {
  --          name = "default",
  --          path = "~/Documents/Obsidian Vault",
  --        },
  --      },
  --    })
  --  end,
  --})
end)

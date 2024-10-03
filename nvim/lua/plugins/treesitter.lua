local M = {
  'nvim-treesitter/nvim-treesitter',
  build = function()
    require("nvim-treesitter.install").update({ with_sync = true })
  end,
  opts = {
    ensure_installed = {
      "vimdoc",
      "javascript",
      "typescript",
      "c",
      "c_sharp",
      "cmake",
      "cpp",
      "dockerfile",
      "git_config",
      "gitignore",
      "go",
      "html",
      "jq",
      "jsdoc",
      "json",
      "prisma",
      "regex",
      "terraform",
      "lua",
      "rust",
      "tmux",
      "yaml"
    },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  }
}

return { M }

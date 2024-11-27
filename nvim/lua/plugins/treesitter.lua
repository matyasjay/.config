local M = {
  {
    'nvim-treesitter/nvim-treesitter',
    event = "BufReadPre",
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = {
          "css",
          "dockerfile",
          "gitcommit",
          "html",
          "javascript",
          "jsdoc",
          "json",
          "json5",
          "lua",
          "markdown",
          "prisma",
          "regex",
          "terraform",
          "tmux",
          "tsx",
          "typescript",
          "vim",
          "vimdoc",
          "yaml"
        },
        sync_install = false,
        auto_install = true,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      })
    end
  },
  {
    "windwp/nvim-ts-autotag",
    event = "BufReadPre",
    config = function()
      require('nvim-ts-autotag').setup({
        opts = {
          enable_close = true,
          enable_rename = true,
          enable_close_on_slash = true
        },
        -- overrides per file
        --[[ per_filetype = {
            ["html"] = {
              enable_close = false
            }
          } ]]
      })
    end
  },
}

return { M }

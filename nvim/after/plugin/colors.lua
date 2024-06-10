require('colorizer').setup {
  '*',
  css = { rgb_fn = true, },
  html = { names = false, }
}

require('tokyonight').setup({
  style = "night",
  light_style = "night",
  disable_background = true,
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  on_highlights = function(hl, c)
    local prompt = "#2d3149"
    hl["@comment"] = {
      fg = "#aaaaaa",
    }
    hl["@keyword"] = {
      fg = "#f093ff",
      style = {
        italic = false
      }
    }
    hl.TelescopeNormal = {
      bg = c.bg_dark,
      fg = c.fg_dark,
    }
    hl.TelescopeBorder = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopePromptNormal = {
      bg = prompt,
    }
    hl.TelescopePromptBorder = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePromptTitle = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePreviewTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopeResultsTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.NeoTreeNormal = {
      bg = "#000000",
      fg = "#FFFFFF",
    }
    hl.NeoTreeNormalNC = {
      bg = "#000000",
      fg = "#FFFFFF",
    }
    hl.NeoTreeDimText = {
      fg = "#666666"
    }
    hl.NeoTreeGitModified = {
      fg = "#FF9933"
    }
    hl.NeoTreeGitUntracked = {
      fg = "#FF3333"
    }
    hl.NeoTreeGitStaged = {
      fg = "#33FF99"
    }
    hl.NeoTreeFileName = {
      fg = "#33FF99"
    }
    hl.NvimTreeFolderName = {
      fg = "#AAAAAA"
    }
    hl.NvimTreeRootFolder = {
      fg = "#AAAAAA"
    }
  end,
})

function ColorMyPencils(color)
  color = color or "tokyonight-night"
  vim.cmd.colorscheme(color)
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, 'LineNr', { fg = '#AAAAAA', bg = 'none' })
  vim.api.nvim_set_hl(0, 'SignColumn', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#666666', bold = true })
  vim.cmd([[
    highlight! link NeoTreeDirectoryIcon NvimTreeFolderIcon
    highlight! link NeoTreeDirectoryName NvimTreeFolderName
    highlight! link NeoTreeSymbolicLinkTarget NvimTreeSymlink
    highlight! link NeoTreeRootName NvimTreeRootFolder
    highlight! link NeoTreeDirectoryName NvimTreeOpenedFolderName
    highlight! link NeoTreeFileNameOpened NvimTreeOpenedFile
  ]])
  vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#666666', bold = true })
end

ColorMyPencils()

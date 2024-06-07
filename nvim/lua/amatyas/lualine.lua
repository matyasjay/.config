local custom_tokyonight = require('lualine.themes.tokyonight')

custom_tokyonight.normal.a.bg = '#33FF99'
custom_tokyonight.insert.a.bg = '#990033'
custom_tokyonight.insert.a.fg = '#FFFFFF'
custom_tokyonight.visual.a.bg = '#FF33FF'
custom_tokyonight.visual.a.fg = '#000000'
custom_tokyonight.command.a.bg = '#FF9933'
custom_tokyonight.command.b.bg = '#FF9933'
custom_tokyonight.command.a.fg = '#000000'
custom_tokyonight.command.b.fg = '#000000'
custom_tokyonight.normal.b.bg = '#33FF99'
custom_tokyonight.normal.b.fg = '#000000'
custom_tokyonight.insert.b.bg = '#990033'
custom_tokyonight.insert.b.fg = '#FFFFFF'
custom_tokyonight.visual.b.bg = '#FF33FF'
custom_tokyonight.visual.b.fg = '#000000'
custom_tokyonight.normal.c.bg = '#000000'
custom_tokyonight.normal.c.fg = '#FFFFFF'

require('lualine').setup({
  options = {
    theme = custom_tokyonight,
    component_separators = { left = '|', right = '|' },
    section_separators = { left = ' --', right = '-- ' },
  },
  sections = {
    lualine_a = { 'mode', },
    lualine_b = { { 'branch', color = { fg = '#666666', bg = '#000000', } } },
    lualine_c = {},
    lualine_x = {},
    lualine_z = { 'location' }
  },
  winbar = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
      { 'filetype', color = { fg = '#666666', bg = '#000000', } },
      {
        'filename',
        file_status = true,
        path = 1,
        symbols = {
          modified = '[+]',      -- Text to show when the file is modified.
          readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
          unnamed = '[No Name]', -- Text to show for unnamed buffers.
          newfile = '[New]',     -- Text to show for newly created file before first write
        }
      }
    },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {}
  }
})

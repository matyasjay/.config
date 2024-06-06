local custom_tokyonight = require('lualine.themes.tokyonight')


custom_tokyonight.normal.a.bg = '#33FF99'
custom_tokyonight.insert.a.bg = '#990033'
custom_tokyonight.insert.a.fg = '#FFFFFF'
custom_tokyonight.visual.a.bg = '#FF33FF'
custom_tokyonight.visual.a.fg = '#000000'
custom_tokyonight.command.a.bg = '#FF9933'
custom_tokyonight.normal.b.bg = '#33FF99'
custom_tokyonight.normal.b.fg = '#000000'
custom_tokyonight.insert.b.bg = '#990033'
custom_tokyonight.insert.b.fg = '#FFFFFF'
custom_tokyonight.visual.b.bg = '#FF33FF'
custom_tokyonight.visual.b.fg = '#000000'
custom_tokyonight.command.b.bg = '#FF9933'
custom_tokyonight.normal.c.bg = '#000000'
custom_tokyonight.normal.c.fg = '#FFFFFF'


require('lualine').setup({
  options = {
    theme =  custom_tokyonight,
    section_separators = { left = '', right = ''},
  },
  globalstatus = true,
  sections = {
    lualine_a = {'branch'},
    lualine_b = {'mode'},
    lualine_c = {
      {
        'filename',
        file_status = true,
        path = 1
      }
    },
    lualine_x = { 'filetype', 'windows'},
    lualine_z = {'location'}
  }
})

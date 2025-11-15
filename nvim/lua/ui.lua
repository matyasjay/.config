vim.cmd([[
  highlight Normal guibg=none
  highlight NonText guibg=none
  highlight Normal ctermbg=none
  highlight NonText ctermbg=none
]])

vim.opt.statuscolumn = table.concat({ "%s", "%#Normal#", " %C", " %#LineNr#%= %3l " })

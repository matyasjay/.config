local colors = require("colors")

-- Core UI
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none", fg = colors.white })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", fg = colors.white })
vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#111111" })

-- Indent guides
vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = colors.grey })

-- Icons & directories
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = colors.white, bold = true })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = colors.cyan })

-- Tabs
vim.api.nvim_set_hl(0, "NeoTreeTabActive", { fg = colors.black, bg = colors.violet })
vim.api.nvim_set_hl(0, "NeoTreeTabInactive", { fg = colors.white, bg = colors.grey })
vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorActive", { fg = colors.violet, bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorInactive", { fg = colors.grey, bg = "none" })

-- Git
vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "NeoTreeGitStaged", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = colors.violet })
vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = colors.violet })
vim.api.nvim_set_hl(0, "NeoTreeGitRenamed", { fg = colors.blue })
vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = colors.red })
vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = colors.red })
vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = colors.grey })

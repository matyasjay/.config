local colors = require("colors")

---------------------------------------------------------------
-- BASE BACKGROUND / NORMAL
---------------------------------------------------------------
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none", fg = colors.white })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none", fg = colors.white })
vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = "#111111", bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#111111" })

---------------------------------------------------------------
-- DIRECTORY & FILE ICONS
---------------------------------------------------------------
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = colors.white, bold = true })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { fg = colors.violet })

-- Hidden / ignored fade
vim.api.nvim_set_hl(0, "NeoTreeHiddenByName", { fg = "#5a5a5a" })
vim.api.nvim_set_hl(0, "NeoTreeDotfile", { fg = "#5a5a5a" })

---------------------------------------------------------------
-- INDENT MARKERS
---------------------------------------------------------------
vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = "#404040" })
vim.api.nvim_set_hl(0, "NeoTreeExpander", { fg = "#606060" })

-- Last leaf marker (╰)
vim.api.nvim_set_hl(0, "NeoTreeIndentMini", { fg = "#505050" })

---------------------------------------------------------------
-- ROOT TITLE (FLOATISH)
---------------------------------------------------------------
vim.api.nvim_set_hl(0, "NeoTreeRootName", {
	fg = colors.violet,
	bold = true,
	italic = true,
})

---------------------------------------------------------------
-- GIT STATUS
---------------------------------------------------------------
vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "NeoTreeGitStaged", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = colors.violet })
vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = colors.violet })
vim.api.nvim_set_hl(0, "NeoTreeGitRenamed", { fg = colors.blue })
vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = colors.red })
vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = colors.red })
vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = colors.grey })

---------------------------------------------------------------
-- TABS
---------------------------------------------------------------
vim.api.nvim_set_hl(0, "NeoTreeTabActive", {
	fg = colors.black,
	bg = colors.violet,
	bold = true,
})

vim.api.nvim_set_hl(0, "NeoTreeTabInactive", {
	fg = "#888888",
	bg = "#1a1a1a",
})

vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorActive", { fg = colors.violet, bg = "none" })
vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorInactive", { fg = "#444444", bg = "none" })

---------------------------------------------------------------
-- SYMBOL DETAILS
---------------------------------------------------------------
vim.api.nvim_set_hl(0, "NeoTreeSymbolicLinkTarget", { fg = colors.cyan, italic = true })
vim.api.nvim_set_hl(0, "NeoTreeDimText", { fg = "#666666" })

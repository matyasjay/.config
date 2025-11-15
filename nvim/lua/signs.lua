vim.fn.sign_define("FoldColumnFoldClosed", { text = "", texthl = "FoldColumn" })
vim.fn.sign_define("FoldColumnFoldOpened", { text = "", texthl = "FoldColumn" })

vim.fn.sign_define("GitSignsAdd", { text = "", texthl = "GitSignsAdd" })
vim.fn.sign_define("GitSignsChange", { text = "", texthl = "GitSignsChange" })
vim.fn.sign_define("GitSignsDelete", { text = "", texthl = "GitSignsDelete" })

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = " ", texthl = "DiagnosticSignHint" })

require("obsidian").setup({
  workspaces = {
    {
      name = "default",
      path = "~/Documents/Obsidian Vault",
    }
  },
  completion = {
    nvim_cmp = true
  }
})

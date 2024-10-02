require("neo-tree").setup({
  window = {
    position = "current",
    mappings = {
      ['e'] = function() vim.api.nvim_exec('Neotree focus filesystem left', true) end,
      ['b'] = function() vim.api.nvim_exec('Neotree focus buffers left', true) end,
      ['g'] = function() vim.api.nvim_exec('Neotree focus git_status left', true) end,
    },
  },
  source_selection = {
    highlight_tab = "NeoTreeTabInactive",
    highlight_tab_active = "NeoTreeTabActive",
    highlight_background = "NeoTreeRootName",
    highlight_separator = "NeoTreeTabSeparatorInactive",
    highlight_separator_active = "NeoTreeTabSeparatorActive",
  },
  filesystem = {
    components = {
      harpoon_index = function(config, node, _)
        local Marked = require("harpoon.mark")
        local path = node:get_id()
        local success, index = pcall(Marked.get_index_of, path)
        if success and index and index > 0 then
          return {
            text = string.format("%d ", index),
            highlight = config.highlight or "NeoTreeDirectoryIcon",
          }
        else
          return {
            text = "  ",
          }
        end
      end,
    },
    renderers = {
      file = {
        { "icon" },
        { "name",         use_git_status_colors = true },
        { "harpoon_index" },
        { "diagnostics" },
        { "git_status",   highlight = "NeoTreeDimText" },
      },
    },
  },
})

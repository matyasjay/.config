local M = {
  'telescope.nvim',
  branch = '0.1.x',
  config = function()
    require('telescope').setup({
      defaults = {
        layout_strategy = 'flex',
        layout_config = {
          vertical = {
            width = 0.5,
            preview_cutoff = 1
          },
          flex = {
            width = 0.5,
            preview_cutoff = 1
          }
        },
      },
    })
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    vim.keymap.set('n', '<leader>h', builtin.man_pages, { desc = 'Telescope manuals' })
    -- legacy
    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>ps', function()
      builtin.grep_string({ search = vim.fn.input("Grep > ") });
    end)
  end,
}

return { M }

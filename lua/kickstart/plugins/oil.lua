return {
  'stevearc/oil.nvim',
  keys = {
    { '<leader>pv', '<cmd>Oil<CR>', desc = 'Open File Explorer' },
  },
  config = function()
    require('oil').setup {
      default_file_explorer = true,
      columns = { 'icon' },
      keymaps = {
        ['g?'] = { action = 'actions.show_help', mode = 'n' },
        ['<CR>'] = 'actions.select',
        ['<C-s>'] = { action = 'actions.select', opts = { vertical = true } },
        ['<C-h>'] = { action = 'actions.select', opts = { horizontal = true } },
        ['<C-t>'] = { action = 'actions.select', opts = { tab = true } },
        ['<C-p>'] = 'actions.preview',
        ['<C-c>'] = { action = 'actions.close', mode = 'n' },
        ['<C-l>'] = 'actions.refresh',
        ['-'] = { action = 'actions.parent', mode = 'n' },
        ['_'] = { action = 'actions.open_cwd', mode = 'n' },
        ['`'] = { action = 'actions.cd', mode = 'n' },
        ['~'] = { action = 'actions.cd', opts = { scope = 'tab' }, mode = 'n' },
        ['gs'] = { action = 'actions.change_sort', mode = 'n' },
        ['gx'] = 'actions.open_external',
        ['g.'] = { action = 'actions.toggle_hidden', mode = 'n' },
        ['g\\'] = { action = 'actions.toggle_trash', mode = 'n' },
      },
    }
  end,
}

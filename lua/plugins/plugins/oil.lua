return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  keys = {
    { '-', '<cmd>Oil<CR>', desc = 'Open parent directory (Oil)' },
    { '<leader>pv', '<cmd>Oil<CR>', desc = 'Open Oil file explorer' },
  },
  opts = {
    default_file_explorer = true,
    columns = {
      'icon',
      'permissions',
    },
    view_options = {
      show_hidden = false,
    },
    keymaps = {
      ['q'] = 'actions.close',
      ['<CR>'] = 'actions.select',
      ['<C-s>'] = 'actions.select_vsplit',
      ['<C-h>'] = 'actions.select_split',
      ['<C-p>'] = 'actions.preview',
    },
  },
}

return {
  'nvzone/floaterm',
  dependencies = 'nvzone/volt',
  opts = {
    border = true,
    size = {
      h = 85,
      v = 100,
    },

    terminals = {
      { name = 'Lazygit', cmd = 'lazygit' },
      { name = 'Terminal' },
    },
  },
  keys = {
    { '<leader>t', '<cmd>FloatermToggle<CR>' },
  },
  cmd = 'FloatermToggle',
}

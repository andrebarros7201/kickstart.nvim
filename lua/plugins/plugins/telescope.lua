return {
  'nvim-telescope/telescope.nvim',
  event = 'VimEnter',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
  },
  config = function()
    require('telescope').setup {
      extensions = {
        ['ui-select'] = {
          require('telescope.themes').get_dropdown(),
        },
      },
    }

    -- Enable Telescope extensions if they are installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')

    -- Keymaps
    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find Files' })
    vim.keymap.set('n', '<leader>fs', builtin.builtin, { desc = 'Find Select Telescope' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Find by Grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find Buffers' })

    -- Search in current file
    vim.keymap.set('n', '<leader>sf', function()
      builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
      })
    end, { desc = 'Search In This File' })

    vim.keymap.set('n', '<leader>so', function()
      builtin.live_grep {
        grep_open_files = true,
        prompt_title = 'Live Grep in Open Files',
      }
    end, { desc = 'Search In Open Files' })
  end,
}

-- vim: ts=2 sts=2 sw=2 et

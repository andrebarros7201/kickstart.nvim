return {
  {
    'saghen/blink.cmp',
    event = 'VimEnter',
    version = '1.*',
    dependencies = {
      {
        'L3MON4D3/LuaSnip',
        version = '2.*',
        build = (function()
          if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
            return
          end
          return 'make install_jsregexp'
        end)(),
        dependencies = {
          {
            'rafamadriz/friendly-snippets',
            config = function()
              require('luasnip.loaders.from_vscode').lazy_load()
            end,
          },
        },
        opts = {},
      },
      'folke/lazydev.nvim',
      {
        'saghen/blink.nvim',
        event = 'VimEnter',
      },
    },
    --- @module 'blink.cmp'
    --- @type blink.cmp.Config

    opts = {
      keymap = {
        preset = 'default',
        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },
        ['<CR>'] = { 'select_and_accept', 'fallback' },
        ['<C-space>'] = {
          function()
            require('blink').cmd.show { providers = { 'snippets' } }
          end,
        },
      },

      appearance = {
        nerd_font_variant = 'normal',
      },

      completion = {
        documentation = {
          auto_show = false,
          auto_show_delay_ms = 500,
        },
        menu = {
          draw = {
            columns = { { 'label', 'label_description', gap = 1 }, { 'kind' } },
          },
        },
      },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'lazydev' },
        providers = {
          lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
        },
      },

      snippets = { preset = 'luasnip' },
      fuzzy = { implementation = 'lua' },
      signature = { enabled = true },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et

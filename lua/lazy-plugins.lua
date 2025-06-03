require('lazy').setup {
  'NMAC427/guess-indent.nvim', -- Detect tabstop and shiftwidth automatically
  require 'plugins/plugins/gitsigns',
  require 'plugins/plugins/telescope',
  require 'plugins/plugins/lspconfig',
  require 'plugins/plugins/conform',
  require 'plugins/plugins/blink-cmp',
  require 'plugins/plugins/colorscheme',
  require 'plugins/plugins/todo-comments',
  require 'plugins/plugins/mini',
  require 'plugins/plugins/treesitter',
  require 'plugins.plugins.debug',
  -- require 'plugins.plugins.indent_line',
  require 'plugins.plugins.lint',
  require 'plugins.plugins.autopairs',
  require 'plugins.plugins.alpha',
  require 'plugins.plugins.oil',
  require 'plugins.plugins.colored-brackets',
}

-- vim: ts=2 sts=2 sw=2 et

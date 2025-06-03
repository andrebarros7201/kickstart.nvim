return {
  {
    'kepano/flexoki-neovim',
    name = 'flexoki',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'flexoki-dark'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et

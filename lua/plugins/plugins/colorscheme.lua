return {
  'Shatur/neovim-ayu',
  config = function()
    vim.cmd 'colorscheme ayu'
    vim.o.background = 'dark' -- or "light" for the light variant
  end,
}
-- vim: ts=2 sts=2 sw=2 et

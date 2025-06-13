return {
  'Mofiqul/vscode.nvim',
  config = function()
    vim.cmd 'colorscheme vscode'
    require('vscode').setup {
      italic_comments = false,
      disable_nvimtree_bg = true,
      terminal_colors = true,
      style = 'light',
    }
  end,
}
-- vim: ts=2 sts=2 sw=2 et

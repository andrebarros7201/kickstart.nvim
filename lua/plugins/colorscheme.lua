return {
  "kepano/flexoki-neovim",
  priority = 1000,  -- Load it before all other plugins
  lazy = false,
  config = function()
    vim.cmd.colorscheme("flexoki-dark")
  end,
}

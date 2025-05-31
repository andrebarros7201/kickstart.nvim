return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function() 
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "bash", "css", "html", "javascript", 
          "json", "lua", "typescript", "vim", "vimdoc",
          "markdown", "markdown_inline"
        },
        sync_install = false,
        auto_install = true,
        ignore_install = {},
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        indent = {
          enable = true,
        },
        rainbow = {
            enable = true,
            extended_mode = true,
            max_file_lines = nil,
        }
      })
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    }
  }
}

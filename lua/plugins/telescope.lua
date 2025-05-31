return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Find Files" },
        { "<leader>fg", function() require("telescope.builtin").live_grep() end, desc = "Live Grep" },
        { "<leader>fb", function() require("telescope.builtin").buffers() end, desc = "Find Buffers" },
        { "<leader>sf", function() require("telescope.builtin").current_buffer_fuzzy_find(require('telescope.themes').get_dropdown { winblend = 10, previewer = false }) end, { desc = "Search Inside File" }}
    },

    config = function()
        require("telescope").setup({})
    end
}


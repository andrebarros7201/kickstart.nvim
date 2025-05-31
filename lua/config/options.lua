-- Enable Relative Line Numbers
vim.o.number = true
vim.o.relativenumber = true

-- Enable mouse mode
vim.o.mouse = "a"

-- Don't show mode. It's already in the status line
vim.o.showmode = false

-- Sync clipboard between OS and neovim
vim.schedule(function()
	vim.o.clipboard = 'unnamedplus'
end)

-- Highlight text when yanking text
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking text',
    group = vim.api.nvim_create_augroup('kicktart-highlight-yank', { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end
})

-- Enable break indent
vim.o.breakindent = true

-- Enable undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- Enable icons on the left of the line numbers
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- Configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- Sets how neovim will display certain whitespaces characters in the editor
vim.o.list = false
vim.opt.listchars = {tab = '» ', trail = '·', nbsp = '␣'} 

-- Minimun number of screen lines to keep above or below the cursor
vim.o.scrolloff = 10

-- Enable true color support
vim.o.termguicolors = true

-- Cursor line
vim.o.cursorline = true

-- Tabs and Indentation
vim.o.tabstop = 4          -- Number of spaces tabs count for
vim.o.shiftwidth = 4       -- Number of spaces to use for each step of (auto)indent
vim.o.expandtab = true     -- Use spaces instead of tabs

-- Disable wrap
vim.o.wrap = false

-- Dialog asking to save file
vim.o.confirm = true

-- Preview substitutions live
vim.o.inccommand = 'split'

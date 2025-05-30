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

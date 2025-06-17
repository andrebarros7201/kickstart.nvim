-- Clear highlighted text
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic Quickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Move selected lines up or down
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Split Window Horizontal
vim.keymap.set('n', '<leader>s', ':split<CR>', { noremap = true, silent = true })

-- Split Window Vertical
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { noremap = true, silent = true })

--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
vim.keymap.set('n', '<C-S-h>', '<C-w>H', { desc = 'Move window to the left' })
vim.keymap.set('n', '<C-S-l>', '<C-w>L', { desc = 'Move window to the right' })
vim.keymap.set('n', '<C-S-j>', '<C-w>J', { desc = 'Move window to the lower' })
vim.keymap.set('n', '<C-S-k>', '<C-w>K', { desc = 'Move window to the upper' })

-- Create new buffer with terminal
vim.keymap.set('n', '<leader>tt', ':tabnew | terminal<CR>i', { noremap = true, silent = true })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Open a floating window with a terminal
local float_terms = {}

local function toggle_floating_term(key, cmd)
  local term = float_terms[key]

  -- If the terminal already exists
  if term then
    if vim.api.nvim_win_is_valid(term.win) then
      if vim.api.nvim_get_current_win() == term.win then
        -- Hide the window if it's visible and focused
        vim.api.nvim_win_hide(term.win)
      else
        -- Show the window again
        vim.api.nvim_set_current_win(term.win)
      end
    else
      -- Reopen the window if it was closed externally
      local width = math.floor(vim.o.columns * 0.8)
      local height = math.floor(vim.o.lines * 0.8)
      local row = math.floor((vim.o.lines - height) / 2)
      local col = math.floor((vim.o.columns - width) / 2)

      term.win = vim.api.nvim_open_win(term.buf, true, {
        relative = 'editor',
        width = width,
        height = height,
        row = row,
        col = col,
        style = 'minimal',
        border = 'rounded',
      })

      vim.cmd 'startinsert'
    end
    return
  end

  -- First-time open
  local buf = vim.api.nvim_create_buf(false, true)

  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local win = vim.api.nvim_open_win(buf, true, {
    relative = 'editor',
    width = width,
    height = height,
    row = row,
    col = col,
    style = 'minimal',
    border = 'single',
  })

  vim.fn.termopen(cmd)

  vim.cmd 'startinsert'

  float_terms[key] = { win = win, buf = buf }
end

-- Keymaps
vim.keymap.set('n', '<leader>gg', function()
  toggle_floating_term('lazygit', 'lazygit')
end, { desc = 'Toggle Lazygit in floating terminal' })

vim.keymap.set('n', '<leader>sh', function()
  toggle_floating_term('shell', vim.o.shell)
end, { desc = 'Toggle shell in floating terminal' })
-- vim: ts=2 sts=2 sw=2 et

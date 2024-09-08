-- My keybindings
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Open directory' })
-- Mark > is end, mark < is beginning
-- Moves below, then carriage return
-- Select, align, select
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selection down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selection up' })
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { desc = 'Yank to system clipboard' })
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"+d', { desc = 'Delete to system clipboard' })
vim.keymap.set('c', '<M-BS>', '<C-w>', { desc = 'Delete last word in command-line' })

-- My settings
vim.g.have_nerd_font = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv 'HOME' .. '/.vim/undodir'

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
vim.opt.formatoptions:append '/'
vim.opt.isfname:append '@-@'
vim.opt.scrolloff = 8
-- Make netrw respect line numbering
vim.g.netrw_bufsettings = 'noma nomod nu rnu nobl nowrap ro'

-- Remember last spot in buffers
vim.api.nvim_create_autocmd({ 'BufWinEnter' }, {
  desc = 'return cursor to where it was last time closing the file',
  pattern = '*',
  command = 'silent! normal! g`"zv',
})

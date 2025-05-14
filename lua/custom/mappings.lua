-- Vim Configurations

-- vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = false -- Don't show the mode since it is already in status line
-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true -- Keeps the search pattern highlighted

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 29
-- Vim Keymappings
-- NOTE: Terminal Bindings
vim.keymap.set('n', '<leader>t', ':terminal<CR>', { desc = 'Terminal Opens a new terminal' })
-- vim.keymap.set_'n', '<leader>t', nvim_open_term(), { desc = 'Terminal Opens a new terminal' }_
-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- WARN: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- Disable the AnsiEsc plugin's keymap, it overlaps with <leader>sw "Treesitter word search"
vim.keymap.del('n', '<leader>swp')
vim.keymap.set('n', '<leader>yf', ':let @+ = expand("%:t")<CR>', { desc = 'Copy Just The FileName to Register', silent = true, noremap = true })
vim.keymap.set('n', '<leader>yp', ':let @+ = expand("%:p")<CR>', { desc = 'Copy Just The Absolute File Path to Register', silent = true, noremap = true })
vim.keymap.set('n', '<leader>yr', ':let @+ = expand("%")<CR>', { desc = 'Copy Relative File Path to Register', silent = true, noremap = true })

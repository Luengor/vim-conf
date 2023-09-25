local telescope = require('telescope.builtin')
local map = vim.keymap.set

-- Add harpoon
require("telescope").load_extension('harpoon')

-- Keymaps
-- TTelescope
map('n', '<leader>tt', telescope.builtin, {})
-- Telescope Files
map('n', '<leader>tf', telescope.find_files, {})
-- Telescope Git
map('n', '<leader>tg', telescope.git_status, {})
-- Telescope Man pages
map('n', '<leader>tm', telescope.man_pages, {})
-- Telescope Diagnostics
map('n', '<leader>td', telescope.diagnostics, {})
-- Telescope Emoji (emoji + nerdfont) 
map('n', '<leader>te', telescope.symbols, {})
-- Telescope workspace Symbols
map('n', '<leader>ts', telescope.lsp_workspace_symbols, {})

-- Telescope Harpoon
vim.api.nvim_set_keymap('n', '<leader>th', ':Telescope harpoon marks<CR>', { noremap = true, silent = true })



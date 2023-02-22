-- general config
require("settings")

-- plugins
require("packer-config")

-- nvim-tree
require('tree-config')

-- lsp/cmp-config 
require('lsp-config')

-- nerdcommenter
vim.api.nvim_set_keymap('n', '++', '<Plug>NERDCommenterToggle', { noremap = false, silent = true })
vim.api.nvim_set_keymap('v', '++', '<Plug>NERDCommenterToggle', { noremap = false, silent = true })

-- -- lspsaga
-- require('lspsaga-config')

-- colorscheme
vim.cmd([[
  colorscheme catppuccin
  set background=dark
]])

-- treesitter
require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "python" },
    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

-- folds
vim.cmd([[
  set foldmethod=manual 
  set foldtext=getline(v:foldstart).'...'.trim(getline(v:foldend))
  set fillchars=fold:\ 
  set foldnestmax=3
  set foldminlines=1

  " Remember folds
  augroup remember_folds
    autocmd!
    autocmd BufWinLeave * mkview
    autocmd BufWinEnter * silent! loadview
  augroup END
]])

-- lualine
require('lualine').setup {
  options = {
    theme = 'catppuccin',
  },
}

-- move
vim.api.nvim_set_keymap('n', '<A-j>', ':MoveLine(1)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-k>', ':MoveLine(-1)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-j>', ':MoveBlock(1)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<A-k>', ':MoveBlock(-1)<CR>', { noremap = true, silent = true })


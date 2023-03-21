-- general config
require("settings")

-- plugins
require("packer-config")

-- nvim-tree
require('tree-config')

-- lsp/cmp-config 
require('lsp-config')

-- telescope
require('telescope-config')

-- Markdown
vim.g.mkdp_page_title = ' ${name} '
--vim.g.mkdp_markdown_css = '/home/luengor/.config/nvim/markdown.css' 

-- nerdcommenter
vim.api.nvim_set_keymap('n', '++', '<Plug>NERDCommenterToggle', { noremap = false, silent = true })
vim.api.nvim_set_keymap('v', '++', '<Plug>NERDCommenterToggle', { noremap = false, silent = true })

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
  set foldmethod=marker
  set foldmarker='==>,<=='
  " set foldtext=getline(v:foldstart).'code:)'.trim(getline(v:foldend))
  set foldtext=getline(v:foldstart)
  set fillchars=fold:\ 
  set foldnestmax=3
  set foldminlines=1

  " " Remember folds
  " augroup remember_folds
  "   autocmd!
  "   autocmd BufWinLeave * mkview
  "   autocmd BufWinEnter * silent! loadview
  " augroup END
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


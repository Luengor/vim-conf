HOME = os.getenv('HOME')


vim.cmd([[
set nocompatible
filetype plugin indent on

syntax on
let mapleader=","

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.o,*.gch
let NvimTreeIgnore = ['\.o$', '\.gch$', '\.elf', '\.smdh']
]])


vim.o.encoding = "utf-8"

-- Bar
vim.o.number = true -- line number on the left
vim.o.relativenumber = true
vim.o.numberwidth = 3 -- always reserve 3 spaces for line number
vim.o.signcolumn = 'yes' -- keep 1 column for coc.vim  check

-- tabs thing 
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- doxygen
vim.g.load_doxygen_syntax = true

-- no perl
vim.g.loaded_perl_provider = false

-- no ruby
vim.g.loaded_ruby_provider = false

-- python3
vim.g.python3_host_prog = '/usr/bin/python3.10'
vim.g.pyhton_highlight_space_errors = false

-- whatever this is (is for tree-nvim)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true


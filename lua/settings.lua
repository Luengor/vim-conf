HOME = os.getenv('HOME')

vim.cmd([[
set nocompatible
filetype plugin indent on

syntax on
let mapleader=","

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.o,*.gch
]])

vim.o.encoding = "utf-8"

-- Bar
vim.o.number = true -- line number on the left
vim.o.relativenumber = true
vim.o.numberwidth = 3 -- always reserve 3 spaces for line number

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
vim.g.python3_host_prog = '/home/tino/.config/nvim/vimvenv/bin/python3.11'
vim.g.pyhton_highlight_space_errors = false


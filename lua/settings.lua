HOME = os.getenv('HOME')

vim.cmd([[
set nocompatible
filetype plugin indent on

set encoding=utf-8
syntax on

set relativenumber
set nu
set signcolumn=yes

set smarttab
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.o,*.gch
let NERDTreeIgnore = ['\.o$', '\.gch$', '\.elf', '\.smdh']

"" no perl 
let g:loaded_perl_provider = 0

"" no ruby
let g:loaded_ruby_provider = 0

"" python3
let g:python3_host_prog = '/usr/bin/python3.10'
let g:python_highlight_space_errors = 0

]])

-- whatever this is (is for tree-nvim)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true


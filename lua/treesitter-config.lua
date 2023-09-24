require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc" },

    auto_install = false,

    -- Consistent syntax highlighting
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}

-- folds thing
vim.api.nvim_create_autocmd({'BufEnter','BufAdd','BufNew','BufNewFile','BufWinEnter'}, {
  group = vim.api.nvim_create_augroup('TS_FOLD_WORKAROUND', {}),
  callback = function()
    vim.opt.foldmethod     = 'expr'
    vim.opt.foldexpr       = 'nvim_treesitter#foldexpr()'
  end
})


require('lsp_signature').setup({
    -- config
    hint_prefix = "☝️ 🤓 ",
    bind = true,
      handler_opts = {
        border = "rounded"
      }
})

vim.keymap.set({ 'n' }, '<C-s>', function()
    require('lsp_signature').toggle_float_win()
end, { silent = true, noremap = true, desc = 'toggle signature' })

vim.keymap.set({ 'n' }, '<Leader>s', function()
    vim.lsp.buf.signature_help()
end, { silent = true, noremap = true, desc = 'toggle signature' })



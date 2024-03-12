require('lsp_signature').setup({
    -- config
    hint_prefix = "☝️ 🤓 ",
    bind = true,
    floating_window = false,
})

vim.keymap.set({ 'n' }, '<C-s>', function()
    require('lsp_signature').toggle_float_win()
end, { silent = true, noremap = true, desc = 'toggle signature' })


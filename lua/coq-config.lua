-- lspconfig
local lspconfig = require('lspconfig')

-- Keymaps 
vim.keymap.set('n', '<space>d', vim.diagnostic.open_float)
vim.keymap.set('n', '<space>D', vim.lsp.buf.definition)
vim.keymap.set('n', '<space>h', vim.lsp.buf.hover)
vim.keymap.set('n', '<space>r', vim.lsp.buf.references)
-- vim.keymap.set('n', '<space>s', vim.lsp.buf.signature_help)


-- coq
-- settings BEFORE require('coq') 
-- (or auto_start won't work)
vim.g.coq_settings = {
    auto_start = 'shut-up',
    ["keymap.jump_to_mark"] = "<c-y>",
    ["limits.completion_manual_timeout"] = 1,
}

local coq = require('coq')


-- Servers
local servers = { 'clangd', 'pyright', 'eslint', 'html', 'cssls', 'cmake', 'arduino_language_server'}
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup(coq.lsp_ensure_capabilities({}))
end

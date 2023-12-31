local lspconfig = require('lspconfig')
local coq = require('coq')

-- Automatically start coq
vim.g.coq_settings = {
    auto_start = 'shut-up',
    ["keymap.jump_to_mark"] = "<c-y>",
    ["limits.completion_manual_timeout"] = 1,
}

-- Servers
local servers = { 'clangd', 'pyright', 'eslint', 'html', 'cssls' }
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup(coq.lsp_ensure_capabilities({}))
end

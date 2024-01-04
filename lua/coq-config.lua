local lspconfig = require('lspconfig')

-- coq settings BEFORE require('coq') 
-- (or auto_start won't work)
vim.g.coq_settings = {
    auto_start = 'shut-up',
    ["keymap.jump_to_mark"] = "<c-y>",
    ["limits.completion_manual_timeout"] = 1,
}

-- coq
local coq = require('coq')

-- Servers
local servers = { 'clangd', 'pyright', 'eslint', 'html', 'cssls', 'lua_ls' }
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup(coq.lsp_ensure_capabilities({}))
end

-- See: https://github.com/neovim/nvim-lspconfig/tree/54eb2a070a4f389b1be0f98070f81d23e2b1a715#suggested-configuration
local opts = { noremap=true, silent=true }
local keymap = vim.keymap.set
local lspconfig = require('lspconfig')

keymap('n', '<space>e', vim.diagnostic.open_float, opts)
keymap('n', '[d', vim.diagnostic.goto_prev, opts)
keymap('n', ']d', vim.diagnostic.goto_next, opts)
keymap('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- -- Enable completion triggered by <c-x><c-o>
  -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  keymap('n', 'gd', vim.lsp.buf.definition, bufopts)
  keymap('n', 'K', vim.lsp.buf.hover, bufopts)
end

-- Configure `vim.diagnostic`.
-- vim.cmd([[au CursorHold * lua vim.diagnostic.open_float(0,{scope = "cursor"})]])
vim.diagnostic.config({
    virtual_text = true,
    update_in_insert = true,    -- Don't need this with the floating window
    signs = true,
    -- float = {border = "single"}
})

-- coq
vim.g.coq_settings =  { auto_start = 'shut-up', ['keymap.jump_to_mark'] = '<c-y>' }
local coq = require('coq')

-- Configure servers
local servers = { 'clangd', 'pyright', 'tsserver', 'jsonls', 'eslint' }
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup(coq.lsp_ensure_capabilities({
        on_atach = on_attach,
    }))
end

-- third party custom coq sources
require("coq_3p") {
    { src = "bc", short_name = "MATH", precision = 6 },
    { src = "figlet", short_name = "BIG" }
}


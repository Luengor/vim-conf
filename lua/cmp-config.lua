local cmp = require('cmp')

-- Setup cmp
cmp.setup({
    -- Set the snippet engine to luasnip
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },

    -- Set sources
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'ctags', trigger_characters = { ".", "->" } },
        { name = 'luasnip' },
        { name = 'nerdfont' },
        { name = 'emoji' },
        { name = 'doxygen' }
    }, {
        { name = 'buffer' },
    }),

    -- Set mappings
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
})

-- Setup lspconfig
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require('lspconfig')

local servers = { 'clangd' }
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        capabilities = capabilities,
    }
end




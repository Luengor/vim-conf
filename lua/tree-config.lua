require("nvim-tree").setup({
    sort_by = "case_sensitive",
    sync_root_with_cwd = true,

    view = {
        mappings = {
            list = {
                { key = "s", action = "vsplit" },
                { key = "v", action = "split" },
                { key = "t", action = "tabnew" },
            },
        },
    },

    renderer = {
        full_name = true,
        group_empty = true,
        special_files = {},
        symlink_destination = false,

        indent_markers = {
            enable = true,
        },
    },
})

vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeFocus<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<C-f>", ":NvimTreeFind<CR>", {noremap = true, silent = true})

-- Start the tree when vim starts
vim.cmd("autocmd VimEnter * NvimTreeToggle")



require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- colorscheme
    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            vim.cmd([[
                colorscheme catppuccin
                set background=dark
            ]])
        end
    }

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use "nvim-treesitter/nvim-treesitter-textobjects"

    -- nvim-neo-tree
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        config = function()
            -- Open tree with <C-n>
            vim.api.nvim_set_keymap('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true })
        end
    }

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function() 
            require('lualine').setup {
                sections = {
                    lualine_a = {'hostname', 'mode'},
                    lualine_b = {'branch', 'diff'},
                    lualine_c = {'diagnostics'},
                    lualine_x = {'searchcount'},
                    lualine_y = {'fileformat', 'encoding', 'filesize'},
                    lualine_z = {'filename', 'filetype'}
                }
            }

        end
    }

    -- harpoon
    use {
        "ThePrimeagen/harpoon",
        requires = {
            "nvim-lua/plenary.nvim"
        },
        config = function() 
            -- Keymaps
            vim.keymap.set('n', '<leader>h', require("harpoon.ui").toggle_quick_menu) 
            vim.keymap.set('n', '<leader>k', require("harpoon.ui").nav_prev) 
            vim.keymap.set('n', '<leader>j', require("harpoon.ui").nav_next) 
            vim.keymap.set('n', '<leader>l', require("harpoon.mark").add_file) 
        end
    }

    -- tmux moving
    use { 
        "alexghergh/nvim-tmux-navigation",
        config = function()
            -- Change the keymaps
            local nvim_tmux_nav = require('nvim-tmux-navigation')
            vim.keymap.set('n', "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
            vim.keymap.set('n', "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
            vim.keymap.set('n', "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
            vim.keymap.set('n', "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)
        end
    }

    -- gitgutter
    use {
        'airblade/vim-gitgutter',
        setup = function()
        end
    }

    -- telescope
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.3',
        requires = {
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep',
        },
    }
    use 'nvim-telescope/telescope-symbols.nvim'

    -- lspconfig
    use 'neovim/nvim-lspconfig'
    
    -- luasnip
    use 'L3MON4D3/LuaSnip'

    -- cmp
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    use 'onsails/lspkind.nvim'
    use 'saadparwaiz1/cmp_luasnip'
    use 'delphinus/cmp-ctags'
    use 'hrsh7th/cmp-emoji'
    use 'chrisgrieser/cmp-nerdfont'
    use 'paopaol/cmp-doxygen'
    use 'hrsh7th/cmp-calc'
end)

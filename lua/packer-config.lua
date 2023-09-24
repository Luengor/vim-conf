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

    -- nvim-neo-tree
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = { 
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
    }

    -- harpoon
    use {
        "ThePrimeagen/harpoon",
        requires = {
            "nvim-lua/plenary.nvim"
        }
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

end)

require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- colorscheme
    use { "catppuccin/nvim", as = "catppuccin" }

    -- telescope
    use {'nvim-telescope/telescope.nvim', tag = '0.1.1'}
    use "nvim-lua/plenary.nvim"

    -- lualine
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    --  treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- tmux like navigation
    use 'christoomey/vim-tmux-navigator'

    -- copilot
    use 'github/copilot.vim'

    -- every language server
    use 'sheerun/vim-polyglot'

    -- move lines
    use 'fedepujol/move.nvim'

    -- nvim-tree 
    use 'nvim-tree/nvim-web-devicons'
    use 'nvim-tree/nvim-tree.lua'
    use 'scrooloose/nerdcommenter'
    
    -- lazygit
    use 'kdheepak/lazygit.nvim'

    -- lsp stuff 
    use 'neovim/nvim-lspconfig'
    use 'glepnir/lspsaga.nvim'
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
end)

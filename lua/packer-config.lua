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
    --use 'christoomey/vim-tmux-navigator'
    use 'knubie/vim-kitty-navigator'

    -- copilot
    use 'github/copilot.vim'

    -- gitgutter
    use 'airblade/vim-gitgutter'

    -- every language server
    use 'sheerun/vim-polyglot'

    -- coq
    use {'ms-jpq/coq_nvim', branch = 'coq'}
    use {'ms-jpq/coq.artifacts', branch = 'artifacts'}

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

    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
end)

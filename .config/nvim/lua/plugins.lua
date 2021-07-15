return require('packer').startup(function()
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {'hrsh7th/nvim-compe', config = [[require('config.nvim-compe')]]}

    -- Language server protocol
    use {'neovim/nvim-lspconfig', config = [[require("config.lspconfig")]]}

    use {'tjdevries/lsp_extensions.nvim', config = [[require("config.lsp_extensions")]]}

    use {'glepnir/lspsaga.nvim', config = [[require("config.lspsaga")]]}

    use {'windwp/nvim-autopairs', config = [[require("config.nvim-autopairs")]]}

    use {'norcalli/nvim-colorizer.lua', config = [[require("config.colorizer")]]}

    use {
        'folke/which-key.nvim',
        config = [[require('config.which-key')]]
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        config = [[require("config.telescope")]]
    }

    use {
        'glepnir/dashboard-nvim',
        require = {'nvim-telescope/telescope.nvim'},
        config = [[require("config.dashboard-nvim")]]
    }

    -- TPOPE 20/10 y GOD
    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'

    -- Fugitive
    use 'tpope/vim-fugitive'

    use {
        'preservim/tagbar',
        config = function()
            vim.api.nvim_set_keymap('n', '<F8>', ':TagbarToggle<cr>', {})
        end
    }

    use {
        'lewis6991/gitsigns.nvim', 
        require = {'nvim-lua/plenary.nvim'},
        config = [[require("config.gitsigns")]]
    }

    use {'famiu/feline.nvim', 
        requires = {'kyazdani42/nvim-web-devicons'},
        config = [[require('config.feline')]]
        }

    -- Snippets
    use {'hrsh7th/vim-vsnip', 
        config = [[require('config.vsnip')]],
        requires = {
            'hrsh7th/vim-vsnip-integ', 
            {'rafamadriz/friendly-snippets', opt=true}
        }
    }

    -- Treesitter
    use {'nvim-treesitter/nvim-treesitter', run = ':call firenvim#install(0)'}

    -- Extra languages
    use 'leafo/moonscript-vim'

    use {'glacambre/firenvim', run = ''}

    -- You can alias plugin names
    use {'dracula/vim', as = 'dracula'}
end)


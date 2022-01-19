return require('packer').startup(function()
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Snippets
    use {'hrsh7th/vim-vsnip', 
        config = [[require('config.vsnip')]],
        requires = {
            'hrsh7th/vim-vsnip-integ', 
            {'rafamadriz/friendly-snippets', opt=true}
        }
    }

    use {'hrsh7th/nvim-cmp', 
        config = [[require('config.nvim-cmp')]],
        requires = {
            {'hrsh7th/cmp-nvim-lsp'},
            {'f3fora/cmp-spell'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-calc'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-vsnip'},
            {'ray-x/cmp-treesitter'}
        }
    }

    -- Language server protocol
    use {'neovim/nvim-lspconfig', config = [[require("config.lspconfig")]]}

    use {'tjdevries/lsp_extensions.nvim', config = [[require("config.lsp_extensions")]]}

    -- Icons for my lsp completions
    use {'onsails/lspkind-nvim', opt=true,
        config = function()
            require('lspkind').init({
                -- enables text annotations
                --
                -- default: true
                with_text = true,

                -- default symbol map
                -- can be either 'default' (requires nerd-fonts font) or
                -- 'codicons' for codicon preset (requires vscode-codicons font)
                --
                -- default: 'default'
                preset = 'default',

                -- override preset symbols
                --
                -- default: {}
                symbol_map = {
                  Text = "",
                  Method = "",
                  Function = "",
                  Constructor = "",
                  Field = "ﰠ",
                  Variable = "",
                  Class = "ﴯ",
                  Interface = "",
                  Module = "",
                  Property = "ﰠ",
                  Unit = "塞",
                  Value = "",
                  Enum = "",
                  Keyword = "",
                  Snippet = "",
                  Color = "",
                  File = "",
                  Reference = "",
                  Folder = "",
                  EnumMember = "",
                  Constant = "",
                  Struct = "פּ",
                  Event = "",
                  Operator = "",
                  TypeParameter = ""
                },
            })
                    end
    }

    use {'glepnir/lspsaga.nvim', config = [[require("config.lspsaga")]]}

    use {'windwp/nvim-autopairs', config = [[require("config.nvim-autopairs")]]}

    use {'norcalli/nvim-colorizer.lua', config = [[require("config.colorizer")]]}

    use {'folke/which-key.nvim',
        config = [[require('config.which-key')]]
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/popup.nvim'},
            {'nvim-lua/plenary.nvim'}
        },
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

    use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}}

    -- Treesitter
    use 'nvim-treesitter/nvim-treesitter'

    -- Extra languages
    use 'leafo/moonscript-vim'

    -- Misc
    use 'andweeb/presence.nvim'

    -- Colorschemes
    use {'dracula/vim', as = 'dracula'}
    use {'mountain-theme/Mountain', rtp = 'vim'}
end)


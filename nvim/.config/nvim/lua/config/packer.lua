
-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- packer can manage itself

    ----- Debugging -----
    use("nvim-telescope/telescope-dap.nvim")
    use("theHamsta/nvim-dap-virtual-text")
    use {
        "rcarriga/nvim-dap-ui",
        requires = { "mfussenegger/nvim-dap" }
    }

    ----- Navigation (harpoon, telescope) -----
    use("theprimeagen/harpoon")
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' }
    }

    ----- Colors (colorscheme, treesitter) -----
    use {
        "rose-pine/neovim",
        as = "rose-pine"
    }
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }

    ----- LSP -----
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    ----- Misc (undotree, fugitive, commentary) -----
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("tpope/vim-commentary")

end)


vim.g.mapleader = " "
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    'wbthomason/packer.nvim', 'morhetz/gruvbox', {
        'nvim-lualine/lualine.nvim',
        dependencies = {'kyazdani42/nvim-web-devicons', opt = true}
    }, "lukas-reineke/indent-blankline.nvim",
    {'nvim-tree/nvim-tree.lua', requires = {'nvim-tree/nvim-web-devicons'}}, {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            {
                'nvim-lua/plenary.nvim',
                "nvim-telescope/telescope-live-grep-args.nvim"
            }
        },

        config = function()
            require("telescope").load_extension("live_grep_args")
        end
    }, {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = true
                -- your configuration comes here
                -- or leave it empty to  the default settings
                -- refer to the configuration section below
            }
        end
    }, {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({
                with_sync = true
            })
            ts_update()
        end
    }, ("nvim-treesitter/playground"), ("mbbill/undotree"),
    ("tpope/vim-fugitive"), ("nvim-treesitter/nvim-treesitter-context"),
    ("sbdchd/neoformat"), {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = { -- LSP Support
            {'neovim/nvim-lspconfig'}, {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'}, -- Autocompletion
            {'hrsh7th/nvim-cmp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'}, {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'}, {'hrsh7th/cmp-nvim-lsp-signature-help'}, -- Snippets
            {'L3MON4D3/LuaSnip'}, {'rafamadriz/friendly-snippets'},
            {"ray-x/lsp_signature.nvim"}
        }
    }, "MunifTanjim/eslint.nvim", "petrbroz/vim-glsl"
})

require("williammu6")


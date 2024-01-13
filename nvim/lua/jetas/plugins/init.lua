return {
    {
        "williamboman/mason.nvim",
        config = function()
            
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    },
    {
        "rebelot/kanagawa.nvim"
    },
    {
        "catppuccin/nvim",
        as = "catppuccin"
    },

    {
        'ghifarit53/tokyonight-vim',
        lazy = false,
        config = function()
            vim.cmd [[let g:tokyonight_style = 'night']]
            vim.cmd [[let g:tokyonight_enable_italic = 1]]
            vim.cmd [[colorscheme tokyonight]]
        end
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
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
    },
    {
        'nvim-tree/nvim-tree.lua',
        dependencies = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        cmd = {
            'NvimTreeToggle',
            'NvimTreeOpen',
            'NvimTreeClose',
            'NvimTreeRefresh',
            'NvimTreeFindFile'
        },
        config = function()

        end
    },
    {
        'wakatime/vim-wakatime'
    },
    {
        'rcarriga/nvim-notify',
        config = function()
            vim.notify = require("notify")
        end
    },
    {"nvim-lua/popup.nvim"},
    {
        "nvim-lua/plenary.nvim"
    },
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
        config = function()

        end
    },
    {
        'ziglang/zig.vim'
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },
    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function()
            require('lualine').setup {

                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {'branch'},
                    lualine_c = {'filename'},
                    lualine_x = {'encoding', 'fileformat', 'filetype'},
                    lualine_y = {'progress'},
                    lualine_z = {'location'}
                },
                inactive_sections = {
                    lualine_a = {},
                    lualine_b = {},
                    lualine_c = {'filename'},
                    lualine_x = {'location'},
                    lualine_y = {},
                    lualine_z = {}
                },
                tabline = {},
                winbar = {},
                inactive_winbar = {},
                extensions = {}
            }
        end
    },
    {
        "github/copilot.vim"
    },
    {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require'hop'.setup()
        end
    }
}

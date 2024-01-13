require('nvim-treesitter.configs').setup {
    sync_install = false,
    auto_install = true,
    ignore_install = { "javascript" },
    ensure_installed = {
        'c',
        'lua',
        'cpp',
        'python',
        'zig',
        'rust',
        'typescript',
        'tsx',
        'vim'
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },

    indent = {
        enable = true,
    }
}
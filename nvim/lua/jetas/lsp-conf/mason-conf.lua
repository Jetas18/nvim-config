require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "pyright", "ltex", "gopls", "lua_ls" },
}

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
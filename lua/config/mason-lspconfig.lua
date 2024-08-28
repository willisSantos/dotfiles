require("mason").setup()
require("mason-lspconfig").setup {
	ensure_installed = { "lua_ls", "clangd" }
}

require("lspconfig").clangd.setup {}
require("lspconfig").lua_ls.setup {}

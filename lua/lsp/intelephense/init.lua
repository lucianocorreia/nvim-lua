local nvim_lsp = require('lspconfig')

require'lspconfig'.intelephense.setup{
	on_attach = require'nv-lspconfig'.on_attach,
	cmd = { "intelephense", "--stdio" },
    filetypes = { "php" },
    root_dir = nvim_lsp.util.root_pattern("composer.json", ".git"),
}

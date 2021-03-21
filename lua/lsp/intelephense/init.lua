local nvim_lsp = require('lspconfig')

require'lspconfig'.intelephense.setup{
	on_attach = require'nv-lspconfig'.common_on_attach,
}

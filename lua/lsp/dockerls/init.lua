local nvim_lsp = require('lspconfig')

require'lspconfig'.dockerls.setup{
	on_attach = require'nv-lspconfig'.on_attach,
	cmd = { "docker-langserver", "--stdio" },
    filetypes = { "Dockerfile", "dockerfile", },
    root_dir = nvim_lsp.util.root_pattern("dockerfile"),
}

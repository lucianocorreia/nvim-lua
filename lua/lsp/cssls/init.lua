local nvim_lsp = require('lspconfig')

require'lspconfig'.cssls.setup{
	on_attach = require'nv-lspconfig'.on_attach,
	cmd = { "css-languageserver", "--stdio" },
    filetypes = { "css", "scss", "less" },
    root_dir = nvim_lsp.util.root_pattern("package.json"),
    settings = {
      css = {
        validate = true
      },
      less = {
        validate = true
      },
      scss = {
        validate = true
      }
    }
}

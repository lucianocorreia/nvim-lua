local nvim_lsp = require('lspconfig')

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup{
	on_attach = require'nv-lspconfig'.on_attach,
	pcapabilities = capabilities,
	cmd = { "html-languageserver", "--stdio" },
    filetypes = { "html" },
    init_options = {
      configurationSection = { "html", "css", "javascript" },
      embeddedLanguages = {
        css = true,
        javascript = true
      }
    },
    root_dir = function(fname)
          return nvim_lsp.util.root_pattern(fname) or vim.loop.os_homedir()
        end;
    settings = {}
}

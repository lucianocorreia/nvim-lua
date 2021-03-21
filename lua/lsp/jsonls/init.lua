local nvim_lsp = require('lspconfig')

require'lspconfig'.jsonls.setup {
    commands = {
      Format = {
        function()
          vim.lsp.buf.range_formatting({},{0,0},{vim.fn.line("$"),0})
        end
      }
    },
	--[[ settings = {
		cmd = { "vscode-json-languageserver", "--stdio" },
		filetypes = { "json" },
		init_options = {
		  provideFormatter = true
		},
		root_dir = nvim_lsp.util.root_pattern(".git", vim.fn.getcwd())

	} ]]
}

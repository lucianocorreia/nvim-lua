-- General
require('plugins')
require('keybindings')
require('settings')

-- Plugins
require('nv-colorizer')
require('nv-bufferline')
require('nv-nvimtree')
require('nv-treesitter')
require('nv-gitsigns')
require('nv-autopairs')
require('nv-telescope')
require('nv-lualine')
require('nv-kommentary')
require('nv-closetag')
require('nv-snippets')
-- require('nv-lightbulb')

-- LSP
-- require('nv-compe') -- usando o completion agora
-- require('nv-completion')
require('nv-lspconfig')
require('lsp.efmls')
require('lsp.gopls')
require('lsp.tsserver')
require('lsp.angularls')
require('lsp.cssls')
require('lsp.dockerls')
require('lsp.htmlls')
require('lsp.intelephense')
require('lsp.jsonls')
require('lsp.yamlls')
require('lsp.vuels')

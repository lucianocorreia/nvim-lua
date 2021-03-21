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

-- LSP
require('nv-compe')
-- require('nv-completion')
require('nv-lspconfig')
require('lsp.ts-server')
require('lsp.go-gopls')


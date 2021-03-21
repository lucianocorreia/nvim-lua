
-- npm install -g dockerfile-language-server-nodejs
require'lspconfig'.dockerls.setup {on_attach = require'nv-lspconfig'.common_on_attach}

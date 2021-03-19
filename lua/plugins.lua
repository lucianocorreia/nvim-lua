local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}
    use 'kyazdani42/nvim-web-devicons' -- icons 
    use 'kyazdani42/nvim-tree.lua' -- tree
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'hrsh7th/vim-vsnip'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	
    use { 'glepnir/galaxyline.nvim', branch = 'main', config = function() require'my_statusline' end }

    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } } }

end)


local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    -- Packer can manage itself as an optional plugin
    use { 'wbthomason/packer.nvim', opt = true }

	use 'christianchiarulli/nvcode-color-schemes.vim'
	use 'gruvbox-community/gruvbox'
    use 'norcalli/nvim-colorizer.lua'

	use 'windwp/nvim-autopairs'
    use 'kyazdani42/nvim-web-devicons' -- icons 
    use 'kyazdani42/nvim-tree.lua' -- tree
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'glepnir/lspsaga.nvim'
    use 'onsails/lspkind-nvim'

	-- use 'kosayoda/nvim-lightbulb'
    use 'golang/vscode-go'
    use 'rust-lang/vscode-rust'

	use 'norcalli/snippets.nvim'

	use 'windwp/nvim-ts-autotag'
	use {'iamcco/markdown-preview.nvim', run = 'cd app && npm install'}
	use 'terryma/vim-multiple-cursors'

	use 'nvim-lua/completion-nvim'
    use 'hrsh7th/vim-vsnip'
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use { 'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons' }
	use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
 	use { 'hoob3rt/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } } 
    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } } }
	use 'b3nj5m1n/kommentary'
	use 'mhinz/vim-startify'

end)


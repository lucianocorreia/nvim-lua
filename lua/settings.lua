local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- global options
o.tabstop = 4
o.shiftwidth = 4
o.hlsearch = false
o.foldlevelstart = 4 -- auto code folding when openeing new file at level 1
o.mouse = 'a'
o.backup = false
o.writebackup = true
o.swapfile = false
o.updatetime = 300
o.shortmess = vim.o.shortmess .. 'c'
o.completeopt = 'menuone,noinsert'
o.guifont='Cascadia Code, FiraCode, Nerd Font'
o.cursorline = true
o.smartcase = true
o.ignorecase = true
o.inccommand = 'nosplit'
o.splitright = true
o.splitbelow = true
o.hidden = true
o.background = 'dark'
o.termguicolors = true
o.clipboard='unnamedplus'
o.undodir = '~/.config/nvim/undodir'
o.cmdheight = 2

-- window-local options
wo.number = true
wo.relativenumber = true
wo.wrap = false
wo.signcolumn = 'number'
wo.scrolloff = 15

-- buffer options
bo.keymap = 'accents'
bo.shiftwidth = 4
bo.expandtab = true
bo.fileencoding= 'utf-8'


------- Commands ------- 

-- corlorscheme
vim.cmd('colorscheme nvcode');

-- highlight the current cursor line
vim.api.nvim_exec([[
	au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
]], false)

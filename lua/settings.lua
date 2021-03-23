local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- global options
o.tabstop = 4
o.shiftwidth = 4
o.hlsearch = true 
o.foldlevelstart = 4 -- auto code folding when openeing new file at level 1
o.mouse = 'a'
o.backup = false
o.writebackup = false 
o.swapfile = false
o.updatetime=300                      --Faster completion
--o.timeoutlen=100
o.shortmess = vim.o.shortmess .. 'c'
o.completeopt = 'menuone,noinsert'
o.guifont='Fira\\ Code, Cascadia Code, FiraCode, Nerd Font'
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
wo.signcolumn = 'yes'
wo.scrolloff = 15

-- buffer options
bo.keymap = 'accents'
bo.shiftwidth = 4
bo.expandtab = true
bo.fileencoding= 'utf-8'

------- Commands ------- 

vim.cmd('set ts=4')                           --Insert 2 spaces for a tab
vim.cmd('set sw=4')                        --Change the number of space characters inserted for indentation

-- corlorscheme
vim.cmd('let g:nvcode_termcolors=256')
vim.cmd('colorscheme gruvbox');


-- highlight the current cursor line
vim.api.nvim_exec([[
	au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
]], false)

--[[ vim.fn.sign_define("LspDiagnosticsSignError", { textml = "LspDiagnosticsSignError", text = "✘", numhl = "LspDiagnosticsSignError" })
vim.fn.sign_define("LspDiagnosticsSignWarning", { textml = "LspDiagnosticsSignWarning", text = "ℹ", numhl = "LspDiagnosticsSignWarning" })
vim.fn.sign_define("LspDiagnosticsSignInformation", { textml = "LspDiagnosticsSignInformation", text = "ℹ", numhl = "LspDiagnosticsSignInformation" })
vim.fn.sign_define("LspDiagnosticsSignHint", { textml = "LspDiagnosticsSignHint", text = "➤", numhl = "LspDiagnosticsSignHint" }) ]]



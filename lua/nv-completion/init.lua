vim.api.nvim_exec([[
	autocmd BufEnter * lua require'completion'.on_attach()
]], false)

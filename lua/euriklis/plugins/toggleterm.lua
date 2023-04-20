local status_on, toggleterm = pcall(require, "toggleterm")
if not status_on then
	return
end

toggleterm.setup({
	open_mapping = "<C-g>",
	direction = "float",
	float_opts = {
		border = "double",
		winblend = 10,
		width = 80,
		height = 40,
	},
	shade_terminals = false,
	winbar = {
		enabled = true,
		name_formatter = function(term) --  term: Terminal
			return term.name
		end,
	},
})
function _G.set_terminal_keymap()
	local opts = { noremap = true }
	vim.api.nvim_buf_set_keymap(0, "t", "<ESC>", [[<C-g><C-n>]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-h>", [[<C-g><C-n><C-W>h]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-l>", [[<C-g><C-n><C-W>l]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-k>", [[<C-g><C-n><C-W>k]], opts)
	vim.api.nvim_buf_set_keymap(0, "t", "<C-j>", [[<C-g><C-n><C-W>j]], opts)
end
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymap()")
local Terminal = require("toggleterm.terminal").Terminal
local node = Terminal:new({ cmd = "node", hidden = true })
function NODE()
	node:toggle()
end
local htop = Terminal:new({ cmd = "htop", hidden = true })
function HTOP()
	htop:toggle()
end
local python = Terminal:new({ cmd = "python3", hidden = true })
function PYTHON()
	python:toggle()
end
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true, count = 5 })
function LAZYGIT()
	lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua LAZYGIT()<CR>", { noremap = true, silent = true })

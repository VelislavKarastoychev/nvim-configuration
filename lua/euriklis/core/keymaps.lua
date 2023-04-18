vim.g.mapleader = " "
local keymap = vim.keymap -- get instance of the keymap

-- basic keymaps:

-- when you are in insert mode
-- and press the key combination
-- of "jk", then the result will
-- b equivalent to pressing of
-- the ESCAPE key or setting of
-- the nvim to "normal mode", so
-- if you want to press the
-- combination "jk", then press
-- the "j" and wait for 2 seconds
-- and then press the "k".
keymap.set("i", "jk", "<ESC>")
-- clean the highlighting of the search
-- results in normal mode
keymap.set("n", "<leader>nh", ":nohl<CR>")
-- when you press the x in normal mode,
-- then only delete the word without
-- any storage...
keymap.set("n", "x", '"_x')
-- increment numbers
keymap.set("n", "<leader>+", "<C-a>")
-- decrement numbers
keymap.set("n", "<leader>-", "<C-x>")
-- split the window horizontally:
keymap.set("n", "<leader>sh", "<C-w>s")
-- split the window vertically:
keymap.set("n", "<leader>sv", "<C-w>v")
-- equalize the width of the windows:
keymap.set("n", "<leader>se", "<C-w>=")
-- close the current window:
keymap.set("n", "<leader>sx", ":close<CR>")
-- in normal mode when you press the key combination
-- <leader>to, then a new tabe will be opended:
keymap.set("n", "<leader>to", ":tabnew<CR>")
-- in hte normal mode when you press the key combination
-- <leader>tn, then the next tab will be present
keymap.set("n", "<leader>tn", ":tabn<CR>")
-- in the normal mode when you prress the key combination
-- <leader>tp the previous tab will be displayed:
keymap.set("n", "<leader>tp", ":tabp<CR>")
-- in the normal mode, when you press the key combination
-- <leader>tx, then the current tab will be closed:
keymap.set("n", "<leader>tx", ":tabclose<CR>")

-- plugin keymaps:

-- in normal mode when you press the key combination
-- <leader>sm, then the window which was splitted will
-- be maximized:
keymap.set("n", "<leader>", ":MaximizerToggle<CR>")
-- set the keymap for the nerd tree:
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- tesescope:
-- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
-- find string in current working directory as you type
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
-- find string under cursor in current working directory
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
-- list open buffers in current neovim instance
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
-- list available help tags
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
-- set the horizontal terminal:
keymap.set("n", "<leader>vt", ":vnew<CR>:terminal<CR>i")
-- open horizontal terminal:
keymap.set("n", "<leader>ht", ":new<CR>:terminal<CR>i")
-- close the terminal:
keymap.set("t", "<leader>sx", "<C-D><CR><CR>")

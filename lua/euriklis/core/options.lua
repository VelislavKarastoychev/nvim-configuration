-- call the options from the 
-- global vim variable...
local opt = vim.opt
-- set the line numbers...
opt.number = true

-- tabs and identation:
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings:

opt.ignorecase = true
opt.smartcase = true

-- set a cursor line:
opt.cursorline = true

-- appearance:
opt.termguicolors = true
opt.background = 'dark'
opt.signcolumn = 'yes'


-- vackspace key
opt.backspace = 'indent,eol,start'

-- clipboard

opt.clipboard:append('unnamedplus')
-- split the window:
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

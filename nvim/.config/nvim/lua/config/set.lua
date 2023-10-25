-- 4 spaces for indentation
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

-- Line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Fat cursor during insert mode
vim.opt.guicursor = ""

-- Disable smart indents
vim.opt.smartindent = false

-- Enable line wrap
vim.opt.wrap = true

-- Don't backup files, instead make undotree have a "long memory"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Search settings
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Pretty colors
vim.opt.termguicolors = true

-- Scroll stuff
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Faster updatetime
vim.opt.updatetime = 50

-- Turn off relative line numbers when entering insert mode (turn them back on when exiting)
vim.cmd [[
augroup RelativeNumberToggle
  autocmd!
  autocmd InsertEnter * set norelativenumber
  autocmd InsertLeave * set relativenumber
augroup END
]]


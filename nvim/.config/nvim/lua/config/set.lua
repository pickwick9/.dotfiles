-- Line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- 4 spaces for indentation
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.cmd [[
augroup IndentationSettings
  autocmd!
  autocmd BufRead,BufNewFile * setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
  autocmd FileType python,rust,markdown setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab
augroup END
]]

-- Enable smart indents
vim.opt.smartindent = true

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


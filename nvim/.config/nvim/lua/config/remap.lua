-- Set <leader> to spacebar
vim.g.mapleader = " "

-- Open netrw in the directory of the current file in the current window.
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move the selected block one line up/down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- Scroll window up/down by half the number of lines displayed
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

-- Repeatable paste and replace (without the yank register getting updated with what was delete/replaced)
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Copy the current line or selected text into the system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Delete the current line or selected block without storing it in the yank register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Move forward/backward through the quickfix list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")

-- Move forward/backward through the location list
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Find and replace all (whole words not substrings) in the current file (case sensitive)
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Don't do anything if Q is invoked (so you don't accidentally enter Ex mode)
vim.keymap.set("n", "Q", "<nop>")

-- ill figure this out later (or delete it if I end up start entering configuration hell)
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

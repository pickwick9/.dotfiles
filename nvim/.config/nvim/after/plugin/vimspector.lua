vim.keymap.set("n", "<leader>dd", ":call vimspector#Launch()<CR>")
vim.keymap.set("n", "<leader>de", ":call vimspector#Reset()<CR>")
vim.keymap.set("n", "<leader>dc", ":call vimspector#Continue()<CR>")

vim.keymap.set("n", "<leader>dt", ":call vimspector#ToggleBreakpoint()<CR>")
vim.keymap.set("n", "<leader>dT", ":call vimspector#ClearBreakpoints()<CR>")

vim.keymap.set("n", "<leader>dk", "<Plug>VimspectorRestart")
vim.keymap.set("n", "<leader>dh", "<Plug>VimspectorStepOut")
vim.keymap.set("n", "<leader>dl", "<Plug>VimspectorStepInto")
vim.keymap.set("n", "<leader>dj", "<Plug>VimspectorStepOver")

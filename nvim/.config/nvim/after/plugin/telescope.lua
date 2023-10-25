local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', function() builtin.find_files({ hidden = true }) end, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})

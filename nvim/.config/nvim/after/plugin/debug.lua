----- Setup -----
require("dapui").setup()
require("nvim-dap-virtual-text").setup()
require('telescope').load_extension('dap')

----- Symbols -----
vim.fn.sign_define("DapBreakpoint", {text="🔴"})
vim.fn.sign_define("DapStopped", {text="🟢"})

----- Keymaps -----
vim.keymap.set("n", "<leader>dt", ":lua require('dapui').toggle()<CR>")
vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<leader>dc", ":DapContinue<CR>")
vim.keymap.set("n", "<leader>dh", ":DapStepOut<CR>")
vim.keymap.set("n", "<leader>dl", ":DapStepInto<CR>")
vim.keymap.set("n", "<leader>dj", ":DapStepOver<CR>")
vim.keymap.set("n", "<leader>df", ":Telescope dap frames <CR>")

----- DAP stuff -----
local dap = require('dap')

dap.adapters.gdb = {
    type = "executable",
    command = "gdb",
    args = { "-i", "dap" }
}

dap.configurations.rust = {
    {
        name = "Launch",
        type = "gdb",
        request = "launch",
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = "${workspaceFolder}",
    },
}


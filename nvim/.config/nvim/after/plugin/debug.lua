vim.fn.sign_define("DapBreakpoint", {text="🔴"})
vim.fn.sign_define("DapStopped", {text="🟢"})

-- Godot/GDScript
local dap = require("dap")
dap.adapters.godot = {
  type = "server",
  host = "127.0.0.1",
  port = 6006,
}
dap.configurations.gdscript = {
  {
    type = "godot",
    request = "launch",
    name = "Launch scene",
    project = "${workspacefolder}",
    launch_scene = true,
  }
}

-- Keymaps
vim.keymap.set("n", "<leader>dt", ":lua require('dapui').toggle()<CR>")
vim.keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<leader>dc", ":DapContinue<CR>")
vim.keymap.set("n", "<leader>dh", ":DapStepOut<CR>")
vim.keymap.set("n", "<leader>dl", ":DapStepInto<CR>")
vim.keymap.set("n", "<leader>dj", ":DapStepOver<CR>")

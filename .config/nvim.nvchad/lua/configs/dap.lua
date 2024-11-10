local map = vim.keymap.set

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle DAP breakpoint" })

map("n", "<leader>dc", "<cmd> DapContinue <CR>", { desc = "Start and continue DAP" })

map("n", "<leader>ds", "<cmd> DapStepInto <CR>", { desc = "DAP step into" })

map("n", "<leader>do", "<cmd> DapStepOver <CR>", { desc = "DAP step over" })

map("n", "<leader>dO", "<cmd> DapStepOut <CR>", { desc = "DAP step out" })

map("n", "<leader>de", "<cmd> DapEval <CR>", { desc = "DAP evaluate" })

map("n", "<leader>dt", "<cmd> DapTerminate <CR>", { desc = "DAP terminate" })
vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg = 0, fg = "#993939", bg = "#31353f" })
vim.api.nvim_set_hl(0, "DapLogPoint", { ctermbg = 0, fg = "#61afef", bg = "#31353f" })
vim.api.nvim_set_hl(0, "DapStopped", { ctermbg = 0, fg = "#98c379", bg = "#31353f" })
vim.fn.sign_define(
  "DapBreakpoint",
  { text = "", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
)
vim.fn.sign_define(
  "DapBreakpointCondition",
  { text = "ﳁ", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
)
vim.fn.sign_define(
  "DapBreakpointRejected",
  { text = "", texthl = "DapBreakpoint", linehl = "DapBreakpoint", numhl = "DapBreakpoint" }
)
vim.fn.sign_define(
  "DapLogPoint",
  { text = "", texthl = "DapLogPoint", linehl = "DapLogPoint", numhl = "DapLogPoint" }
)
vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStopped", linehl = "DapStopped", numhl = "DapStopped" })

local map = vim.keymap.set

map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle DAP breakpoint" })

map("n", "<leader>dc", "<cmd> DapContinue <CR>", { desc = "Start and continue DAP" })

map("n", "<leader>ds", "<cmd> DapStepInto <CR>", { desc = "DAP step into" })

map("n", "<leader>do", "<cmd> DapStepOver <CR>", { desc = "DAP step over" })

map("n", "<leader>dO", "<cmd> DapStepOut <CR>", { desc = "DAP step out" })

map("n", "<leader>de", "<cmd> DapEval <CR>", { desc = "DAP evaluate" })

map("n", "<leader>dt", "<cmd> DapTerminate <CR>", { desc = "DAP terminate" })

require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "WW", "<cmd> w! <CR>", { desc = "Save file" })
map("n", "QQ", "<cmd> q! <CR>", { desc = "Quit without saving" })
map("n", "WQ", "<cmd> wqa <CR>", { desc = "Save and quit" })
map("n", "<C-e>", "$", opts)
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!local api = vim.api
local o = vim.o
local api = vim.api
-- o.cursorlineopt ='both' -- to enable cursorline!
o.scrolloff = 10
o.mouse = "a"
-- set highlight on yanked lines and text

api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", {}),
  desc = "Hightlight selection on yank",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank { higroup = "IncSearch", timeout = 500 }
  end,
})

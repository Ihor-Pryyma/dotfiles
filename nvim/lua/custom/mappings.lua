local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"},
    ["<leader>dc"] = {"<cmd> DapContinue <CR>"},
    ["<leader>dd"] = {"<cmd> DapToggle <CR>"},
    ["<leader>de"] = {"<cmd> DapStepOver <CR>"},
    ["<leader>di"] = {"<cmd> DapStepInto <CR>"},
    ["<leader>do"] = {"<cmd> DapStepOut <CR>"},
    ["<leader>dl"] = {"<cmd> DapRunLast <CR>"},
    ["<leader>ds"] = {"<cmd> DapTerminate <CR>"},
    ["<leader>du"] = {"<cmd> DapUIToggle <CR>"},
    ["<leader>dx"] = {"<cmd> DapUIVariables <CR>"},
    ["<leader>dz"] = {"<cmd> DapUIBreakpoints <CR>"},
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function ()
        require("dap-python").test_method()
      end
    }
  }
}

-- M.lazygit = {
--   plugin = true,
--   n = {
--     [";c"] = {"<cmd> LazyGit <CR>"},
--   }
-- }

-- M.tmux_navigator = {
--   plugin = true,
--   n = {
--     ["<C-h>"] = {"<cmd> TmuxNavigateLeft <CR>"},
--     ["<C-j>"] = {"<cmd> TmuxNavigateDown <CR>"},
--     ["<C-k>"] = {"<cmd> TmuxNavigateUp <CR>"},
--     ["<C-l>"] = {"<cmd> TmuxNavigateRight <CR>"},
--   }
-- }

M.general = {
  i = {
    ["jk"] = {"<ESC>"},
  },
  n = {
    ["WW"] = {"<cmd> w! <CR>"},
    ["QQ"] = {"<cmd> q! <CR>"},
    ["WQ"] = {"<cmd> wqa <CR>"},
    ["E"] = {"$"},
    ["B"] = {"^"},
    ["<C-a>"] = {"1,$"},
    ["<leader><leader>"] = {"<cmd> nohlsearch <CR>"},
    -- ["<C-k>"] = {":wincmd k<CR>"},
    -- ["<C-j>"] = {":wincmd j<CR>"},
    -- ["<C-h>"] = {":wincmd h<CR>"},
    -- ["<C-l>"] = {":wincmd l<CR>"},
  },
}

return M

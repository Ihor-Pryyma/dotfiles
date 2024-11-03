local function get_python_path()
  if os.getenv "VIRTUAL_ENV" then
    return os.getenv "VIRTUAL_ENV" .. "/bin/python"
  else
    return "python3"
  end
end
require("dap-python").setup(path)

local dap = require "dap"
dap.adapters.python = {
  type = "executable",
  command = get_python_path(),
  args = { "-m", "debugpy.adapter" },
}
dap.configurations.python = {
  {
    type = "python",
    request = "launch",
    name = "Launch file",
    program = "${file}",
    pythonPath = function()
      return get_python_path()
    end,
    cwd = vim.fn.getcwd(),
  },
  {
    type = "python",
    request = "launch",
    name = "Launch @tests",
    program = "${file}",
    args = { "--tags", "test" },
    pythonPath = function()
      return get_python_path()
    end,
    cwd = vim.fn.getcwd(),
  },
  {
    type = "python",
    request = "launch",
    name = "Launch @sanity",
    program = "${file}",
    args = { "--tags", "sanity" },
    pythonPath = function()
      return get_python_path()
    end,
    cwd = vim.fn.getcwd(),
  },
}
local map = vim.keymap.set

map("n", "<leader>dpr", function()
  require("dap-python").test_method()
end, { desc = "Run DAP Python test method" })

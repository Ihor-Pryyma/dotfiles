local function get_python_path()
  if os.getenv "VIRTUAL_ENV" then
    return os.getenv "VIRTUAL_ENV" .. "/bin/python"
  else
    return "python3"
  end
end
require("dap-python").setup(path)

local map = vim.keymap.set

map("n", "<leader>dpr", function()
  require("dap-python").test_method()
end, { desc = "Run DAP Python test method" })

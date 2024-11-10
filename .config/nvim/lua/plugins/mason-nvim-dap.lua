local function get_python_path()
  if os.getenv "VIRTUAL_ENV" then
    return os.getenv "VIRTUAL_ENV" .. "/bin/python"
  else
    return "python3"
  end
end
return {
  "jay-babu/mason-nvim-dap.nvim",
  opts = {
    handlers = {
        python = function(source_name)
        local dap = require("dap")
        dap.adapters.python = {
          type = "executable",
          command = get_python_path(),
          args = {
            "-m",
            "debugpy.adapter",
          },
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
    args = { "--tags", "tests" },
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
      end,
    },
  },
}

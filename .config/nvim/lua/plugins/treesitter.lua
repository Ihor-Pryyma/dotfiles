
-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "python",
      "typescript",
      "javascript",
      "json",
      "html",
      "css",
      "bash",
      "yaml",
      "toml",
      -- add more arguments for adding more treesitter parsers
    },
  },
}

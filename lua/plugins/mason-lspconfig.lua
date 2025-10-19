return {
  "williamboman/mason-lspconfig.nvim",
  lazy = false,
  opts = {
    ensure_installed = {
      -- C++
      "clangd",

      -- LaTeX
      "texlab",

      -- lua
      "lua_ls",

      -- python
      "ruff",
      "pyright", -- require npm
    },
  },
}

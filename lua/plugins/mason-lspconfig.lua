return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    ensure_installed = {
      -- C++
      "clangd",

      -- lua
      "lua_js",

      -- python
      "black",
      "ruff",
      "mypy",
      "pyright", -- require npm
    },
  },
}

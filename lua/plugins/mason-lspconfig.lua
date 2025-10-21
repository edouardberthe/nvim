return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  opts = {
    ensure_installed = {
      -- C++
      "clangd",

      -- LaTeX
      "texlab",

      -- lua
      "lua-language-server",

      -- python
      "black",
      "mypy",
      "pyright", -- require npm
      "ruff",

      -- rust
      "rust_analyzer",
    },
  },
}

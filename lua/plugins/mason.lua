return {
  {
    "mason-org/mason.nvim",
  },
  {
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
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "mason-org/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    opts = {
      ensure_installed = {
        "black",
        "ruff",
        "mypy",
      },
    },
    automatic_installation = true,
  },
}

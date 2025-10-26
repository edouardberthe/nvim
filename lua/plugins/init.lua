return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    opts = require "configs.lspconfig",
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = require "configs.telescope",
  },
  {
    "benomahony/uv.nvim",
    opts = {},
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    opts = require "configs.treesitter",
  },
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require "null-ls"
      null_ls.setup {
        sources = {
          null_ls.builtins.formatting.black,
          -- null_ls.builtins.diagnostics.ruff,
        },
      }
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    config = function()
      local null_ls = require "null-ls"
      null_ls.setup {
        sources = {
          null_ls.builtins.formatting.black,
          -- null_ls.builtins.diagnostics.ruff,
        },
      }
    end,
  },
}

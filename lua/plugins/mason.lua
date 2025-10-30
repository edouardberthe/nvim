return {
  {
    "mason-org/mason.nvim",
    lazy = false,
    opts = {},
    build = ":MasonInstallAll",
    dependencies = {
      "NvChad/NvChad",
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = require "configs.mason-lspconfig",
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "mason-org/mason.nvim",
      "nvimtools/none-ls.nvim",
    },
    opts = require "configs.mason-null-ls",
  },
}

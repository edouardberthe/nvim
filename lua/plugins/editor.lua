return {
  -- 1. Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    opts = require "configs.treesitter",
  },
  -- 2. LSP
  {
    "neovim/nvim-lspconfig",
    opts = require "configs.lspconfig-config",
  },
  -- null-ls: using LSP from no-LSP
  {
    "nvimtools/none-ls.nvim",
    config = require "configs.none-ls",
  },
  -- 3. Formatting
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  -- `x` vs `d`
  {
    "gbprod/cutlass.nvim",
    lazy = false,
    opts = {
      cut_key = "x",
    },
  },
  -- `s` substitute command
  {
    "gbprod/substitute.nvim",
    lazy = false,
    opts = {},
  },
  -- `ys`, `cs`, `ds`
  {
    "kylechui/nvim-surround",
    lazy = false,
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    opts = {},
  },
  -- extend `a` and `i` text objects selectors
  {
    "nvim-mini/mini.ai",
    lazy = false,
    opts = {},
  },
  {
    "smjonas/inc-rename.nvim",
    opts = {},
    lazy = false,
  },
    {
        "chentoast/marks.nvim",
        event = "VeryLazy",
        opts = {}
    }
}

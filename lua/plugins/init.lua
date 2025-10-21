return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  "vladdoster/remember.nvim",
  {
    "gbprod/cutlass.nvim",
    lazy = false,
    opts = {
      cut_key = "x",
    },
  },
  {
    "gbprod/substitute.nvim",
    lazy = false,
    opts = {},
  },
  "latex-lsp/texlab",
  "https://codeberg.org/FelipeLema/cmp-async-path",
}

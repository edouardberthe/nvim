return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      filters = {
        custom = {
          -- "^\\.git",
        },
      },
    },
  },
  "nvim-treesitter/nvim-treesitter-textobjects",
  {
    "GustavEikaas/easy-dotnet.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
      require("easy-dotnet").setup()
    end,
  }, -- },
  {
    "lervag/vimtex",
    lazy = false, -- pour charger immédiatement
    config = function()
      vim.g.vimtex_view_method = "skim"
      -- vim.g.vimtex_compiler_method = "latexmk"
      vim.g.tex_flavor = "latex"
    end,
  },
}

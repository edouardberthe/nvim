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
  "nvim-treesitter/nvim-treesitter-textobjects",
  -- {
  --   "lewis6991/gitsigns.nvim",
  --   enabled = false,
  -- },
  "vladdoster/remember.nvim",
  {
    "svermeulen/vim-cutlass",
    lazy = false,
  },
  {
    "svermeulen/vim-subversive",
    lazy = false,
  },
  -- {
  --   "GustavEikaas/easy-dotnet.nvim",
  --   dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  --   config = function()
  --     require("easy-dotnet").setup()
  --   end,
  -- }, -- },
  {
    "latex-lsp/texlab",
  },
  {
    "https://codeberg.org/FelipeLema/cmp-async-path",
  },
}

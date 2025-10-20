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
  "vladdoster/remember.nvim",
  {
    "svermeulen/vim-cutlass",
    lazy = false,
  },
  {
    "svermeulen/vim-subversive",
    lazy = false,
  },
  "latex-lsp/texlab",
  "https://codeberg.org/FelipeLema/cmp-async-path",
}

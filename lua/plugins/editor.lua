return {
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
  {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    -- opts = {},
    config = function()
      require("nvim-surround").setup()
    end,
  },
}

return {
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    opts = require "configs.telescope-config",
  },
  -- Noice
  {
    "folke/noice.nvim",
    -- enabled = false,
    event = "VeryLazy",
    opts = require "configs.noice",
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
  -- Project tree explorers
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    opts = require "configs.neo-tree",
  },
  {
    "nvim-tree/nvim-tree.lua",
    enabled = false,
    opts = {
      filters = {
        custom = {
          "^\\.git$",
          "^\\.__pycache__",
          "^\\.pytest_cache",
        },
      },
    },
  },
}

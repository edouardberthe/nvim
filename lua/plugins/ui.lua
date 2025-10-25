return {
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
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    window = {
      mappings = {
        ["P"] = {
          "toggle_preview",
          config = {
            use_float = false,
            use_snacks_image = true,
            use_image_nvim = true,
          },
        },
        ["l"] = "focus_preview",
        ["<C-b>"] = { "scroll_preview", config = { direction = 10 } },
        ["<C-f>"] = { "scroll_preview", config = { direction = -10 } },
      },
    },
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

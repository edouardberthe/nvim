return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
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
    lazy = false, -- neo-tree will lazily load itself
  },
}

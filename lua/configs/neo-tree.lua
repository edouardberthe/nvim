return {
  window = {
    mappings = {
      ["P"] = {
        "toggle_preview",
        config = {
          use_float = false,
          use_snacks_image = true,
          use_image_nvim = true,
          title = "Neo-tree preview",
        },
      },
      ["l"] = "focus_preview",
      ["<C-b>"] = { "scroll_preview", config = { direction = 10 } },
      ["<C-f>"] = { "scroll_preview", config = { direction = -10 } },
    },
  },
}

return {
  "rmagatti/auto-session",
  lazy = false,
  opts = {
    suppressed_dirs = { "~/", "~/Downloads", "/" },
  },
  keys = {
    -- Will use Telescope if installed or a vim.ui.select picker otherwise
    { "<leader>sr", "<cmd>AutoSession search<CR>", desc = "Session search" },
    { "<leader>ss", "<cmd>AutoSession save<CR>", desc = "Save session" },
    { "<leader>sa", "<cmd>AutoSession toggle<CR>", desc = "Toggle autosave" },
  },
}

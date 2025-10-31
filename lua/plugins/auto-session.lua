return {
  "rmagatti/auto-session",
  lazy = false,
  opts = {
    suppressed_dirs = { "~/", "~/Downloads", "/" },
  },
  keys = {
    -- Will use Telescope if installed or a vim.ui.select picker otherwise
    { "<leader>asr", "<cmd>AutoSession search<CR>", desc = "Session search" },
    { "<leader>ass", "<cmd>AutoSession save<CR>", desc = "Save session" },
    { "<leader>asa", "<cmd>AutoSession toggle<CR>", desc = "Toggle autosave" },
  },
}

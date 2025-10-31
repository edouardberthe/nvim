require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>gg", "<cmd> LazyGit <cr>", { desc = "LazyGit" })

map("n", "<leader><leader>", "<cmd>source $MYVIMRC<cr>", { desc = "source .vimrc" })

map("n", "<C-^>", "<ESC>", { desc = "Escape" })

-- substitute.nvim
map("n", "s", require("substitute").operator, { desc = "substitute operator" })
map("x", "s", require("substitute").visual, { desc = "substitute operator" })
map("n", "ss", require("substitute").line, { desc = "substitute line" })
map("n", "S", require("substitute").eol, { desc = "substitute to EOL" })
-- subsitute over range
map("n", "<leader>s", require("substitute.range").operator, { desc = "substitute.range operator" })
map("x", "<leader>s", require("substitute.range").visual, { desc = "substitute.range operator" })
map("n", "<leader>ss", require("substitute.range").word, { desc = "substitute.range line" })

-- neo-tree
map("n", "<C-n>", "<cmd>Neotree toggle<cr>", { desc = "Neotree toggle" })
vim.keymap.del("n", "<leader>e")

-- inc-rename
map("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand "<cword>"
end, { expr = true, desc = "IncRename" })

-- nvim-notify (through noice.nvim)
map("n", "<leader>fn", "<cmd>Telescope notify<cr>", { desc = "telescope find notify" })
vim.keymap.del("n", "<leader>cm")
map("n", "<leader>fc", "<cmd>Telescope git_commits<cr>", { desc = "telescope git commits" })
map("n", "<leader>fcb", "<cmd>Telescope git_bcommits<cr>", { desc = "telescope git commits" })

-- Display diagnostics in floating window
map("n", "<leader>dof", vim.diagnostic.open_float, { desc = "Vim diagnostic open floating window" })

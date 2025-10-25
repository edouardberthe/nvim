require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")

map("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", { desc = "window left" })
map("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", { desc = "window right" })
map("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", { desc = "window down" })
map("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", { desc = "window up" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>gg", "<cmd> LazyGit <cr>", { desc = "LazyGit" })

map("n", "<leader><leader>", "<cmd>source $MYVIMRC<cr>")

map("n", "<C-^>", "<ESC>")

-- substitute.nvim
map("n", "s", require("substitute").operator, { noremap = true })
map("n", "ss", require("substitute").line, { noremap = true })
map("n", "S", require("substitute").eol, { noremap = true })
map("x", "s", require("substitute").visual, { noremap = true })

-- neo-tree
map("n", "<C-n>", "<cmd>Neotree toggle<cr>", { desc = "Neotree toggle" })
vim.keymap.del("n", "<leader>e")

-- inc-rename
-- map("n", "<leader>rn", ":IncRename ")
map("n", "<leader>rn", function()
  return ":IncRename " .. vim.fn.expand "<cword>"
end, { expr = true, desc = "IncRename" })

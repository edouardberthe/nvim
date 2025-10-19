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

-- cutlass.nvim: d is real delete, x is cutting
map("x", "x", "d")
map("n", "xx", "dd")
map("n", "X", "D")

-- local vs = require "subversive"
map("n", "s", "<plug>SubversiveSubstitute<cr>")

-- map("n", "ss", vs.SubversiveSubstituteLine)
-- map("n", "S", vs.SubversiveSubstituteToEndOfLine)

map("n", "<C-n>", "<cmd>Neotree toggle<cr>", { desc = "Neotree toggle" })

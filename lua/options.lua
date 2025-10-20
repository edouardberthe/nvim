require "nvchad.options"

local opt = vim.opt
local g = vim.g

-- disable netrw at the very start of your init.lua
-- g.loaded_netrw = 1
-- g.loaded_netrwPlugin = 1

opt.number = true
opt.relativenumber = false
opt.cursorline = true

opt.splitbelow = true
opt.splitright = true

opt.wrap = true

opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 0 -- when 0 then 'tabstop' is used

opt.clipboard = "unnamedplus"
opt.scrolloff = 999

opt.virtualedit = "block"

-- Display tab with comparison when e.g. launching search and replace command
opt.inccommand = "split"

-- Ignore case when running command
opt.ignorecase = true

opt.termguicolors = true

g.mapleader = " "
g.nvim_tree_auto_open = 1

require "nvchad.autocmds"

vim.api.nvim_create_autocmd("VimEnter", {
  pattern = "*",
  group = vim.api.nvim_create_augroup("NeotreeOnOpen", { clear = true }),
  once = true,
  callback = function(_)
    if vim.fn.argc() == 0 then
      vim.cmd "Neotree"
    end
  end,
})

-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     -- Do not open if a file has been passed in argument
--     if vim.fn.argc() == 0 then
--       require("nvim-tree.api").tree.open()
--     end
--   end,
-- })

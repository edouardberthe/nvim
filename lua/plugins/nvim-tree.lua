return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    filters = {
      custom = {
        "^\\.git",
        "^\\.__pycache__",
        "^\\.pytest_cache",
      },
    },
  },
  config = function(_, opts)
    require("nvim-tree").setup(opts)
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        -- Do not open if a file has been passed in argument
        if vim.fn.argc() == 0 then
          require("nvim-tree.api").tree.open()
        end
      end,
    })
  end,
}

local options = {
  formatters_by_ft = {
    css = { "prettier" },
    html = { "prettier" },
    latex = { "texlab" },
    lua = { "stylua" },
    python = { "black" },
    rust = { "rustfmt" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format { bufnr = args.buf }
  end,
})

return options

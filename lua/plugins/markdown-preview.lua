return {
  "iamcco/markdown-preview.nvim",
  enabled = false,
  cmd = { "MarkdownPreviwToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filtetypes = { "markdown" }
  end,
  ft = { "markdown" },
}

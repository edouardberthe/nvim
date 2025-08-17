return {
  "lervag/vimtex",
  lazy = false, -- pour charger immédiatement
  config = function()
    vim.g.vimtex_view_method = "skim"
    -- vim.g.vimtex_compiler_method = "latexmk"
    vim.g.tex_flavor = "latex"
  end,
}

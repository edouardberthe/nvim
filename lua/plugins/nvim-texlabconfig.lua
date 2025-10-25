return {
  "f3fora/nvim-texlabconfig",
  opts = {},
  ft = { "tex", "bib" }, -- Lazy-load on filetype
  build = "go build",
  -- build = 'go build -o ~/.bin/' -- if e.g. ~/.bin/ is in $PATH
}

require("nvchad.configs.lspconfig").defaults()

local nclsp = require "nvchad.configs.lspconfig"

local servers = {
  "clangd",
  "texlab",
  "rust_analyzer",
}

for _, server in ipairs(servers) do
  vim.lsp.config(server, {
    on_attach = nclsp.on_attach,
    on_init = nclsp.on_init,
    capabilities = nclsp.capabilities,
    root_markers = {
      ".git",
      "stylua.toml",
      "readme.md",
    },
  })
end

vim.lsp.config("clangd", {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    nclsp.on_attach(client, bufnr)
  end,
  on_init = nclsp.on_init,
  capabilities = nclsp.capabilities,
})

vim.lsp.config("rust_analyzer", {
  on_attach = function(client, bufnr)
    -- Disable completion popup in Rust because very intrusive
    client.server_capabilities.signatureHelpProvider = false
  end,
})

vim.lsp.enable "clangd"
vim.lsp.enable "texlab"
vim.lsp.enable "rust_analyzer"

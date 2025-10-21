local nclsp = require "nvchad.configs.lspconfig"

nclsp.defaults()

local servers = {
  "clangd",
  "rust_analyzer",
  "texlab",
}

for _, server in ipairs(servers) do
  vim.lsp.config(server, {
    on_attach = nclsp.on_attach,
    on_init = nclsp.on_init,
    capabilities = nclsp.capabilities,
    root_markers = {
      ".git",
      "stylua.toml",
      "README.md",
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

vim.lsp.config("texlab", {
  settings = {
    texlab = {
      build = {
        executable = "tectonic",
        args = {
          "-X",
          "compile",
          "%f",
          "--synctex",
          "--keep-logs",
          "--keep-intermediates",
        },
        onSave = true, -- (optionnel) compile à chaque sauvegarde
      },
    },
  },
})

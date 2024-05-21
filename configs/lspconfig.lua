local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "templ",
  "cssls",
  "gopls",
  "tsserver",
  "clangd",
  "tailwindcss",
  "rust_analyzer",
  "svelte",
  "taplo",
  "pyright",
  "clangd",
  "zls",
  "prismals",
}

for _, lsp in ipairs(servers) do
  local config = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  lspconfig[lsp].setup(config)
end
-- lspconfig.pyright.setup { blabla}
-- lspconfig.rust_analyzer.setup{}
-- lspconfig.gopls.setup{}
-- lspconfig.svelte.setup{}
-- lspconfig.taplo.setup{}

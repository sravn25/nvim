local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

local servers = {"tsserver", "tailwindcss", "eslint", "html", "cssls", "gopls","golangci_lint_ls"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup{
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- lspconfig.tsserver.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
-- })
--
-- lspconfig.tailwindcss.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
-- })
--
-- lspconfig.eslint.setup({
--   on_attach = on_attach,
--   capabilities = capabilities,
-- })

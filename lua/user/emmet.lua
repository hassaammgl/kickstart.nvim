local mason = require("mason")
local mason_lsp = require("mason-lspconfig")
local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local cmp = require("cmp")

mason.setup()
mason_lsp.setup({ ensure_installed = { "emmet_ls" } })

cmp.setup({
  mapping = {
    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
  },
  sources = cmp.config.sources({ { name = "nvim_lsp" } }),
})

lspconfig.emmet_ls.setup({
  capabilities = cmp_nvim_lsp.default_capabilities(),
  filetypes = { "html", "css", "javascript", "javascriptreact", "typescriptreact" },
  init_options = { html = { options = { ["bem.enabled"] = false } } },
})

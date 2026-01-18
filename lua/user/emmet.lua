local ok_mason, mason = pcall(require, "mason")
if not ok_mason then
  return
end

local ok_mason_lsp, mason_lsp = pcall(require, "mason-lspconfig")
if not ok_mason_lsp then
  return
end

local ok_lspconfig, lspconfig = pcall(require, "lspconfig")
if not ok_lspconfig then
  return
end

local ok_cmp, cmp = pcall(require, "cmp")
if not ok_cmp then
  return
end

local ok_cmp_lsp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not ok_cmp_lsp then
  return
end

-- Mason setup
mason.setup()
mason_lsp.setup({
  ensure_installed = { "emmet_ls" },
})

-- CMP setup
cmp.setup({
  snippet = {
    expand = function(args)
      -- If you use luasnip
      local ok, luasnip = pcall(require, "luasnip")
      if ok then
        luasnip.lsp_expand(args.body)
      end
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" }, -- Correct LSP source
    { name = "buffer" }, -- Optional buffer completions
    { name = "path" }, -- Optional path completions
  }),
})

-- Emmet LSP setup
lspconfig.emmet_ls.setup({
  capabilities = cmp_nvim_lsp.default_capabilities(),
  filetypes = { "html", "css", "javascript", "javascriptreact", "typescriptreact" },
  init_options = {
    html = {
      options = {
        ["bem.enabled"] = false,
      },
    },
  },
})

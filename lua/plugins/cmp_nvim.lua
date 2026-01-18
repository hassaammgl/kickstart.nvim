return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter", -- load first
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local ok, cmp = pcall(require, "cmp")
      if not ok then
        return
      end

      local lsp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
      if not lsp_ok then
        return
      end

      cmp.setup({
        snippet = {
          expand = function(args)
            local luasnip_ok, luasnip = pcall(require, "luasnip")
            if luasnip_ok then
              luasnip.lsp_expand(args.body)
            end
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.confirm({ select = true }),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
        }),
      })
    end,
  },
}

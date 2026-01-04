vim.keymap.set("n", "<leader>ih", function()
  vim.lsp.inlay_hint.enable(
    not vim.lsp.inlay_hint.is_enabled()
  )
end, { desc = "Toggle inlay hints" })

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("user.emmet")

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.lsp.inlay_hint.enable(false, { bufnr = args.buf })
  end,
})

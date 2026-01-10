if vim.lsp.inlay_hint then
  vim.lsp.inlay_hint.enable = function() end
end

require("config.lazy")
require("user.emmet")
require("config.refs")

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    vim.lsp.inlay_hint.enable(false, { bufnr = args.buf })
  end,
})

local function kill_inlay()
  if vim.lsp.inlay_hint then
    vim.lsp.inlay_hint.enable(false)
  end
end

vim.api.nvim_create_autocmd({ "LspAttach", "BufEnter", "BufWinEnter" }, {
  callback = kill_inlay,
})

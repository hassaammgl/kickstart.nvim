return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 20, -- default size for split terminals
        open_mapping = nil, -- we won't override your existing ctrl-/ terminal
        direction = "horizontal", -- default split terminal
        close_on_exit = false, -- split terminal persists
        float_opts = {
          border = "curved",
          width = 80,
          height = 20,
        },
      })
    end,
  },
}

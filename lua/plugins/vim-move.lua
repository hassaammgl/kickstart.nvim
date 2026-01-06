return {
  {
    "matze/vim-move",
    keys = {
      { "<A-Up>", ":m .-2<CR>==", desc = "Move line up", mode = "n" },
      { "<A-Down>", ":m .+1<CR>==", desc = "Move line down", mode = "n" },

      -- Visual mode: move selection
      { "<A-Up>", ":m '<-2<CR>gv=gv", desc = "Move selection up", mode = "v" },
      { "<A-Down>", ":m '>+1<CR>gv=gv", desc = "Move selection down", mode = "v" },
    },
  },
}

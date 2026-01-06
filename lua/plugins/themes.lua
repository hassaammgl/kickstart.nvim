return {
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
  },
  {
    "baliestri/aura-theme",
    lazy = false,
    priority = 1000,
  },
  {
    "oxfist/night-owl.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },
  {
    "oxfist/night-owl.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },
  {
    "uhs-robert/oasis.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "KijitoraFinch/nanode.nvim",
    priority = 1000,
  },
  {
    "forest-nvim/sequoia.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "adibhanna/forest-night.nvim",
    priority = 1000,
  },
  {
    "MartelleV/kaimandres.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "samueljoli/cyberpunk.nvim",
  },
  {
    "antonyz89/electron-vue.nvim",
    dependencies = { "rktjmp/lush.nvim" },
  },
  {
    "sanzharkuandyk/nagisa.nvim",
    lazy = false,
    priority = 1000,
  },
}

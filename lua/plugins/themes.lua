return {
    {
        "navarasu/onedark.nvim",
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require('onedark').setup {
                style = 'darker'
            }
            require('onedark').load()
        end
    },
    {
        "baliestri/aura-theme",
        lazy = false,
        priority = 1000,
        config = function(plugin)
            vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
            vim.cmd([[colorscheme aura-dark]])
        end
    },
    {
        "oxfist/night-owl.nvim",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            require("night-owl").setup()
            vim.cmd.colorscheme("night-owl")
        end,
    },
    {
        "oxfist/night-owl.nvim",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            -- load the colorscheme here
            require("night-owl").setup()
            vim.cmd.colorscheme("night-owl")
        end,
    },
    {
        "uhs-robert/oasis.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("oasis").setup()     -- (see Configuration below for all customization options)
            vim.cmd.colorscheme("oasis") -- After setup, apply theme (or any style like "oasis-night")
        end
    },
    {
        "KijitoraFinch/nanode.nvim",
        priority = 1000,
        config = function()
            require("nanode").setup({
                transparent = false,
            })
            vim.cmd.colorscheme("nanode")
        end,
    },
    {
        "forest-nvim/sequoia.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme sequoia") -- or 'sequoia-night' / 'sequoia-rise'
        end
    },
    {
        "adibhanna/forest-night.nvim",
        priority = 1000,
        config = function()
            vim.cmd([[colorscheme forest-night]])
        end,
    },
    {
        "MartelleV/kaimandres.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require('kaimandres').setup({
                -- leave empty to use default setup!
            })
            -- Some tweaks
            vim.api.nvim_create_autocmd("ColorScheme", {
                pattern = "kaimandres",
                callback = function()
                    -- Remove annoying darker blocks in Lualine (if this happens to you)
                    vim.api.nvim_set_hl(0, "StatusLine", { bg = "#16161e" })
                end,
            })
        end,
    },
    {
        'samueljoli/cyberpunk.nvim'
    },
    {
        "antonyz89/electron-vue.nvim",
        dependencies = { "rktjmp/lush.nvim" }
    },
    {
        "sanzharkuandyk/nagisa.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("nagisa").setup({})
            vim.cmd.colorscheme("EndOfTheWorld")
        end,
    },
}

local ls = require("luasnip")

-- Load all Lua snippets from your snippets folder
require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/lua/snippets" })

-- ============================
-- FILETYPE EXTENSIONS / INHERITANCE
-- ============================

-- JS family
ls.filetype_extend("javascript", { "javascript" })             -- JS base
ls.filetype_extend("javascriptreact", { "javascript" })        -- JSX
ls.filetype_extend("vue", { "javascript" })                    -- Vue (JS part)
ls.filetype_extend("svelte", { "javascript" })                 -- Svelte (JS part)
ls.filetype_extend("html", { "javascript" })                   -- Inline JS

-- TS family
ls.filetype_extend("typescript", { "javascript" })            -- TS inherits JS base
ls.filetype_extend("typescriptreact", { "javascript" })       -- TSX inherits JS base
ls.filetype_extend("vue", { "typescript" })                   -- Vue TS support
ls.filetype_extend("svelte", { "typescript" })                -- Svelte TS
ls.filetype_extend("angular", { "typescript" })               -- Angular components

-- Optional: merge JS+TS snippets for frameworks like Vue/Svelte
ls.filetype_extend("vue", { "javascript", "typescript" })
ls.filetype_extend("svelte", { "javascript", "typescript" })

-- Optional: Angular templates can still access JS/TS helpers
ls.filetype_extend("html", { "javascript", "typescript" })

-- ============================
-- REACT SNIPPETS
-- ============================
ls.filetype_extend("javascriptreact", { "react" })   -- JSX
ls.filetype_extend("typescriptreact", { "react" })  -- TSX
ls.filetype_extend("vue", { "react" })              -- optional if you use JSX in <script>
ls.filetype_extend("svelte", { "react" })           -- optional if JSX used
ls.filetype_extend("angular", { "react" })          -- optional if JSX used

-- ============================
-- VUE / SVELTE BASE
-- ============================
ls.filetype_extend("vue", { "javascript", "typescript", "vue" })
ls.filetype_extend("svelte", { "javascript", "typescript", "vue" })

-- ============================
-- NESTJS SNIPPETS
-- ============================
ls.filetype_extend("nestjs", { "typescript" })      -- inherit TS helpers
ls.filetype_extend("angular", { "nestjs" })        -- Angular + NestJS if used together

-- ============================
-- ANGULAR SNIPPETS
-- ============================
ls.filetype_extend("angular", { "typescript", "angular" })  -- TS + Angular helpers

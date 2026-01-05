local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

-- Load base JS snippets
local base = require("snippets.js-ts-base")

-- ======================
-- TS-ONLY SNIPPETS
-- ======================
table.insert(base, s("iface", {
  t("interface "), i(1,"Name"), t({ " {", "  " }), i(2), t({ "", "}" })
}))

table.insert(base, s("type", {
  t("type "), i(1,"Name"), t(" = "), i(2)
}))

return base

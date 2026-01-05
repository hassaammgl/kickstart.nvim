local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local function filename()
    return vim.fn.expand("%:t:r")
end

return {
  -- ======================
  -- FUNCTIONAL COMPONENTS
  -- ======================
  s("rafce", {
      t("import React from 'react'"),
      t({ "", "", "const " }),
      f(filename, {}),
      t(" = () => {"),
      t({ "", "  return (" }),
      t({ "", "    <div>" }),
      f(filename, {}),
      t("</div>"),
      t({ "", "  )", "}" }),
      t({ "", "export default " }),
      f(filename, {}),
  }),

  s("rfc", {
      t("import React from 'react'"),
      t({ "", "", "export default function " }),
      f(filename, {}),
      t("() {"),
      t({ "", "  return (" }),
      t({ "", "    <div>" }),
      f(filename, {}),
      t("</div>"),
      t({ "", "  )", "}" }),
  }),

  -- ======================
  -- STATE HOOKS
  -- ======================
  s("us", {
      t("const ["),
      i(1, "state"),
      t(", set"),
      f(function(args)
          return args[1][1]:gsub("^%l", string.upper)
      end, {1}),
      t("] = React.useState("),
      i(2),
      t(")"),
  }),

  s("ur", {
      t("const ["),
      i(1, "state"),
      t(", dispatch] = React.useReducer("),
      i(2, "reducer"),
      t(", "),
      i(3, "initialState"),
      t(")"),
  }),

  -- ======================
  -- EFFECT HOOK
  -- ======================
  s("ue", {
      t("React.useEffect(() => {"),
      t({ "", "  " }),
      i(1),
      t({ "", "}, [" }),
      i(2),
      t("])"),
  }),

  -- ======================
  -- OTHER HOOKS
  -- ======================
  s("um", {
      t("const "),
      i(1,"memoized"),
      t(" = React.useMemo(() => {"),
      t({ "", "  " }),
      i(2),
      t({ "", "}, [" }),
      i(3),
      t("])"),
  }),

  s("ucb", {
      t("const "),
      i(1,"callback"),
      t(" = React.useCallback(() => {"),
      t({ "", "  " }),
      i(2),
      t({ "", "}, [" }),
      i(3),
      t("])"),
  }),

  s("urf", {
      t("const "),
      i(1,"ref"),
      t(" = React.useRef("),
      i(2),
      t(")"),
  }),

  -- ======================
  -- FRAGMENTS
  -- ======================
  s("frag", {
      t("<>"),
      t({ "", "  " }),
      i(1),
      t({ "", "</>" }),
  }),

  -- ======================
  -- PROPS DESTRUCTURING
  -- ======================
  s("props", {
      t("const { "),
      i(1, "prop1, prop2"),
      t(" } = props"),
  }),

  -- ======================
  -- EVENT HANDLERS
  -- ======================
  s("onClick", {
      t("const "),
      i(1, "handleClick"),
      t(" = () => {"),
      t({ "", "  " }),
      i(2),
      t({ "", "}" }),
  }),

  s("formSubmit", {
      t("const "),
      i(1, "handleSubmit"),
      t(" = (e) => {"),
      t({ "", "  e.preventDefault()", "  " }),
      i(2),
      t({ "", "}" }),
  }),
}

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

return {

    -- ======================
    -- CONSOLE
    -- ======================
    s("log", { t("console.log("), i(1), t(")") }),
    s("error", { t("console.error("), i(1), t(")") }),
    s("warn", { t("console.warn("), i(1), t(")") }),
    s("table", { t("console.table("), i(1), t(")") }),

    -- ======================
    -- IF / ELSE
    -- ======================
    s("if", { t("if ("), i(1, "condition"), t({ ") {", "  " }), i(2), t({ "", "}" }) }),
    s("ife", { t("if ("), i(1, "condition"), t({ ") {", "  " }), i(2), t({ "", "} else {", "  " }), i(3), t({ "", "}" }) }),
    s("elseif", { t("else if ("), i(1, "condition"), t({ ") {", "  " }), i(2), t({ "", "}" }) }),

    -- ======================
    -- SWITCH
    -- ======================
    s("switch", {
        t("switch ("), i(1, "value"), t({ ") {", "  case " }), i(2), t({ ":", "    " }),
        i(3), t({ "", "    break;", "  default:", "    break;", "}" }),
    }),

    -- ======================
    -- LOOPS
    -- ======================
    s("for",
        { t("for (let "), i(1, "i"), t(" = 0; "), i(1), t(" < "), i(2, "length"), t("; "), i(1), t({ "++) {", "  " }), i(3),
            t({ "", "}" }) }),
    s("forof", { t("for (const "), i(1, "item"), t(" of "), i(2, "array"), t({ ") {", "  " }), i(3), t({ "", "}" }) }),
    s("forin", { t("for (const "), i(1, "key"), t(" in "), i(2, "object"), t({ ") {", "  " }), i(3), t({ "", "}" }) }),
    s("while", { t("while ("), i(1, "condition"), t({ ") {", "  " }), i(2), t({ "", "}" }) }),

    -- ======================
    -- FUNCTIONS
    -- ======================
    s("fn", { t("function "), i(1, "name"), t("("), i(2), t({ ") {", "  " }), i(3), t({ "", "}" }) }),
    s("afn", { t("const "), i(1, "name"), t(" = ("), i(2), t({ ") => {", "  " }), i(3), t({ "", "}" }) }),
    s("iife", { t("(function () {"), t({ "", "  " }), i(1), t({ "", "})();" }) }),
    s("asyncfn", { t("async function "), i(1, "name"), t("("), i(2), t({ ") {", "  " }), i(3), t({ "", "}" }) }),
    s("try", { t("try {"), t({ "", "  " }), i(1), t({ "", "} catch (error) {", "  " }), i(2), t({ "", "}" }) }),

    -- ======================
    -- ARRAYS
    -- ======================
    s("map", { i(1, "array"), t(".map(("), i(2, "item"), t({ ") => {", "  " }), i(3), t({ "", "})" }) }),
    s("filter", { i(1, "array"), t(".filter(("), i(2, "item"), t(") => "), i(3), t(")") }),
    s("reduce",
        { i(1, "array"), t(".reduce(("), i(2, "acc"), t(", "), i(3, "item"), t({ ") => {", "  " }), i(4), t({ "", "}, " }),
            i(5, "initialValue"), t(")") }),

    -- ======================
    -- OBJECTS
    -- ======================
    s("obj", { t("{"), t({ "", "  " }), i(1), t({ "", "}" }) }),
    s("des", { t("const { "), i(1), t(" } = "), i(2) }),

    -- ======================
    -- IMPORT / EXPORT
    -- ======================
    s("imp", { t("import "), i(1), t(" from '"), i(2), t("'") }),
    s("impc", { t("import {"), i(1), t("} from '"), i(2), t("'") }),
    s("exp", { t("export "), i(1) }),
    s("expd", { t("export default "), i(1) }),
    s("edf", { t("export default function "), i(1, "name"), t("("), i(2), t({ ") {", "  " }), i(3), t({ "", "}" }) }),
    s("efn", { t("export function "), i(1, "name"), t("("), i(2), t({ ") {", "  " }), i(3), t({ "", "}" }) }),
    s("cafn", { t("const "), i(1, "name"), t(" = ("), i(2), t({ ") => {", "  " }), i(3), t({ "", "}" }) }),

    -- ======================
    -- DOM
    -- ======================
    s("qs", { t("document.querySelector('"), i(1), t("')") }),
    s("qsa", { t("document.querySelectorAll('"), i(1), t("')") }),
    s("getid", { t("document.getElementById('"), i(1), t("')") }),
    s("addevent",
        { i(1, "element"), t(".addEventListener('"), i(2, "click"), t({ "', (e) => {", "  " }), i(3), t({ "", "})" }) }),
    s("createel", { t("document.createElement('"), i(1, "div"), t("')") }),

    -- ======================
    -- FETCH / AXIOS
    -- ======================
    s("fetch",
        { t("fetch('"), i(1, "url"), t({ "')", "  .then(res => res.json())", "  .then(data => {", "    " }), i(2), t({ "",
            "  })", "  .catch(err => {", "    console.error(err)", "  })" }) }),
    s("fetchasync", { t("const "), i(1, "data"), t(" = await fetch('"), i(2, "url"), t({ "').then(res => res.json())" }) }),
    s("axiosget",
        { t("axios.get('"), i(1, "url"), t({ "')", "  .then(res => {", "    " }), i(2), t({ "", "  })",
            "  .catch(err => console.error(err))" }) }),

    -- ======================
    -- PROMISES
    -- ======================
    s("promise", { t("return new Promise((resolve, reject) => {"), t({ "", "  " }), i(1), t({ "", "})" }) }),
    s("then", { t(".then("), i(1, "result"), t(" => {"), t({ "", "  " }), i(2), t({ "", "})" }) }),
    s("catch", { t(".catch("), i(1, "error"), t(" => {"), t({ "", "  " }), i(2), t({ "", "})" }) }),
    s("finally", { t(".finally(() => {"), t({ "", "  " }), i(1), t({ "", "})" }) }),

    -- ======================
    -- NODE.JS
    -- ======================
    s("require", { t("const "), i(1), t(" = require('"), i(2), t("')") }),
    s("fsread",
        { t("fs.readFile('"), i(1, "path"), t({ "', 'utf8', (err, data) => {", "  if (err) throw err", "  " }), i(2), t({
            "", "})" }) }),
    s("fswrite", { t("fs.writeFile('"), i(1, "path"), t({ "', data, err => {", "  if (err) throw err", "})" }) }),
    s("process", { t("process."), i(1, "env") }),

    -- ======================
    -- TIMERS
    -- ======================
    s("timeout", { t("setTimeout(() => {"), t({ "", "  " }), i(1), t({ "", "}, " }), i(2, "1000"), t(")") }),
    s("interval", { t("setInterval(() => {"), t({ "", "  " }), i(1), t({ "", "}, " }), i(2, "1000"), t(")") }),
}

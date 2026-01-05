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
  -- BASIC COMPONENT SETUP
  -- ======================
  s("setup", {
      t("export default {"),
      t({ "", "  name: '" }),
      f(filename, {}),
      t({ "',", "  setup() {" }),
      t({ "", "    " }),
      i(1),
      t({ "", "  }", "}" }),
  }),

  s("scriptsetup", {
      t("<script setup>"),
      t({ "", "  " }),
      i(1),
      t({ "", "</script>" }),
  }),

  -- ======================
  -- PROPS DESTRUCTURE
  -- ======================
  s("props", {
      t("const props = defineProps({"),
      t({ "", "  " }),
      i(1, "prop1: { type: String, required: true },"),
      t({ "", "})" }),
  }),

  s("propsTS", {
      t("interface Props {"),
      t({ "", "  " }),
      i(1, "prop1: string"),
      t({ "", "}", "", "const props = defineProps<Props>()" }),
  }),

  -- ======================
  -- EMITS
  -- ======================
  s("emit", {
      t("const emit = defineEmits(["),
      t({ "", "  " }),
      i(1, "'update:modelValue'"),
      t({ "", "])" }),
  }),

  s("emitfn", {
      t("const "),
      i(1, "emitChange"),
      t(" = () => {"),
      t({ "", "  emit('" }),
      i(2, "eventName"),
      t("', "),
      i(3, "value"),
      t({ ")", "", "}" }),
  }),

  -- ======================
  -- REACTIVE / REF
  -- ======================
  s("ref", {
      t("const "),
      i(1, "state"),
      t(" = ref("),
      i(2, "initialValue"),
      t(")"),
  }),

  s("reactive", {
      t("const "),
      i(1, "state"),
      t(" = reactive({"),
      t({ "", "  " }),
      i(2),
      t({ "", "})" }),
  }),

  -- ======================
  -- COMPUTED
  -- ======================
  s("computed", {
      t("const "),
      i(1, "computedValue"),
      t(" = computed(() => {"),
      t({ "", "  " }),
      i(2),
      t({ "", "})" }),
  }),

  -- ======================
  -- WATCH
  -- ======================
  s("watch", {
      t("watch("),
      i(1, "source"),
      t(", (newVal, oldVal) => {"),
      t({ "", "  " }),
      i(2),
      t({ "", "})" }),
  }),

  s("watchEffect", {
      t("watchEffect(() => {"),
      t({ "", "  " }),
      i(1),
      t({ "", "})" }),
  }),

  -- ======================
  -- LIFECYCLE HOOKS
  -- ======================
  s("onMounted", {
      t("onMounted(() => {"),
      t({ "", "  " }),
      i(1),
      t({ "", "})" }),
  }),

  s("onUpdated", {
      t("onUpdated(() => {"),
      t({ "", "  " }),
      i(1),
      t({ "", "})" }),
  }),

  s("onUnmounted", {
      t("onUnmounted(() => {"),
      t({ "", "  " }),
      i(1),
      t({ "", "})" }),
  }),

  s("onBeforeMount", {
      t("onBeforeMount(() => {"),
      t({ "", "  " }),
      i(1),
      t({ "", "})" }),
  }),

  s("onBeforeUnmount", {
      t("onBeforeUnmount(() => {"),
      t({ "", "  " }),
      i(1),
      t({ "", "})" }),
  }),

  -- ======================
  -- TEMPLATE DIRECTIVES
  -- ======================
  s("vif", {
      t("v-if=\""),
      i(1, "condition"),
      t("\""),
  }),

  s("velse", {
      t("v-else"),
  }),

  s("vfor", {
      t("v-for=\"("),
      i(1, "item"),
      t(", "),
      i(2, "index"),
      t(") in "),
      i(3, "array"),
      t("\""),
  }),

  s("vmodel", {
      t("v-model=\""),
      i(1, "model"),
      t("\""),
  }),

  s("click", {
      t("@click=\""),
      i(1, "handleClick"),
      t("\""),
  }),

  s("input", {
      t("@input=\""),
      i(1, "handleInput"),
      t("\""),
  }),

  s("bind", {
      t(":"),
      i(1, "prop"),
      t("=\""),
      i(2, "value"),
      t("\""),
  }),

  s("show", {
      t("v-show=\""),
      i(1, "condition"),
      t("\""),
  }),

  -- ======================
  -- SLOTS
  -- ======================
  s("slot", {
      t("<slot>"),
      i(1),
      t("</slot>"),
  }),

  s("slotname", {
      t("<slot name=\""),
      i(1, "name"),
      t("\">"),
      i(2),
      t("</slot>"),
  }),

  -- ======================
  -- TELEPORT / FRAGMENTS
  -- ======================
  s("teleport", {
      t("<teleport to=\""),
      i(1, "#target"),
      t("\">"),
      i(2),
      t("</teleport>"),
  }),

  s("fragment", {
      t("<template #default>"),
      i(1),
      t("</template>"),
  }),

  -- ======================
  -- DIRECTIVES / EVENTS
  -- ======================
  s("keydown", {
      t("@keydown=\""),
      i(1, "handleKeyDown"),
      t("\""),
  }),

  s("keyup", {
      t("@keyup=\""),
      i(1, "handleKeyUp"),
      t("\""),
  }),

  s("submit", {
      t("@submit.prevent=\""),
      i(1, "handleSubmit"),
      t("\""),
  }),

  s("provide", {
      t("provide('"),
      i(1, "key"),
      t("', "),
      i(2, "value"),
      t(")"),
  }),

  s("inject", {
      t("const "),
      i(1, "injected"),
      t(" = inject('"),
      i(2, "key"),
      t("')"),
  }),

  -- ======================
  -- nextTick
  -- ======================
  s("nexttick", {
      t("nextTick(() => {"),
      t({ "", "  " }),
      i(1),
      t({ "", "})" }),
  }),

  -- ======================
  -- TEMPLATE: v-for with key
  -- ======================
  s("vforkey", {
      t("v-for=\"("),
      i(1, "item"),
      t(", "),
      i(2, "index"),
      t(") in "),
      i(3, "array"),
      t("\" :key=\""),
      i(4, "item.id"),
      t("\""),
  }),

  -- ======================
  -- COMPOSABLE HELPER SNIPPETS
  -- ======================
  s("useStore", {
      t("import { useStore } from '"),
      i(1, "path/to/store"),
      t("'"),
      t({ "", "const store = useStore()" }),
  }),

  s("useRouter", {
      t("import { useRouter } from 'vue-router'"),
      t({ "", "const router = useRouter()" }),
  }),

  s("useRoute", {
      t("import { useRoute } from 'vue-router'"),
      t({ "", "const route = useRoute()" }),
  }),

  -- ======================
  -- CUSTOM COMPOSABLE
  -- ======================
  s("composable", {
      t("export function "),
      i(1, "useFeature"),
      t("() {"),
      t({ "", "  " }),
      i(2),
      t({ "", "  return { " }),
      i(3),
      t({ " }", "}" }),
  }),

  -- ======================
  -- ASYNC / FETCH
  -- ======================
  s("asyncfn", {
      t("async function "),
      i(1, "name"),
      t("("),
      i(2),
      t({ ") {", "  " }),
      i(3),
      t({ "", "}" }),
  }),

  s("awaitfetch", {
      t("const "),
      i(1, "data"),
      t(" = await fetch("),
      i(2, "'/api'"),
      t(").then(res => res.json())"),
  }),

  -- ======================
  -- TEMPLATE CONDITIONALS
  -- ======================
  s("vshow", {
      t("v-show=\""),
      i(1, "condition"),
      t("\""),
  }),

  s("vhtml", {
      t("v-html=\""),
      i(1, "rawHtml"),
      t("\""),
  }),

  s("vtext", {
      t("v-text=\""),
      i(1, "text"),
      t("\""),
  }),

  -- ======================
  -- FORM CONTROL / EVENTS
  -- ======================
  s("vmodelinput", {
      t("v-model=\""),
      i(1, "model"),
      t("\" @input=\""),
      i(2, "handleInput"),
      t("\""),
  }),

  s("submitform", {
      t("@submit.prevent=\""),
      i(1, "handleSubmit"),
      t("\""),
  }),
}

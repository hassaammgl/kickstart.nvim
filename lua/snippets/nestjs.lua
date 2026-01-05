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
  -- MODULE
  -- ======================
  s("mod", {
      t("import { Module } from '@nestjs/common'"),
      t({ "", "import { " }),
      i(1, "ServiceName"),
      t(" } from './"),
      i(2, "service-name.service"),
      t("'"),
      t({ "", "", "@Module({", "  controllers: ["}),
      i(3, "ControllerName"),
      t("],", "  providers: ["),
      i(4, "ServiceName"),
      t({ "],", "})", "export class " }),
      f(filename, {}),
      t(" {}"),
  }),

  -- ======================
  -- CONTROLLER
  -- ======================
  s("ctrl", {
      t("import { Controller, Get, Post, Body, Param } from '@nestjs/common'"),
      t({ "", "", "@Controller('" }),
      i(1, "route"),
      t("')", "export class "),
      f(filename, {}),
      t(" {"),
      t({ "", "  @Get()" }),
      t({ "", "  async " }),
      i(2, "findAll"),
      t("() {"),
      t({ "", "    " }),
      i(3),
      t({ "", "  }", "" }),
      t("}"),
  }),

  -- ======================
  -- SERVICE
  -- ======================
  s("serv", {
      t("import { Injectable } from '@nestjs/common'"),
      t({ "", "", "@Injectable()", "export class " }),
      f(filename, {}),
      t(" {"),
      t({ "", "  " }),
      i(1),
      t({ "", "}" }),
  }),

  -- ======================
  -- DTO
  -- ======================
  s("dto", {
      t("export class "),
      f(filename, {}),
      t(" {"),
      t({ "", "  " }),
      i(1),
      t({ "", "}" }),
  }),

  -- ======================
  -- PROVIDER
  -- ======================
  s("provider", {
      t("@Injectable()"),
      t({ "", "export class " }),
      f(filename, {}),
      t(" {"),
      t({ "", "  " }),
      i(1),
      t({ "", "}" }),
  }),

  -- ======================
  -- COMMON DECORATORS
  -- ======================
  s("get", {
      t("@Get('"),
      i(1, ""),
      t("')"),
  }),

  s("post", {
      t("@Post('"),
      i(1, ""),
      t("')"),
  }),

  s("put", {
      t("@Put('"),
      i(1, ""),
      t("')"),
  }),

  s("del", {
      t("@Delete('"),
      i(1, ""),
      t("')"),
  }),
}

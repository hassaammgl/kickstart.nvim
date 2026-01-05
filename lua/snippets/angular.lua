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
  -- COMPONENT
  -- ======================
  s("comp", {
      t("import { Component } from '@angular/core'"),
      t({ "", "", "@Component({", "  selector: '" }),
      i(1, "app-" .. filename()),
      t("',", "  templateUrl: './"),
      f(filename, {}),
      t(".component.html',", "  styleUrls: ['./"),
      f(filename, {}),
      t(".component.css']", "})", "export class "),
      f(filename, {}),
      t(" {"),
      t({ "", "  " }),
      i(2),
      t({ "", "}" }),
  }),

  -- ======================
  -- SERVICE
  -- ======================
  s("serv", {
      t("import { Injectable } from '@angular/core'"),
      t({ "", "", "@Injectable({ providedIn: 'root' })", "export class " }),
      f(filename, {}),
      t(" {"),
      t({ "", "  constructor() { }", "", "}" }),
  }),

  -- ======================
  -- MODULE
  -- ======================
  s("mod", {
      t("import { NgModule } from '@angular/core'"),
      t({ "", "import { BrowserModule } from '@angular/platform-browser'", "", "@NgModule({", "  declarations: [" }),
      i(1, "ComponentName"),
      t("],", "  imports: [BrowserModule],", "  providers: ["),
      i(2),
      t("],", "  bootstrap: ["),
      i(3),
      t({ "]", "})", "export class " }),
      f(filename, {}),
      t(" {}"),
  }),

  -- ======================
  -- DIRECTIVE
  -- ======================
  s("dir", {
      t("import { Directive, ElementRef, Renderer2 } from '@angular/core'"),
      t({ "", "", "@Directive({ selector: '" }),
      i(1, "[appDirective]"),
      t("' })", "export class "),
      f(filename, {}),
      t(" {"),
      t({ "", "  constructor(private el: ElementRef, private renderer: Renderer2) { }", "", "}" }),
  }),

  -- ======================
  -- PIPE
  -- ======================
  s("pipe", {
      t("import { Pipe, PipeTransform } from '@angular/core'"),
      t({ "", "", "@Pipe({ name: '" }),
      i(1, "pipeName"),
      t("' })", "export class "),
      f(filename, {}),
      t(" implements PipeTransform {"),
      t({ "", "  transform(value: any, ...args: any[]): any {", "    " }),
      i(2),
      t({ "", "  }", "}" }),
  }),

  -- ======================
  -- COMMON DECORATORS
  -- ======================
  s("input", {
      t("@Input() "),
      i(1, "inputProp"),
      t(";"),
  }),

  s("output", {
      t("@Output() "),
      i(1, "outputProp"),
      t(" = new EventEmitter();"),
  }),

  s("viewchild", {
      t("@ViewChild("),
      i(1, "selector"),
      t(") "),
      i(2, "ref"),
      t(";"),
  }),

  s("hostlistener", {
      t("@HostListener('"),
      i(1, "event"),
      t("')"),
      t({ "", "" }),
      i(2),
  }),
}

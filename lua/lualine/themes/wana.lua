-- lualine theme for Wana. Background-aware: reads vim.o.background at require
-- time and builds from the generated palette. Use with `theme = "wana"`.
local variant = (vim.o.background == "light") and "light" or "dark"
local p = require("wana.palette")[variant]

return {
  normal = {
    a = { fg = p.bg, bg = p.green, gui = "bold" },
    b = { fg = p.fg, bg = p.surface },
    c = { fg = p.fg_dim, bg = p.bg_alt },
  },
  insert = {
    a = { fg = p.bg, bg = p.blue, gui = "bold" },
    b = { fg = p.fg, bg = p.surface },
    c = { fg = p.fg_dim, bg = p.bg_alt },
  },
  visual = {
    a = { fg = p.bg, bg = p.magenta, gui = "bold" },
    b = { fg = p.fg, bg = p.surface },
    c = { fg = p.fg_dim, bg = p.bg_alt },
  },
  replace = {
    a = { fg = p.bg, bg = p.red, gui = "bold" },
    b = { fg = p.fg, bg = p.surface },
    c = { fg = p.fg_dim, bg = p.bg_alt },
  },
  command = {
    a = { fg = p.bg, bg = p.orange, gui = "bold" },
    b = { fg = p.fg, bg = p.surface },
    c = { fg = p.fg_dim, bg = p.bg_alt },
  },
  inactive = {
    a = { fg = p.muted, bg = p.bg_alt },
    b = { fg = p.muted, bg = p.bg_alt },
    c = { fg = p.muted, bg = p.bg_alt },
  },
}

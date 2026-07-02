local M = {}

function M.load()
  local variant = (vim.o.background == "light") and "light" or "dark"
  local p = require("wana.palette")[variant]

  if vim.g.colors_name then
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") == 1 then
      vim.cmd("syntax reset")
    end
  end
  vim.o.termguicolors = true
  vim.g.colors_name = "wana"

  local groups = require("wana.highlights")(p)
  for group, spec in pairs(groups) do
    vim.api.nvim_set_hl(0, group, spec)
  end

  -- :terminal ANSI colors (0-15) from the palette.
  local term = {
    p.bg_dim, p.red, p.green, p.yellow, p.blue, p.magenta, p.cyan, p.fg,
    p.muted, p.br_red, p.br_green, p.br_yellow, p.br_blue, p.br_magenta, p.br_cyan, p.fg_bright,
  }
  for i, color in ipairs(term) do
    vim.g["terminal_color_" .. (i - 1)] = color
  end
end

-- Allow require("wana").setup() as an alias for symmetry with other plugins.
M.setup = M.load

return M

# wana.nvim

![Neovim 0.8+](https://img.shields.io/badge/Neovim-0.8%2B-57A143?logo=neovim&logoColor=white)
![variants](https://img.shields.io/badge/variants-dark%20%2B%20light-7abb87)
![license](https://img.shields.io/badge/license-MIT-80b7f0)

A warm, bookish Gruvbox-leaning Neovim colorscheme with dark + light variants.
The palette is generated from the canonical [Wana](https://github.com/atalariq/wana)
base24 schemes; highlights are hand-authored.

![wana.nvim — dark, Python with treesitter](preview.png)

## Palette

| variant   | bg                                                | red                                               | orange                                            | yellow                                            | green                                             | cyan                                              | blue                                              | magenta                                           | fg                                                |
| --------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- | ------------------------------------------------- |
| **dark**  | ![](https://placehold.co/40x22/282828/282828.png) | ![](https://placehold.co/40x22/fe8b89/fe8b89.png) | ![](https://placehold.co/40x22/eeb562/eeb562.png) | ![](https://placehold.co/40x22/fabd2f/fabd2f.png) | ![](https://placehold.co/40x22/7abb87/7abb87.png) | ![](https://placehold.co/40x22/8ec07c/8ec07c.png) | ![](https://placehold.co/40x22/80b7f0/80b7f0.png) | ![](https://placehold.co/40x22/d3869b/d3869b.png) | ![](https://placehold.co/40x22/ebdbb2/ebdbb2.png) |
| **light** | ![](https://placehold.co/40x22/fffcf0/fffcf0.png) | ![](https://placehold.co/40x22/bc4039/bc4039.png) | ![](https://placehold.co/40x22/a06300/a06300.png) | ![](https://placehold.co/40x22/956c00/956c00.png) | ![](https://placehold.co/40x22/2d6e3f/2d6e3f.png) | ![](https://placehold.co/40x22/218078/218078.png) | ![](https://placehold.co/40x22/1c6aae/1c6aae.png) | ![](https://placehold.co/40x22/a02f6f/a02f6f.png) | ![](https://placehold.co/40x22/100f0f/100f0f.png) |

## Install (lazy.nvim)

```lua
{ "atalariq/wana.nvim", priority = 1000, config = function()
  vim.o.background = "dark" -- or "light"
  vim.cmd.colorscheme("wana")
end }
```

## Variants

`set background=dark` / `set background=light` selects the variant, then
`:colorscheme wana`.

## lualine

```lua
require("lualine").setup({ options = { theme = "wana" } })
```

> `lua/wana/palette.lua` is generated — do not hand-edit. Edit highlights in
> `lua/wana/highlights.lua`. Source of truth: `schemes/` in atalariq/wana.

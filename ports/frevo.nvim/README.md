# Frevo.nvim

A vibrant dark Neovim colorscheme inspired by Pernambuco's carnival nights (Brazil). Designed for accessibility (WCAG 2.2 AA), reduced eye strain, and OLED-safe backgrounds. Uses the Frevo palette defined in `.dev_docs/frevo_theme.yaml`.

## Features
- Precise palette fidelity: colors match the provided YAML (no deviations)
- WCAG-conscious contrasts and OLED-friendly backgrounds
- Rich semantic syntax: keywords (blue/purple), strings (cyan), comments (green), types (yellow), operators (orange), errors (red)
- Extensive plugin coverage: LSP/Diagnostics, Treesitter, Telescope, nvim-cmp/LuaSnip, Lualine, Bufferline, Neo-tree, Gitsigns/Fugitive, DAP/DAP-UI, Toggleterm, Conform, nvim-lint, Leap, Comment, Which-key, Snacks (dashboard), render-markdown, CopilotChat
- ANSI terminal palette consistent with the theme

## Installation
Use your plugin manager of choice. Example with lazy.nvim:

```lua
{
  "renatobarros/frevo.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("frevo").setup()
  end,
}
```

## Usage
Load the colorscheme:

```vim
:colorscheme frevo
```

Or in Lua:

```lua
require("frevo").setup({
  plugins = true, -- set false to skip plugin highlights
})
vim.cmd.colorscheme("frevo")
```

## Options
- `plugins` (boolean, default: `true`): apply plugin highlight integrations. Set to `false` to load only core highlights.

## File layout
- `colors/frevo.lua`: shim for `:colorscheme frevo`
- `lua/frevo/init.lua`: entrypoint, applies core + plugins
- `lua/frevo/config.lua`: user options (e.g., enable/disable plugin highlights)
- `lua/frevo/palette.lua`: palette derived from `.dev_docs/frevo_theme.yaml`
- `lua/frevo/style.lua`: blend/lighten/darken helpers
- `lua/frevo/util.lua`: table merge + bulk highlight application
- `lua/frevo/groups/`: core groups (UI/base, syntax, LSP, Treesitter) and integrations
  - `base.lua`, `syntax.lua`, `lsp.lua`, `treesitter.lua`
  - `integrations/*.lua`: per-plugin highlight modules

## Plugin coverage
- LSP/Diagnostics, Treesitter, Telescope, nvim-cmp/LuaSnip, Lualine, Bufferline, Neo-tree, Gitsigns, Fugitive, DAP, DAP-UI, Toggleterm, Conform, nvim-lint, Leap, Comment, Which-key, Snacks, render-markdown, CopilotChat

## Notes
- Palette values are fixed; do not modify `palette.lua` manually.
- Selections and current line use palette alpha blended over the primary background to remain OLED-safe.

## Testing (optional)
- Add a minimal smoke test to ensure `require("frevo").setup()` does not error.

## License
MIT

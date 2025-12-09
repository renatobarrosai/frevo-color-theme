# Installation Guide

This guide provides installation instructions for all supported platforms and applications.

## Table of Contents

- [Editors](#editors)
  - [Neovim](#neovim)
  - [VS Code](#vs-code)
  - [Other Editors](#other-editors)
- [Terminals](#terminals)
  - [Kitty](#kitty)
  - [Alacritty](#alacritty)
  - [WezTerm](#wezterm)
  - [Windows Terminal](#windows-terminal)
- [Desktop Environment](#desktop-environment)
  - [Hyprland](#hyprland)
  - [Waybar](#waybar)
  - [GTK](#gtk)
- [Other Applications](#other-applications)

---

## Editors

### Neovim

**Status:** ✅ Official

#### Using lazy.nvim

```lua
{
  "renatobarros/frevo.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("frevo").setup({
      -- Optional configuration
      transparent = false,
      italic_comments = true,
    })
    vim.cmd.colorscheme("frevo")
  end,
}
```

#### Using packer.nvim

```lua
use {
  "renatobarros/frevo.nvim",
  config = function()
    require("frevo").setup()
    vim.cmd.colorscheme("frevo")
  end,
}
```

For detailed configuration options, see [ports/neovim/](../ports/neovim/).

---

### VS Code

**Status:** 📝 Planned

Coming soon. The VS Code extension will be available on the Visual Studio Marketplace.

<!-- 
#### Installation

1. Open VS Code
2. Go to Extensions (Ctrl+Shift+X)
3. Search for "Frevo Color Theme"
4. Click Install
5. Select the theme: Ctrl+K Ctrl+T → "Frevo"
-->

---

### Other Editors

Support for additional editors is planned:

| Editor | Status |
|--------|--------|
| Zed | 📝 Planned |
| Helix | 📝 Planned |
| Sublime Text | 📝 Planned |
| JetBrains IDEs | 📝 Planned |

Want to help? See [CONTRIBUTING.md](CONTRIBUTING.md).

---

## Terminals

### Kitty

**Status:** 📝 Planned

<!-- 
#### Installation

1. Download the theme file:
```bash
curl -o ~/.config/kitty/frevo.conf https://raw.githubusercontent.com/renatobarros/frevo-theme/main/ports/kitty/frevo.conf
```

2. Add to your `kitty.conf`:
```bash
include frevo.conf
```

3. Reload Kitty: `Ctrl+Shift+F5`
-->

Coming soon.

---

### Alacritty

**Status:** 📝 Planned

<!-- 
#### Installation

Add to your `~/.config/alacritty/alacritty.toml`:

```toml
[colors.primary]
background = "#1A1F2E"
foreground = "#F2F4F8"

[colors.normal]
black   = "#0D2449"
red     = "#FF5B5F"
green   = "#5FD94F"
yellow  = "#F0B000"
blue    = "#4B9AFF"
magenta = "#D966FF"
cyan    = "#00A3E5"
white   = "#F2F4F8"

[colors.bright]
black   = "#6B7589"
red     = "#FF8A8D"
green   = "#8EFF7D"
yellow  = "#FFE566"
blue    = "#7AB6FF"
magenta = "#EA9BFF"
cyan    = "#5DD4FF"
white   = "#FFFFFF"
```
-->

Coming soon.

---

### WezTerm

**Status:** 📝 Planned

Coming soon.

---

### Windows Terminal

**Status:** 📝 Planned

Coming soon.

---

## Desktop Environment

### Hyprland

**Status:** 📝 Planned

<!-- 
#### Installation

Add to your `~/.config/hypr/hyprland.conf`:

```bash
source = ~/.config/hypr/themes/frevo.conf
```
-->

Coming soon.

---

### Waybar

**Status:** 📝 Planned

Coming soon.

---

### GTK

**Status:** 📝 Planned

Coming soon.

---

## Other Applications

| Application | Category | Status |
|-------------|----------|--------|
| Rofi | Launcher | 📝 Planned |
| Dunst | Notifications | 📝 Planned |
| btop | System Monitor | 📝 Planned |
| lazygit | Git TUI | 📝 Planned |
| fzf | Fuzzy Finder | 📝 Planned |

---

## Manual Installation

If your application isn't listed above, you can manually apply the Frevo colors using the [Palette Reference](PALETTE.md).

The key colors you'll need:

| Purpose | Hex |
|---------|-----|
| Background | `#1A1F2E` |
| Foreground | `#F2F4F8` |
| Accent | `#4B9AFF` |
| Error | `#FF5B5F` |
| Warning | `#DAA445` |
| Success | `#5FD94F` |

For terminal applications, use the [ANSI colors](PALETTE.md#ansi-terminal-colors) section.

---

## Troubleshooting

### Colors look wrong

1. Ensure your terminal supports true color (24-bit)
2. Check that `TERM` is set correctly (e.g., `xterm-256color` or `kitty`)
3. For Neovim, ensure `termguicolors` is enabled:
   ```lua
   vim.opt.termguicolors = true
   ```

### Theme doesn't load

1. Check that the plugin/theme is correctly installed
2. Verify the colorscheme name is correct
3. Check for error messages in your editor's logs

### Need Help?

- Open an issue on [GitHub](https://github.com/renatobarros/frevo-theme/issues)
- Check existing issues for solutions

---

[← Back to Documentation](README.md) • [← Back to Main README](../README.md)

# Installation Guide

Step-by-step installation instructions for all supported applications.

## Table of Contents

- [Editors](#editors)
- [Terminals](#terminals)
- [Desktop Environment](#desktop-environment)
- [Shells & CLI](#shells--cli)
- [Browsers](#browsers)
- [Applications](#applications)
- [Creative Tools](#creative-tools)
- [Manual Installation](#manual-installation)
- [Troubleshooting](#troubleshooting)

---

## Editors

### Neovim

Using **lazy.nvim**:

```lua
{
  "renatobarros/frevo.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("frevo").setup()
    vim.cmd.colorscheme("frevo")
  end,
}
```

Using **packer.nvim**:

```lua
use {
  "renatobarros/frevo.nvim",
  config = function()
    require("frevo").setup()
    vim.cmd.colorscheme("frevo")
  end,
}
```

> See [ports/frevo.nvim](../ports/frevo.nvim/) for full documentation.

### VS Code

1. Copy `frevo-color-theme.json` to `~/.vscode/extensions/frevo/`
2. Add a `package.json` for extension packaging
3. Select "Frevo" from Command Palette (`Ctrl+K`, then `Ctrl+T`)

> See [ports/vscode](../ports/vscode/) for details.

### JetBrains IDEs

1. Copy `frevo.icls` to your IDE's `colors` directory:
   - **Linux**: `~/.config/JetBrains/<IDE>/colors/`
   - **macOS**: `~/Library/Application Support/JetBrains/<IDE>/colors/`
   - **Windows**: `%APPDATA%\JetBrains\<IDE>\colors\`
2. Restart the IDE
3. Go to Settings > Editor > Color Scheme > Select "Frevo"

> See [ports/jetbrains](../ports/jetbrains/) for details.

### Kate

1. Copy `frevo.json` to `~/.local/share/org.kde.syntax-highlighting/themes/`
2. Restart Kate
3. Go to Settings > Configure Kate > Fonts & Colors > Select "Frevo"

> See [ports/kate](../ports/kate/) for details.

---

## Terminals

### Kitty

```bash
# Copy theme file
cp ports/kitty/frevo.conf ~/.config/kitty/

# Add to kitty.conf
echo "include frevo.conf" >> ~/.config/kitty/kitty.conf

# Reload (Ctrl+Shift+F5)
```

> See [ports/kitty](../ports/kitty/) for details.

### Alacritty

```bash
# Copy theme file
cp ports/alacritty/frevo.toml ~/.config/alacritty/

# Add to alacritty.toml
```

```toml
import = ["~/.config/alacritty/frevo.toml"]
```

> See [ports/alacritty](../ports/alacritty/) for details.

### iTerm2

1. Open iTerm2 Preferences
2. Go to Profiles > Colors
3. Click "Color Presets..." > Import
4. Select `frevo.itermcolors`
5. Select "Frevo" from presets

> See [ports/iterm2](../ports/iterm2/) for details.

---

## Desktop Environment

### Hyprland

```bash
# Copy theme file
cp ports/hyprland/frevo.conf ~/.config/hypr/

# Add to hyprland.conf
source = ~/.config/hypr/frevo.conf
```

> See [ports/hyprland](../ports/hyprland/) for details.

### Waybar

```bash
# Copy CSS file
cp ports/waybar/frevo.css ~/.config/waybar/

# Import in your style.css
@import "frevo.css";
```

> See [ports/waybar](../ports/waybar/) for details.

### Rofi

```bash
# Copy theme file
cp ports/rofi/frevo.rasi ~/.config/rofi/

# Use with rofi
rofi -show drun -theme ~/.config/rofi/frevo.rasi
```

> See [ports/rofi](../ports/rofi/) for details.

### Wofi

```bash
# Copy CSS file
cp ports/wofi/frevo.css ~/.config/wofi/style.css
```

> See [ports/wofi](../ports/wofi/) for details.

### Dunst

```bash
# Copy config
cp ports/dunst/frevo.conf ~/.config/dunst/dunstrc

# Or merge colors into existing config
```

> See [ports/dunst](../ports/dunst/) for details.

### GTK

```bash
# Copy CSS file
cp ports/gtk/frevo.css ~/.config/gtk-3.0/gtk.css

# For GTK4
cp ports/gtk/frevo.css ~/.config/gtk-4.0/gtk.css
```

> See [ports/gtk](../ports/gtk/) for details.

### Qt (Kvantum)

1. Copy `frevo-kvantum.kvconfig` to `~/.config/Kvantum/Frevo/`
2. Open Kvantum Manager
3. Select "Frevo" theme

> See [ports/qt](../ports/qt/) for details.

---

## Shells & CLI

### Fish

```bash
# Copy theme
cp ports/fish/frevo.fish ~/.config/fish/conf.d/
```

> See [ports/fish](../ports/fish/) for details.

### Zsh

```bash
# Source in .zshrc
source /path/to/ports/zsh/frevo.zsh
```

> See [ports/zsh](../ports/zsh/) for details.

### Zsh Syntax Highlighting

```bash
# Source after zsh-syntax-highlighting
source /path/to/ports/zsh-syntax-highlighting/frevo.zsh
```

> See [ports/zsh-syntax-highlighting](../ports/zsh-syntax-highlighting/) for details.

### Starship

```bash
# Copy or merge into starship.toml
cp ports/starship/frevo.toml ~/.config/starship.toml
```

> See [ports/starship](../ports/starship/) for details.

### Tmux

```bash
# Add to .tmux.conf
source-file /path/to/ports/tmux/frevo.conf
```

> See [ports/tmux](../ports/tmux/) for details.

### Yazi

```bash
# Copy theme
cp ports/yazi/frevo.toml ~/.config/yazi/theme.toml
```

> See [ports/yazi](../ports/yazi/) for details.

---

## Browsers

### Firefox (userChrome)

1. Open `about:config` and set `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`
2. Find your profile folder: `about:profiles`
3. Create `chrome` folder if it doesn't exist
4. Copy `frevo.userChrome.css` as `userChrome.css`
5. Restart Firefox

> See [ports/firefox](../ports/firefox/) for details.

### Chrome

1. Enable Developer Mode in `chrome://extensions/`
2. Load the `ports/chrome/` folder as unpacked extension

> See [ports/chrome](../ports/chrome/) for details.

---

## Applications

### Slack

1. Open Slack Preferences
2. Go to Themes
3. Paste the color string from `ports/slack/frevo.txt`

> See [ports/slack](../ports/slack/) for details.

### Todoist

1. Open Todoist Settings
2. Go to Theme
3. Use the colors from `ports/todoist/frevo.txt`

> See [ports/todoist](../ports/todoist/) for details.

### qBittorrent

```bash
# Copy CSS
cp ports/qbittorrent/frevo.css ~/.config/qBittorrent/
```

> See [ports/qbittorrent](../ports/qbittorrent/) for details.

### OpenCode

```bash
# Copy theme
cp ports/opencode/frevo-theme.json ~/.config/opencode/themes/
```

> See [ports/opencode](../ports/opencode/) for details.

### Calibre

1. Open Calibre Preferences
2. Go to Look & Feel > User Interface
3. Load `frevo.css` as custom stylesheet

> See [ports/calibre](../ports/calibre/) for details.

### LibreOffice

1. Copy `frevo.soc` to LibreOffice palettes folder
2. Restart LibreOffice
3. Select Frevo palette in color picker

> See [ports/libreoffice](../ports/libreoffice/) for details.

### YouTube / YouTube Music (Stylus)

1. Install the Stylus browser extension
2. Create new style for `youtube.com` or `music.youtube.com`
3. Paste content from `frevo.user.css`

> See [ports/youtube](../ports/youtube/) and [ports/youtube-music](../ports/youtube-music/) for details.

---

## Creative Tools

### Figma

Import `frevo.json` as a color library in Figma.

> See [ports/figma](../ports/figma/) for details.

### GIMP

1. Copy `frevo.gpl` to `~/.config/GIMP/2.10/palettes/`
2. Restart GIMP
3. Open Windows > Dockable Dialogs > Palettes

> See [ports/gimp](../ports/gimp/) for details.

### FreeCAD

Import `frevo.json` in FreeCAD preferences.

> See [ports/freecad](../ports/freecad/) for details.

### KiCad

Import `frevo.json` in KiCad color settings.

> See [ports/kicad](../ports/kicad/) for details.

---

## Manual Installation

For applications not listed above, use these core colors:

| Purpose | Hex |
|---------|-----|
| Background | `#1A1F2E` |
| Foreground | `#F2F4F8` |
| Accent | `#4B9AFF` |
| Error | `#FF5B5F` |
| Warning | `#DAA445` |
| Success | `#5FD94F` |

For terminal applications, see [ANSI colors](PALETTE.md#ansi-terminal-colors).

---

## Troubleshooting

### Colors look wrong

1. Ensure your terminal supports true color (24-bit)
2. Check `TERM` environment variable (e.g., `xterm-256color` or `kitty`)
3. For Neovim, enable `termguicolors`:

```lua
vim.opt.termguicolors = true
```

### Theme doesn't load

1. Verify the file is in the correct location
2. Check file permissions
3. Restart the application
4. Check application logs for errors

### True color test

Run this in your terminal to verify true color support:

```bash
awk 'BEGIN{
    for (i=0; i<256; i++) {
        printf "\033[48;5;%dm ", i
    }
    printf "\033[0m\n"
}'
```

### Need Help?

- Check [existing issues](https://github.com/renatobarros/frevo-theme/issues)
- Open a new issue with details about your setup

---

[Back to Documentation](README.md) | [Back to Main README](../README.md)

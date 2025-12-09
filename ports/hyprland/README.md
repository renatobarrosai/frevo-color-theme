# Frevo Theme for Hyprland

A vibrant dark Hyprland palette derived directly from `theme/frevo-theme.yaml` with no color changes.

## Files
- `frevo.conf` — Hyprland color variables and decoration defaults

## Installation
1. Copy or symlink `frevo.conf` to your Hyprland config directory, e.g.:
   - `~/.config/hypr/frevo.conf`
2. At the top of your `hyprland.conf`, source the theme file:
   - `source=~/.config/hypr/frevo.conf`

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
- Tweak `decoration` values (rounding, shadows, blur) to your preference; colors remain unchanged.

# Frevo Theme for Waybar

A vibrant dark Waybar theme using the Frevo palette. Colors are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.css` — Waybar stylesheet using Frevo colors

## Installation
1. Copy or symlink `frevo.css` to your Waybar config directory, e.g.:
   - `~/.config/waybar/frevo.css`
2. Reference the stylesheet in your Waybar config (`~/.config/waybar/config`):
   ```json
   {
     "style": "/home/user/.config/waybar/frevo.css"
   }
   ```

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
- Adjust padding, fonts, and module layout as desired; colors remain unchanged.

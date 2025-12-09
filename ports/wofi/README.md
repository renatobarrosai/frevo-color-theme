# Frevo Theme for Wofi

A vibrant dark Wofi theme using the Frevo palette. Colors are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.css` — Wofi stylesheet

## Installation
1. Copy or symlink `frevo.css` to your Wofi config directory, e.g.:
   - `~/.config/wofi/style.css` (or `frevo.css` and reference it)
2. Launch Wofi with the theme:
   - `wofi --style ~/.config/wofi/frevo.css --show drun`

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
- Adjust font size and padding to your preference; colors remain unchanged.

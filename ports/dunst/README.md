# Frevo Theme for Dunst

A vibrant dark Dunst theme using the Frevo palette. Colors are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.conf` — Dunst color and frame settings

## Installation
1. Copy or symlink `frevo.conf` to your Dunst config directory, e.g.:
   - `~/.config/dunst/frevo.conf`
2. In your main `dunstrc`, include the theme file near the top:
   - `include "~/.config/dunst/frevo.conf"`

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
- Tweak font and timeouts as preferred; colors remain unchanged.

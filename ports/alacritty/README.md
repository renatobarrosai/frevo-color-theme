# Frevo Theme for Alacritty

A vibrant dark Alacritty theme using the Frevo palette. Colors are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.toml` — Alacritty color theme

## Installation
1. Copy or symlink `frevo.toml` to your Alacritty config directory, e.g.:
   - `~/.config/alacritty/frevo.toml`
2. In `alacritty.toml`, import the theme:
   ```toml
   import = ["~/.config/alacritty/frevo.toml"]
   ```

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.

# Frevo Theme for Yazi

A vibrant dark Yazi theme using the Frevo palette. Colors are sourced directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.toml` — Yazi color theme

## Installation
1. Copy or symlink `frevo.toml` to your Yazi theme directory, e.g.:
   - `~/.config/yazi/themes/frevo.toml`
2. Set the theme in your Yazi config (usually `~/.config/yazi/yazi.toml`):
   ```toml
   [ui]
   theme = "frevo"
   ```

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.

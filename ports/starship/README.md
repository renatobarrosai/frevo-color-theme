# Frevo Palette for Starship

Starship prompt colors using the Frevo palette. Colors are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.toml` — Starship palette definitions

## Installation
1. Copy or symlink `frevo.toml` to your Starship config directory, e.g.:
   - `~/.config/starship/frevo.toml`
2. In your `starship.toml`, import the palette:
   ```toml
   palette = "frevo"
   import = ["~/.config/starship/frevo.toml"]
   ```

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
- This file defines palette colors; configure modules separately to use them.

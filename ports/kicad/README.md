# Frevo Palette for KiCad

A KiCad color palette using the Frevo colors. Values are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.json` — KiCad color theme (pcbnew 3D/editor color set)

## Installation
1. Copy `frevo.json` to your KiCad color themes directory, e.g.:
   - Linux: `~/.config/kicad/7.0/colors/` (adjust for your KiCad version)
   - macOS: `~/Library/Preferences/kicad/7.0/colors/`
   - Windows: `%APPDATA%\kicad\7.0\colors\`
2. In KiCad → `Preferences → Colors`, choose the "Frevo" theme.

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
- Mappings follow KiCad color set fields; adjust layer colors as desired while keeping palette hues.

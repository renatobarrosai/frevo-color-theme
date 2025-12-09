# Frevo Palette for LibreOffice

A LibreOffice color palette using the Frevo colors. Values are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.soc` — LibreOffice palette file

## Installation
1. Copy `frevo.soc` to your LibreOffice user colors directory, e.g.:
   - Linux: `~/.config/libreoffice/4/user/config/`
   - macOS: `~/Library/Application Support/LibreOffice/4/user/config/`
   - Windows: `%APPDATA%\LibreOffice\4\user\config\`
2. Restart LibreOffice and select the "Frevo" palette in the color picker.

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
- This provides a palette for documents; UI theming depends on your desktop theme (GTK/Qt).

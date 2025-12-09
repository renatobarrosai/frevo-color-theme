# Frevo Theme for GTK (colors only)

Base GTK color variables using the Frevo palette. Colors are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.css` — Color variable definitions for GTK themes

## Usage
- Import `frevo.css` from your GTK theme or `~/.config/gtk-3.0/gtk.css` / `gtk-4.0/gtk.css` and map widgets as needed.
- Provided examples are commented inside `frevo.css`; uncomment or adapt to your theme.

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
- This is a color variables file, not a full theme; integrate into your existing GTK theme structure.

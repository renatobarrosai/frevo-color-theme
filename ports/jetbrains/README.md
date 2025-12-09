# Frevo Theme for JetBrains IDEs

A JetBrains color scheme using the Frevo palette. Colors are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.icls` — JetBrains color scheme (inherits from Darcula)

## Installation
1. Copy `frevo.icls` to your JetBrains IDE colors directory, e.g.:
   - `~/.config/JetBrains/<IDE>/colors/` on Linux
   - `~/Library/Preferences/<IDE>/colors/` on macOS
   - `%APPDATA%\JetBrains\<IDE>\colors\` on Windows
2. In the IDE, go to **Settings/Preferences → Editor → Color Scheme** and select "Frevo".

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
- Scheme inherits from Darcula; UI theme still depends on your chosen IDE UI theme.

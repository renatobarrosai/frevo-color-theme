# Frevo Theme for YouTube (userstyle snippet)

A small userstyle snippet applying the Frevo palette to YouTube’s UI. Colors are taken directly from `theme/frevo-theme.yaml` with no modifications.

## Files
- `frevo.user.css` — Userstyle for Stylus/Stylebot

## Installation (Stylus/Stylebot)
1. Install the Stylus (or Stylebot) browser extension.
2. Create a new style and paste the contents of `frevo.user.css`.
3. Apply it to `https://www.youtube.com/*`.

## Notes
- Variant: dark
- Accent: blue
- Background avoids pure black to reduce OLED haloing.
- This is a minimal recolor; YouTube frequently updates its DOM, so selectors may need maintenance.

# The Frevo Palette

How we built a color theme that's vibrant, accessible, and easy on the eyes.

## Table of Contents

- [The Challenge](#the-challenge)
- [Why Seven Colors?](#why-seven-colors)
- [Choosing a Color Space](#choosing-a-color-space)
- [The Syntax Palette](#the-syntax-palette)
- [Building the Backgrounds](#building-the-backgrounds)
- [Text Hierarchy](#text-hierarchy)
- [Terminal Colors](#terminal-colors)
- [Accessibility](#accessibility)
- [Complete Reference](#complete-reference)

---

## The Challenge

Creating a color theme sounds simple until you try it. You need colors that:

- Look good together (obviously)
- Work for 8+ hours of coding without causing eye strain
- Remain distinguishable for people with color vision deficiency
- Meet accessibility standards (WCAG 2.2)
- Don't turn into a muddy mess on different monitors

And here's the tricky part: **vibrant** and **comfortable** usually don't go together. Saturated colors pop, but they also tire your eyes. Muted colors are gentle, but they look dull.

Frevo tries to solve this by being selective. Instead of desaturating everything, we use a small number of carefully chosen vibrant colors against a restrained background.

---

## Why Seven Colors?

There's a concept in cognitive psychology called Miller's Law: humans can hold about 7 (plus or minus 2) items in working memory at once. This applies to syntax highlighting too.

If your theme uses 15 different colors for code, your brain has to constantly re-learn what each color means. With 7 colors, patterns emerge naturally:

| Color      | Role                | You Learn                            |
| ---------- | ------------------- | ------------------------------------ |
| **Blue**   | Keywords            | "Blue means the language is talking" |
| **Purple** | Control flow        | "Purple changes where code goes"     |
| **Cyan**   | Strings & functions | "Cyan is data and actions"           |
| **Green**  | Comments            | "Green is for humans, not computers" |
| **Yellow** | Types & classes     | "Yellow defines shapes of things"    |
| **Orange** | Operators & numbers | "Orange does math and connects"      |
| **Red**    | Errors              | "Red means stop and look"            |

After a few hours with the theme, you stop consciously seeing colors and start seeing _meaning_.

---

## Choosing a Color Space

Here's something most theme creators get wrong: they pick colors in RGB or HSL, which don't match how humans perceive color.

Two colors with the same "lightness" in HSL can look completely different to your eyes. A yellow at 50% lightness looks bright; a blue at 50% looks dark. This makes it nearly impossible to create consistent contrast ratios.

Frevo uses **OKLCH**, a perceptually uniform color space:

- **L** (Lightness): 0 = black, 1 = white — and it actually _looks_ linear
- **C** (Chroma): How colorful, from gray to vivid
- **H** (Hue): The color wheel, 0-360 degrees

When we say "all syntax colors have L ≈ 0.70", that means they all have similar _perceived_ brightness. Your eyes don't have to constantly adjust when scanning code.

```
Traditional HSL:
  Yellow L=50% → Looks bright
  Blue L=50%   → Looks dark

OKLCH:
  Yellow L=0.75 → Looks like 75% brightness
  Blue L=0.70   → Looks like 70% brightness (similar!)
```

---

## The Syntax Palette

Each syntax color was chosen through a process:

1. **Start with the reference** — the "pure" carnival color we wanted to capture
2. **Adjust lightness** — bring it to L ≈ 0.65-0.75 for readability
3. **Tune chroma** — enough saturation to be vibrant, not enough to cause eye strain
4. **Verify contrast** — must hit at least 5.6:1 against the background (WCAG AA)
5. **Test colorblind simulation** — ensure it remains distinguishable

### The Colors

| Color      | Hex       | OKLCH                 | Contrast | Reference                             |
| ---------- | --------- | --------------------- | -------- | ------------------------------------- |
| **Blue**   | `#4B9AFF` | L=0.70, C=0.22, H=260 | 5.6:1    | The deep blue of twilight over Recife |
| **Purple** | `#D966FF` | L=0.65, C=0.26, H=302 | 6.3:1    | The magenta of carnival costumes      |
| **Cyan**   | `#00A3E5` | L=0.70, C=0.16, H=236 | 5.6:1    | The cyan glow of street decorations   |
| **Green**  | `#7AD96A` | L=0.75, C=0.14, H=142 | 8.0:1    | Palm fronds under party lights        |
| **Yellow** | `#F0B000` | L=0.75, C=0.18, H=91  | 10.3:1   | The gold of frevo umbrellas           |
| **Orange** | `#FF6700` | L=0.70, C=0.20, H=44  | 11.0:1   | The warmth of street food flames      |
| **Red**    | `#FF5B5F` | L=0.65, C=0.22, H=27  | 10.1:1   | The red of warning flags              |

The "Reference" column shows the original inspiration color. The actual hex values are adjusted for readability while preserving the character of each color.

---

## Building the Backgrounds

### Why Not Pure Black?

You might think `#000000` is the perfect dark background. It's not.

On OLED screens, pure black pixels are literally _off_. When bright text sits next to them, you get "haloing" — a smearing effect as your eyes move. It's subtle but fatiguing over time.

Frevo uses `#1A1F2E` as the primary background. It's dark enough to feel like a proper dark theme, but the slight blue tint:

- Prevents OLED haloing
- Creates a cohesive feel with the blue accent
- Reduces the harshness of white text

### The Layer System

UI elements need depth. We achieve this with four background levels:

| Level         | Hex       | Lightness | Use                   |
| ------------- | --------- | --------- | --------------------- |
| **Primary**   | `#1A1F2E` | L=0.15    | Editor canvas         |
| **Secondary** | `#21283A` | L=0.18    | Sidebars, panels      |
| **Tertiary**  | `#2A3447` | L=0.22    | Hover states, buttons |
| **Elevated**  | `#2F3D5C` | L=0.24    | Modals, dropdowns     |

Each step up is just +0.03-0.04 in lightness. Subtle enough to not compete with your code, clear enough to show hierarchy.

---

## Text Hierarchy

Not all text is equally important. Frevo uses three levels:

| Level         | Hex       | Contrast | Purpose                        |
| ------------- | --------- | -------- | ------------------------------ |
| **Primary**   | `#F2F4F8` | 16.9:1   | Code, main content             |
| **Secondary** | `#B0B8CC` | 8.6:1    | Less important text, UI labels |
| **Tertiary**  | `#6B7589` | 3.9:1    | Placeholders, disabled states  |

The primary text has a slight cool tint rather than pure white. This reduces glare and matches the blue-tinted backgrounds.

Note: Tertiary text at 3.9:1 is below WCAG AA for body text, but it's only used for decorative elements (line numbers, indent guides) where high contrast isn't required.

---

## Terminal Colors

Terminals use a standardized 16-color ANSI palette. Frevo's terminal colors match the syntax palette where possible, with bright variants for bold/highlighted text.

### Normal (0-7)

| Index | Name    | Hex       | Notes                                     |
| ----- | ------- | --------- | ----------------------------------------- |
| 0     | Black   | `#0D2449` | Darker than bg for contrast               |
| 1     | Red     | `#FF5B5F` | Matches syntax red                        |
| 2     | Green   | `#5FD94F` | Brighter than syntax green for visibility |
| 3     | Yellow  | `#F0B000` | Matches syntax yellow                     |
| 4     | Blue    | `#4B9AFF` | Matches syntax blue                       |
| 5     | Magenta | `#D966FF` | Matches syntax purple                     |
| 6     | Cyan    | `#00A3E5` | Matches syntax cyan                       |
| 7     | White   | `#F2F4F8` | Matches primary foreground                |

### Bright (8-15)

| Index | Name           | Hex       |
| ----- | -------------- | --------- |
| 8     | Bright Black   | `#6B7589` |
| 9     | Bright Red     | `#FF8A8D` |
| 10    | Bright Green   | `#8EFF7D` |
| 11    | Bright Yellow  | `#FFE566` |
| 12    | Bright Blue    | `#7AB6FF` |
| 13    | Bright Magenta | `#EA9BFF` |
| 14    | Bright Cyan    | `#5DD4FF` |
| 15    | Bright White   | `#FFFFFF` |

---

## Accessibility

### WCAG Compliance

All syntax colors meet WCAG 2.2 AA standards (minimum 4.5:1 contrast for normal text). Most exceed it significantly:

| Requirement            | Frevo                           |
| ---------------------- | ------------------------------- |
| AA Normal Text (4.5:1) | All syntax colors pass          |
| AA Large Text (3:1)    | All colors pass                 |
| AAA Normal Text (7:1)  | Green, Yellow, Orange, Red pass |

### Colorblind Considerations

We tested the palette against the three main types of color vision deficiency:

**Deuteranopia** (~6% of males): Red-green confusion

- Solution: Red and green have different luminance levels (red is darker)
- Blue/orange pairing used for critical distinctions

**Protanopia** (~2% of males): Red weakness

- Solution: Red errors are also indicated by position/icons, not just color

**Tritanopia** (~0.001%): Blue-yellow confusion

- Solution: Blue and yellow are rarely used as the _only_ distinction

The key principle: **never rely on hue alone**. Every color pair also differs in luminance.

---

## Complete Reference

### Syntax Colors

| Preview                                                 | Name   | Hex       | OKLCH           | Usage                                |
| ------------------------------------------------------- | ------ | --------- | --------------- | ------------------------------------ |
| ![Blue](https://via.placeholder.com/16/4B9AFF/4B9AFF)   | Blue   | `#4B9AFF` | 0.70, 0.22, 260 | `function`, `const`, `let`, `import` |
| ![Purple](https://via.placeholder.com/16/D966FF/D966FF) | Purple | `#D966FF` | 0.65, 0.26, 302 | `if`, `for`, `while`, `class`        |
| ![Cyan](https://via.placeholder.com/16/00A3E5/00A3E5)   | Cyan   | `#00A3E5` | 0.70, 0.16, 236 | Strings, function names              |
| ![Green](https://via.placeholder.com/16/7AD96A/7AD96A)  | Green  | `#7AD96A` | 0.75, 0.14, 142 | Comments, docstrings                 |
| ![Yellow](https://via.placeholder.com/16/F0B000/F0B000) | Yellow | `#F0B000` | 0.75, 0.18, 91  | Types, classes                       |
| ![Orange](https://via.placeholder.com/16/FF6700/FF6700) | Orange | `#FF6700` | 0.70, 0.20, 44  | Operators, numbers                   |
| ![Red](https://via.placeholder.com/16/FF5B5F/FF5B5F)    | Red    | `#FF5B5F` | 0.65, 0.22, 27  | Errors, warnings                     |

### UI Colors

| Preview                                                    | Name      | Hex       | Usage                      |
| ---------------------------------------------------------- | --------- | --------- | -------------------------- |
| ![Accent](https://via.placeholder.com/16/4B9AFF/4B9AFF)    | Accent    | `#4B9AFF` | Links, focus, buttons      |
| ![Success](https://via.placeholder.com/16/5FD94F/5FD94F)   | Success   | `#5FD94F` | Success states             |
| ![Warning](https://via.placeholder.com/16/DAA445/DAA445)   | Warning   | `#DAA445` | Warning states             |
| ![Error](https://via.placeholder.com/16/FF5B5F/FF5B5F)     | Error     | `#FF5B5F` | Error states               |
| ![Info](https://via.placeholder.com/16/00B7FF/00B7FF)      | Info      | `#00B7FF` | Info states                |
| ![Selection](https://via.placeholder.com/16/2B4A7A/2B4A7A) | Selection | `#2B4A7A` | Text selection (40% alpha) |
| ![Find](https://via.placeholder.com/16/C7A340/C7A340)      | Find      | `#C7A340` | Search matches (50% alpha) |

### Background & Foreground

| Preview                                                       | Name         | Hex       | Usage                  |
| ------------------------------------------------------------- | ------------ | --------- | ---------------------- |
| ![bg_primary](https://via.placeholder.com/16/1A1F2E/1A1F2E)   | bg_primary   | `#1A1F2E` | Editor background      |
| ![bg_secondary](https://via.placeholder.com/16/21283A/21283A) | bg_secondary | `#21283A` | Sidebars, panels       |
| ![bg_tertiary](https://via.placeholder.com/16/2A3447/2A3447)  | bg_tertiary  | `#2A3447` | Hover, buttons         |
| ![bg_elevated](https://via.placeholder.com/16/2F3D5C/2F3D5C)  | bg_elevated  | `#2F3D5C` | Modals, tooltips       |
| ![fg_primary](https://via.placeholder.com/16/F2F4F8/F2F4F8)   | fg_primary   | `#F2F4F8` | Main text              |
| ![fg_secondary](https://via.placeholder.com/16/B0B8CC/B0B8CC) | fg_secondary | `#B0B8CC` | Secondary text         |
| ![fg_tertiary](https://via.placeholder.com/16/6B7589/6B7589)  | fg_tertiary  | `#6B7589` | Disabled, placeholders |

---

## Source Files

- **Canonical definition**: [`theme/frevo-theme.yaml`](../theme/frevo-theme.yaml)
- **Neovim palette**: [`frevo.nvim/lua/frevo/palette.lua`](../../frevo.nvim/lua/frevo/palette.lua)

---

[Back to Documentation](README.md) | [Back to Main README](../README.md)

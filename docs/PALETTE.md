# Color Palette Reference

This document contains the complete color specification for the Frevo Color Theme.

## Table of Contents

- [Syntax Colors](#syntax-colors)
- [Base Colors](#base-colors)
- [UI Colors](#ui-colors)
- [ANSI Terminal Colors](#ansi-terminal-colors)
- [Accessibility Information](#accessibility-information)

---

## Syntax Colors

The core syntax highlighting palette consists of 7 carefully chosen colors, following cognitive load principles (Miller's Law: 7±2 items).

| Preview | Name | Hex | Usage | Contrast |
|---------|------|-----|-------|----------|
| ![Blue](https://via.placeholder.com/20/4B9AFF/4B9AFF) | **Blue** | `#4B9AFF` | Keywords: `function`, `const`, `let`, `var`, `import` | 5.6:1 |
| ![Purple](https://via.placeholder.com/20/D966FF/D966FF) | **Purple** | `#D966FF` | Control flow: `if`, `for`, `while`, `class`, `interface` | 6.3:1 |
| ![Cyan](https://via.placeholder.com/20/00A3E5/00A3E5) | **Cyan** | `#00A3E5` | Strings, template literals, function names | 5.6:1 |
| ![Green](https://via.placeholder.com/20/7AD96A/7AD96A) | **Green** | `#7AD96A` | Comments, docstrings | 8.0:1 |
| ![Yellow](https://via.placeholder.com/20/F0B000/F0B000) | **Yellow** | `#F0B000` | Class names, type definitions | 10.3:1 |
| ![Orange](https://via.placeholder.com/20/FF6700/FF6700) | **Orange** | `#FF6700` | Operators, numbers, punctuation | 11.0:1 |
| ![Red](https://via.placeholder.com/20/FF5B5F/FF5B5F) | **Red** | `#FF5B5F` | Errors, warnings, deletions | 10.1:1 |

---

## Base Colors

### Backgrounds

Layered depth system for creating visual hierarchy. No pure black (`#000000`) to prevent OLED haloing.

| Preview | Name | Hex | Usage |
|---------|------|-----|-------|
| ![Primary](https://via.placeholder.com/20/1A1F2E/1A1F2E) | **Primary** | `#1A1F2E` | Main editor background |
| ![Secondary](https://via.placeholder.com/20/21283A/21283A) | **Secondary** | `#21283A` | Sidebar, panels, cards |
| ![Tertiary](https://via.placeholder.com/20/2A3447/2A3447) | **Tertiary** | `#2A3447` | Hover states, buttons |
| ![Elevated](https://via.placeholder.com/20/2F3D5C/2F3D5C) | **Elevated** | `#2F3D5C` | Modals, tooltips, dropdowns |

### Foregrounds

Text hierarchy for clear content organization.

| Preview | Name | Hex | Usage | Contrast |
|---------|------|-----|-------|----------|
| ![Primary](https://via.placeholder.com/20/F2F4F8/F2F4F8) | **Primary** | `#F2F4F8` | Main text content | 16.9:1 |
| ![Secondary](https://via.placeholder.com/20/B0B8CC/B0B8CC) | **Secondary** | `#B0B8CC` | Secondary text, comments | 8.6:1 |
| ![Tertiary](https://via.placeholder.com/20/6B7589/6B7589) | **Tertiary** | `#6B7589` | Placeholders, disabled | 3.9:1 |

---

## UI Colors

### Accent Colors

| Preview | Name | Hex | Usage |
|---------|------|-----|-------|
| ![Accent](https://via.placeholder.com/20/4B9AFF/4B9AFF) | **Accent** | `#4B9AFF` | Links, focus rings, primary buttons |
| ![Accent Hover](https://via.placeholder.com/20/7AB6FF/7AB6FF) | **Accent Hover** | `#7AB6FF` | Hover state for accent elements |
| ![Accent Active](https://via.placeholder.com/20/2470D5/2470D5) | **Accent Active** | `#2470D5` | Active/pressed state |

### Semantic States

| Preview | Name | Hex | Usage | Contrast |
|---------|------|-----|-------|----------|
| ![Success](https://via.placeholder.com/20/5FD94F/5FD94F) | **Success** | `#5FD94F` | Success messages, positive actions | 7.6:1 |
| ![Warning](https://via.placeholder.com/20/DAA445/DAA445) | **Warning** | `#DAA445` | Warning messages, caution states | 11.9:1 |
| ![Error](https://via.placeholder.com/20/FF5B5F/FF5B5F) | **Error** | `#FF5B5F` | Error messages, destructive actions | 10.1:1 |
| ![Info](https://via.placeholder.com/20/00B7FF/00B7FF) | **Info** | `#00B7FF` | Informational messages | 6.4:1 |

### Selection & Highlights

| Preview | Name | Hex | Alpha | Usage |
|---------|------|-----|-------|-------|
| ![Selection](https://via.placeholder.com/20/2B4A7A/2B4A7A) | **Selection** | `#2B4A7A` | 40% | Text selection highlight |
| ![Find](https://via.placeholder.com/20/C7A340/C7A340) | **Find Highlight** | `#C7A340` | 50% | Search result highlighting |
| ![Current Line](https://via.placeholder.com/20/0F2851/0F2851) | **Current Line** | `#0F2851` | 50% | Active line background |

### Borders

| Preview | Name | Hex | Usage |
|---------|------|-----|-------|
| ![Subtle](https://via.placeholder.com/20/1F3D68/1F3D68) | **Border Subtle** | `#1F3D68` | Subtle dividers, panel borders |
| ![Strong](https://via.placeholder.com/20/3D5A8F/3D5A8F) | **Border Strong** | `#3D5A8F` | Prominent borders, focus outlines |

### Git Decorations

| Preview | Name | Hex | Usage |
|---------|------|-----|-------|
| ![Added](https://via.placeholder.com/20/5FD94F/5FD94F) | **Git Added** | `#5FD94F` | Added lines in diff |
| ![Modified](https://via.placeholder.com/20/4B9AFF/4B9AFF) | **Git Modified** | `#4B9AFF` | Modified lines in diff |
| ![Deleted](https://via.placeholder.com/20/FF5B5F/FF5B5F) | **Git Deleted** | `#FF5B5F` | Deleted lines in diff |
| ![Conflict](https://via.placeholder.com/20/D966FF/D966FF) | **Git Conflict** | `#D966FF` | Merge conflict markers |

---

## ANSI Terminal Colors

Standard 16-color ANSI palette for terminal emulators.

### Normal Colors (0-7)

| Index | Preview | Name | Hex |
|-------|---------|------|-----|
| 0 | ![Black](https://via.placeholder.com/20/0D2449/0D2449) | Black | `#0D2449` |
| 1 | ![Red](https://via.placeholder.com/20/FF5B5F/FF5B5F) | Red | `#FF5B5F` |
| 2 | ![Green](https://via.placeholder.com/20/5FD94F/5FD94F) | Green | `#5FD94F` |
| 3 | ![Yellow](https://via.placeholder.com/20/F0B000/F0B000) | Yellow | `#F0B000` |
| 4 | ![Blue](https://via.placeholder.com/20/4B9AFF/4B9AFF) | Blue | `#4B9AFF` |
| 5 | ![Magenta](https://via.placeholder.com/20/D966FF/D966FF) | Magenta | `#D966FF` |
| 6 | ![Cyan](https://via.placeholder.com/20/00A3E5/00A3E5) | Cyan | `#00A3E5` |
| 7 | ![White](https://via.placeholder.com/20/F2F4F8/F2F4F8) | White | `#F2F4F8` |

### Bright Colors (8-15)

| Index | Preview | Name | Hex |
|-------|---------|------|-----|
| 8 | ![Bright Black](https://via.placeholder.com/20/6B7589/6B7589) | Bright Black | `#6B7589` |
| 9 | ![Bright Red](https://via.placeholder.com/20/FF8A8D/FF8A8D) | Bright Red | `#FF8A8D` |
| 10 | ![Bright Green](https://via.placeholder.com/20/8EFF7D/8EFF7D) | Bright Green | `#8EFF7D` |
| 11 | ![Bright Yellow](https://via.placeholder.com/20/FFE566/FFE566) | Bright Yellow | `#FFE566` |
| 12 | ![Bright Blue](https://via.placeholder.com/20/7AB6FF/7AB6FF) | Bright Blue | `#7AB6FF` |
| 13 | ![Bright Magenta](https://via.placeholder.com/20/EA9BFF/EA9BFF) | Bright Magenta | `#EA9BFF` |
| 14 | ![Bright Cyan](https://via.placeholder.com/20/5DD4FF/5DD4FF) | Bright Cyan | `#5DD4FF` |
| 15 | ![Bright White](https://via.placeholder.com/20/FFFFFF/FFFFFF) | Bright White | `#FFFFFF` |

---

## Accessibility Information

### WCAG Compliance

- **Standard:** WCAG 2.2
- **Conformance Level:** AA (all syntax colors)
- **Primary Text Contrast:** 16.9:1 (AAA)
- **Minimum Syntax Contrast:** 5.6:1 (AA)

### Colorblind Safety

The palette has been tested for:

- **Deuteranopia** (green deficiency, ~6% of males)
- **Protanopia** (red deficiency, ~2% of males)
- **Tritanopia** (blue deficiency, ~0.001%)

Key strategies used:
- Red/Green pairs have sufficient luminance difference (ΔL=0.10)
- Blue/Orange pair used for critical distinctions
- No reliance on hue alone for semantic meaning

### Display Compatibility

- **OLED Safe:** No pure black (`#000000`) prevents black smearing
- **Haloing Prevention:** Background luminance at 0.15 reduces eye strain
- **Blue Light Reduced:** Syntax blue limited to L≤0.70

---

## Color Space Reference

All colors are defined using OKLCH color space for perceptual uniformity:

- **L** (Lightness): 0.0 (black) to 1.0 (white)
- **C** (Chroma): 0.0 (gray) to ~0.4 (maximum saturation)
- **H** (Hue): 0 to 360 degrees

For the complete OKLCH definitions, see the source file: [frevo_theme-original.yaml](../.dev_docs/frevo_theme-original.yaml)

---

[← Back to Documentation](README.md) • [← Back to Main README](../README.md)
